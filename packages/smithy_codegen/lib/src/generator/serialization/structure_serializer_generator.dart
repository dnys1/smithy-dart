import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';
import 'package:smithy_codegen/src/util/trait_ext.dart';

/// Generates a serializer class for [shape] and [protocol].
class StructureSerializerGenerator extends SerializerGenerator<StructureShape>
    with NamedMembersGenerationContext, StructureGenerationContext {
  StructureSerializerGenerator(
    StructureShape shape,
    CodegenContext context,
    ProtocolDefinitionTrait protocol, {
    SerializerConfig? config,
  }) : super(shape, context, protocol, config: config);

  @override
  Reference get serializedSymbol =>
      config.usePayload ? payloadSymbol ?? symbol : symbol;

  /// The members which get serialized.
  ///
  /// In general, this is members of the payload ([payloadMembers]).
  /// However, for test cases, we want to deserialize *all* members.
  List<MemberShape> get serializedMembers =>
      config.usePayload ? payloadMembers : sortedMembers;

  /// Metadata about [shape] in the context of [protocol], including renames and
  /// other protocol-specific traits.
  late final ProtocolTraits protocolTraits = () {
    if (protocol.isJsonProtocol) {
      final builder = protocol is RestJson1Trait
          ? RestJson1ProtocolTraitsBuilder()
          : JsonProtocolTraitsBuilder();
      for (var member in payloadMembers) {
        final jsonName = member.getTrait<JsonNameTrait>()?.value;
        if (jsonName != null) {
          builder.memberWireNames[member] = jsonName;
        }
      }
      return builder.build();
    } else if (protocol.isXmlProtocol) {
      final builder = XmlProtocolTraitsBuilder();
      final wireName = shape.getTrait<XmlNameTrait>()?.value;
      if (wireName != null) {
        builder.wireName = wireName;
      }
      final xmlNamespace = shape.getTrait<XmlNamespaceTrait>();
      if (xmlNamespace != null) {
        builder.namespace = xmlNamespace;
      }
      for (var member in payloadMembers) {
        final xmlName = member.getTrait<XmlNameTrait>()?.value;
        if (xmlName != null) {
          builder.memberWireNames[member] = xmlName;
        }
        final isXmlAttribute = member.hasTrait<XmlAttributeTrait>();
        if (isXmlAttribute) {
          builder.attributeMembers.add(member);
        }
        final isXmlFlattened = member.hasTrait<XmlFlattenedTrait>();
        if (isXmlFlattened) {
          builder.flattenedMembers.add(member);
        }
        final xmlNamespace = member.getTrait<XmlNamespaceTrait>();
        if (xmlNamespace != null) {
          builder.memberNamespaces[member] = xmlNamespace;
        }
      }
      return builder.build();
    }
    return JsonProtocolTraits();
  }();

  /// The names of members on the wire with optional renames, e.g. using
  /// [JsonNameTrait] or [XmlNameTrait].
  Map<MemberShape, String> get wireNames =>
      protocolTraits.memberWireNames.toMap();

  /// The name of [member] on the wire.
  String _wireName(MemberShape member) => config.renameMembers
      ? wireNames[member] ?? member.memberName
      : member.memberName;

  @override
  Class? generate() {
    // Will use a pre-defined serializer when targeting another shape for the
    // payload.
    final useExistingSerializer = payloadShape != null;
    if (useExistingSerializer || shape.shapeId == Shape.unit) {
      return null;
    }

    // Tracks the generated type.
    context.generatedTypes.add(symbol);

    return Class(
      (c) => c
        ..name = serializerClassName
        ..extend = DartTypes.smithy.structuredSmithySerializer(serializedSymbol)
        ..constructors.add(constructor)
        ..methods.addAll([
          _typesGetter,
          supportedProtocols,
          deserialize,
          serialize,
        ]),
    );
  }

  /// The `types` getter.
  Method get _typesGetter => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.iterable(DartTypes.core.type)
          ..type = MethodType.getter
          ..name = 'types'
          ..lambda = true
          ..body = literalConstList([
            symbol,
            if (config.usePrivateSymbols) builtSymbol,
            if (!config.usePayload) ...[
              if (payloadSymbol != null) payloadSymbol,
              if (config.usePrivateSymbols && builtPayloadSymbol != null)
                builtPayloadSymbol,
            ],
          ]).code,
      );

  @override
  Code get deserializeCode {
    final builderSymbol = config.usePayload
        ? payloadBuilderSymbol ?? this.builderSymbol
        : this.builderSymbol;
    if (serializedMembers.isEmpty) {
      return builderSymbol
          .newInstance([])
          .property('build')
          .call([])
          .returned
          .statement;
    }

    final builder = BlockBuilder();

    // Create the builder.
    builder.addExpression(
      builderSymbol.newInstance([]).assignFinal('result'),
    );

    // Iterate over the serialized elements.
    builder.statements.addAll([
      const Code('''
      final iterator = serialized.iterator;
      while (iterator.moveNext()) {
        final key = iterator.current as String;
        iterator.moveNext();
        final Object? value = iterator.current;
        switch (key) {
      '''),
      ..._fieldDeserializers,
      const Code('''
        }
      }
      '''),
    ]);

    builder.addExpression(
      refer('result').property('build').call([]).returned,
    );

    return builder.build();
  }

  /// Expression to deserialize fields within the `switch` statement.
  Iterable<Code> get _fieldDeserializers sync* {
    for (var member in serializedMembers) {
      final wireName = _wireName(member);
      final memberSymbol = memberSymbols[member]!;
      final targetShape = context.shapeFor(member.target);
      final hasNestedBuilder = [
            ShapeType.map,
            ShapeType.list,
            ShapeType.set,
          ].contains(targetShape.getType()) ||
          // Since payload types have `nestedBuilders: false`, the member has
          // a nested builder only when the shape has a payload & we're using
          // payloads.
          targetShape.getType() == ShapeType.structure &&
              (!shape.hasPayload || !config.usePayload);
      yield Block.of([
        const Code('case '),
        literalString(wireName).code,
        const Code(':'),
        if (hasNestedBuilder)
          refer('result').property(member.dartName).property('replace').call([
            deserializerFor(member).asA(memberSymbol.unboxed),
          ]).statement
        else
          refer('result')
              .property(member.dartName)
              .assign(deserializerFor(member).asA(memberSymbol))
              .statement,
        const Code('break;'),
      ]);
    }
  }

  @override
  Code get serializeCode {
    if (!config.usePrivateSymbols) {
      return DartTypes.core.stateError
          .newInstance([literalString('Not supported for tests')])
          .thrown
          .statement;
    }
    if (serializedMembers.isEmpty) {
      return literalConstList([], DartTypes.core.object.boxed).code;
    }
    final builder = BlockBuilder();
    final object = refer('object');
    final payload = refer('payload');

    // Get the payload, since we handle serializing the input & payload types
    // in the same serializer.
    final payloadSymbol = this.payloadSymbol;
    if (config.usePayload && payloadSymbol != null) {
      builder.addExpression(
        object
            .isA(symbol)
            .conditional(
              object.property('getPayload').call([]),
              object.asA(payloadSymbol),
            )
            .assignFinal('payload', payloadSymbol),
      );
    } else {
      builder.addExpression(object.asA(symbol).assignFinal('payload'));
    }

    // Create a result object with all the non-null members.
    final result = <Expression>[];
    final nonNullMembers =
        serializedMembers.where((member) => !member.isNullable(shape));
    for (var member in nonNullMembers) {
      final memberRef = payload.property(member.dartName);
      result.addAll([
        literalString(_wireName(member)),
        serializerFor(member, memberRef),
      ]);
    }
    builder.addExpression(
      literalList(result, DartTypes.core.object.boxed).assignFinal('result'),
    );

    // Add remaining objects only if they're non-null.
    final nullableMembers =
        serializedMembers.where((member) => member.isNullable(shape));
    for (var member in nullableMembers) {
      final memberRef = payload.property(member.dartName);
      builder.statements.addAll([
        const Code('if ('),
        payload.property(member.dartName).notEqualTo(literalNull).code,
        const Code(') {'),
        refer('result')
            .cascade('add')
            .call([literalString(_wireName(member))])
            .cascade('add')
            .call([serializerFor(member, memberRef)])
            .statement,
        const Code('}'),
      ]);
    }

    builder.addExpression(refer('result').returned);

    return builder.build();
  }
}

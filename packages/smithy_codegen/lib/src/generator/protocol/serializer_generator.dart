import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/protocol/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';
import 'package:smithy_codegen/src/util/trait_ext.dart';

class SerializerConfig {
  const SerializerConfig._({
    this.renameMembers = true,
    this.usePayload = true,
    this.usePrivateSymbols = true,
  });

  /// Config for test serializers.
  const SerializerConfig.test()
      : this._(
          usePayload: false,
          renameMembers: false,
          usePrivateSymbols: false,
        );

  /// Config for generic JSON protocol.
  const SerializerConfig.genericJson()
      : this._(
          usePayload: true,
          renameMembers: true,
          usePrivateSymbols: true,
        );

  /// Config for AWS JSON 1.0
  const SerializerConfig.awsJson10()
      : this._(
          usePayload: false,
          renameMembers: false,
          usePrivateSymbols: true,
        );

  final bool renameMembers;
  final bool usePayload;
  final bool usePrivateSymbols;
}

extension on ProtocolDefinitionTrait {
  SerializerConfig get serializerConfig {
    switch (runtimeType) {
      case GenericProtocolDefinitionTrait:
        return const SerializerConfig.genericJson();
      case AwsJson1_0Trait:
        return const SerializerConfig.awsJson10();
      default:
        return const SerializerConfig._();
    }
  }
}

/// Generates a serializer class for [shape] and [protocol].
class SerializerGenerator extends ShapeGenerator<StructureShape, Class?>
    with StructureGenerationContext {
  SerializerGenerator(
    StructureShape shape,
    CodegenContext context,
    this.protocol, {
    SerializerConfig? config,
  }) : super(shape, context) {
    this.config = config ?? protocol.serializerConfig;
  }

  late final SerializerConfig config;
  final ProtocolDefinitionTrait protocol;

  String get serializerClassName {
    final withProtocolName = protocol.isSynthetic ? '' : protocol.shapeId.shape;
    return '_' +
        '${shape.shapeId.shape}_${withProtocolName}_Serializer'.pascalCase;
  }

  /// The symbol to be serialized.
  ///
  /// When generating test case serializers, it's always the full symbol.
  Reference get serializedSymbol =>
      config.usePayload ? payloadSymbol ?? symbol : symbol;

  /// The members which get serialized.
  ///
  /// In general, this is members of the payload ([serializableMembers]).
  /// However, for test cases, we want to deserialize *all* members.
  List<MemberShape> get serializedMembers =>
      config.usePayload ? serializableMembers : sortedMembers;

  /// Metadata about [shape] in the context of [protocol], including renames and
  /// other protocol-specific traits.
  late final ProtocolTraits protocolTraits = () {
    if (protocol.isJsonProtocol) {
      final builder = protocol is RestJson1Trait
          ? RestJson1ProtocolTraitsBuilder()
          : JsonProtocolTraitsBuilder();
      for (var member in serializableMembers) {
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
      for (var member in serializableMembers) {
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
        ..extend = DartTypes.smithy.smithySerializer(serializedSymbol)
        ..constructors.add(_constructor)
        ..methods.addAll([
          _typesGetter,
          _supportedProtocols,
          _deserialize,
          _serialize,
        ]),
    );
  }

  /// The primary, unnamed initializer.
  Constructor get _constructor => Constructor(
        (c) => c
          ..constant = true
          ..initializers.add(
            refer('super').call([
              // Use the unprocessed shape name as the wire name, since this is
              // what we can expect to see for protocols which use it like XML.
              literalString(shape.shapeId.shape),
            ]).code,
          ),
      );

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

  /// The `supportedProtocols` getter.
  Method get _supportedProtocols => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.iterable(DartTypes.smithy.shapeId)
          ..type = MethodType.getter
          ..name = 'supportedProtocols'
          ..lambda = true
          ..body = literalConstList([
            if (!protocol.isSynthetic)
              DartTypes.smithy.shapeId.constInstance([], {
                'namespace': literalString(protocol.shapeId.namespace),
                'shape': literalString(protocol.shapeId.shape),
              })
          ]).code,
      );

  /// The deserialize method.
  Method get _deserialize => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = serializedSymbol
          ..name = 'deserialize'
          ..requiredParameters.addAll([
            Parameter((p) => p
              ..type = DartTypes.builtValue.serializers
              ..name = 'serializers'),
            Parameter((p) => p
              ..type = DartTypes.core.iterable(DartTypes.core.object.boxed)
              ..name = 'serialized'),
          ])
          ..optionalParameters.add(
            Parameter((p) => p
              ..type = DartTypes.builtValue.fullType
              ..named = true
              ..name = 'specifiedType'
              ..defaultTo =
                  DartTypes.builtValue.fullType.property('unspecified').code),
          )
          ..body = _deserializeCode,
      );

  /// Returns the code needed to deserialize [shape].
  Code get _deserializeCode {
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
          targetShape.getType() == ShapeType.structure && config.usePayload;
      yield Block.of([
        const Code('case '),
        literalString(wireName).code,
        const Code(':'),
        if (hasNestedBuilder)
          refer('result').property(member.dartName).property('replace').call([
            _deserializerFor(member).asA(memberSymbol.unboxed),
          ]).statement
        else
          refer('result')
              .property(member.dartName)
              .assign(_deserializerFor(member).asA(memberSymbol))
              .statement,
        const Code('break;'),
      ]);
    }
  }

  /// Deserializes [member] using `built_value` constructs.
  Expression _deserializerFor(MemberShape member) {
    final type = context.shapeFor(member.target).getType();

    // For timestamps, check if there is a custom serializer needed.
    if (type == ShapeType.timestamp) {
      final format = member.timestampFormat ?? shape.timestampFormat;
      if (format != null) {
        return refer('serializers').property('deserializeWith').call([
          DartTypes.smithy.timestampSerializer.property(format.name),
          refer('value'),
        ]);
      }
    }

    // For timestamps without custom serialization annotations, and all other
    // shapes, use the default serializer for the context.
    return refer('serializers').property('deserialize').call([
      refer('value'),
    ], {
      'specifiedType': _fullType(memberSymbols[member]!.typeRef),
    });
  }

  // The serialize method.
  Method get _serialize => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.iterable(DartTypes.core.object.boxed)
          ..name = 'serialize'
          ..requiredParameters.addAll([
            Parameter((p) => p
              ..type = DartTypes.builtValue.serializers
              ..name = 'serializers'),
            Parameter((p) => p
              ..type = DartTypes.core.object.boxed
              ..name = 'object'),
          ])
          ..optionalParameters.add(
            Parameter((p) => p
              ..type = DartTypes.builtValue.fullType
              ..named = true
              ..name = 'specifiedType'
              ..defaultTo =
                  DartTypes.builtValue.fullType.property('unspecified').code),
          )
          ..body = _serializeCode,
      );

  /// Returns the code needed to serialize [shape].
  Code get _serializeCode {
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
        _serializerFor(member, memberRef),
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
            .call([_serializerFor(member, memberRef)])
            .statement,
        const Code('}'),
      ]);
    }

    builder.addExpression(refer('result').returned);

    return builder.build();
  }

  /// The `built_value` FullType expression for [ref].
  Expression _fullType(Reference ref) {
    final typeRef = ref.typeRef;
    if (typeRef.types.isEmpty) {
      return DartTypes.builtValue.fullType.constInstance([
        typeRef.unboxed,
      ]);
    }
    return DartTypes.builtValue.fullType.constInstance([
      typeRef.rebuild((t) => t.types.clear()).unboxed,
      literalList(typeRef.types.map(_fullType)),
    ]);
  }

  /// Serializes [member] as a timestamp shape.
  Expression _serializerFor(MemberShape member, Expression memberRef) {
    final type = context.shapeFor(member.target).getType();

    // For timestamps, check if there is a custom serializer needed.
    if (type == ShapeType.timestamp) {
      final format = member.timestampFormat ?? shape.timestampFormat;
      if (format != null) {
        return refer('serializers').property('serializeWith').call([
          DartTypes.smithy.timestampSerializer.property(format.name),
          memberRef,
        ]);
      }
    }

    // For timestamps without custom serialization annotations, and all other
    // shapes, use the default serializer for the context.
    return refer('serializers').property('serialize').call([
      memberRef,
    ], {
      'specifiedType': _fullType(memberSymbols[member]!),
    });
  }
}

import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Generates a serializer class for [shape] and [protocol].
class UnionSerializerGenerator extends SerializerGenerator<UnionShape>
    with NamedMembersGenerationContext, UnionGenerationContext {
  UnionSerializerGenerator(
    UnionShape shape,
    CodegenContext context,
    ProtocolDefinitionTrait protocol, {
    SerializerConfig? config,
  }) : super(shape, context, protocol, config: config);

  @override
  Reference get serializedSymbol => symbol;

  @override
  Class generate() {
    // Tracks the generated type.
    context.generatedTypes.add(symbol);

    return Class(
      (c) => c
        ..name = serializerClassName
        ..extend = DartTypes.smithy.structuredSmithySerializer(symbol)
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
          ..body = literalConstList([symbol]).code,
      );

  @override
  Code get deserializeCode {
    final builder = BlockBuilder();

    builder.statements.add(const Code('''
    final iterator = serialized.iterator;
    iterator.moveNext();
    final String key = iterator.current as String;
    iterator.moveNext();
    final Object value = iterator.current as Object;
    switch (key) {
    '''));

    for (final member in sortedMembers) {
      builder.statements.addAll([
        Code("case '${member.memberName}':"),
        refer(variantClassName(member))
            .newInstance([
              deserializerFor(member).asA(memberSymbols[member]!.unboxed),
            ])
            .returned
            .statement,
      ]);
    }

    builder.statements.addAll([
      const Code('}'),

      // Add the unknown option. Do not try to deserialize it since
      // we have no information about it.
      refer(variantClassName(unknownMember))
          .newInstance([refer('key'), refer('value')])
          .returned
          .statement,
    ]);

    return builder.build();
  }

  @override
  Code get serializeCode {
    final builder = BlockBuilder();

    final object = refer('object');
    builder.statements.addAll([
      object.asA(symbol).statement,
      literalList([
        object.property('name'),
        object.property('when').call([], {
          for (final member in sortedMembers)
            member.dartName: Method(
              (m) => m
                ..requiredParameters.add(Parameter((p) => p
                  ..type = memberSymbols[member]!
                  ..name = member.dartName))
                ..lambda = true
                ..body = serializerFor(member, refer(member.dartName)).code,
            ).closure,

          // Do not try to serialize the unknown type since
          // we have no information about it and it could fail.
          // We could try/catch the serialization, but that would
          // be inconsistent with the deserialize code.
          unknownMember.dartName: Method(
            (m) => m
              ..requiredParameters.addAll([
                Parameter((p) => p
                  ..type = DartTypes.core.string
                  ..name = '_'),
                Parameter((p) => p
                  ..type = unknownMemberSymbol
                  ..name = unknownMember.dartName),
              ])
              ..lambda = true
              ..body = refer(unknownMember.dartName).code,
          ).closure,
        }, [
          DartTypes.core.object.boxed
        ]).nullChecked
      ]).returned.statement,
    ]);

    return builder.build();
  }
}

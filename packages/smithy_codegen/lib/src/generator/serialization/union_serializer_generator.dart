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
  bool get isStructuredSerializer => true;

  @override
  Class generate() {
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
    builder.statements.add(Code.scope((allocate) => '''
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as ${allocate(DartTypes.core.string)};
    iterator.moveNext();
    final value = iterator.current as ${allocate(DartTypes.core.object)};
    switch (key) {
    '''));

    for (final member in sortedMembers) {
      builder.statements.addAll([
        Code("case '${member.memberName}':"),
        symbol
            .newInstanceNamed(variantName(member), [
              deserializerFor(
                member,
                memberSymbol: memberSymbols[member]!.unboxed,
              ),
            ])
            .returned
            .statement,
      ]);
    }

    builder.statements.addAll([
      const Code('}'),

      // Add the unknown option. Do not try to deserialize it since
      // we have no information about it.
      symbol
          .newInstanceNamed(sdkUnknown, [refer('key'), refer('value')])
          .returned
          .statement,
    ]);

    return builder.build();
  }

  @override
  Code get serializeCode {
    final builder = BlockBuilder();

    final object = refer('object');
    final branches = <String, Expression>{};
    for (final member in sortedMembers) {
      final memberName = member.dartName(ShapeType.union);
      branches[memberName] = Method(
        (m) => m
          ..requiredParameters.add(Parameter((p) => p
            ..type = memberSymbols[member]!.unboxed
            ..name = memberName))
          ..lambda = true
          ..body = serializerFor(
            member,
            refer(memberName),
            memberSymbol: memberSymbols[member]!.unboxed,
          ).code,
      ).closure;
    }
    builder.statements.addAll([
      object.asA(symbol).statement,
      literalList([
        object.property('name'),
        object.property('when').call([], {
          ...branches,

          // Do not try to serialize the unknown type since
          // we have no information about it and it could fail.
          // We could try/catch the serialization, but that would
          // be inconsistent with the deserialize code.
          sdkUnknown: Method(
            (m) => m
              ..requiredParameters.addAll([
                Parameter((p) => p
                  ..type = DartTypes.core.string
                  ..name = '_'),
                Parameter((p) => p
                  ..type = unknownMemberSymbol
                  ..name = sdkUnknown),
              ])
              ..lambda = true
              ..body = refer(sdkUnknown).code,
          ).closure,
        }, [
          DartTypes.core.object.boxed
        ]).nullChecked
      ]).returned.statement,
    ]);

    return builder.build();
  }
}

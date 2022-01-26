import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/union_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

class UnionGenerator extends LibraryGenerator<UnionShape>
    with UnionGenerationContext, NamedMembersGenerationContext {
  UnionGenerator(
    UnionShape shape,
    CodegenContext context,
  ) : super(shape, context: context);

  late final _serializers = [
    for (final protocol in context.serviceProtocols)
      UnionSerializerGenerator(shape, context, protocol).generate(),
  ];

  @override
  Library generate() {
    builder.body.addAll([
      _unionClass,
      ..._variantClasses,
      ..._serializers,
    ]);

    return builder.build();
  }

  Class get _unionClass => Class(
        (c) => c
          ..docs.addAll([if (shape.docs != null) formatDocs(shape.docs!)])
          ..abstract = true
          ..name = className
          ..extend = DartTypes.smithy.smithyUnion(symbol)
          ..constructors.addAll([
            _privateConstructor,
            ..._factoryConstructors,
          ])
          ..methods.addAll([
            ..._variantGetters,
            _valueGetter,
            _whenMethod,
            _toString,
          ])
          ..fields.addAll([
            _serializersField,
          ]),
      );

  /// Prevents initialization of the class, except via [_factoryConstructors].
  Constructor get _privateConstructor => Constructor(
        (c) => c
          ..constant = true
          ..name = '_',
      );

  /// The getter fields for members.
  Iterable<Method> get _variantGetters sync* {
    for (var member in sortedMembers) {
      yield Method(
        (m) => m
          ..returns = memberSymbols[member]!.boxed
          ..type = MethodType.getter
          ..name = variantName(member)
          ..lambda = true
          ..body = literalNull.code,
      );
    }
  }

  /// The `value` override.
  Method get _valueGetter => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.object
          ..type = MethodType.getter
          ..name = 'value'
          ..lambda = true
          ..body = Block.of([
            const Code('('),
            sortedMembers.fold<Expression?>(null, (ref, m) {
              final memberRef = refer(variantName(m));
              if (ref == null) {
                return memberRef;
              }
              return ref.ifNullThen(memberRef);
            })!.code,
            refer(')').nullChecked.code,
          ]),
      );

  /// Factory constructors for each member.
  Iterable<Constructor> get _factoryConstructors sync* {
    for (var member in sortedMembers) {
      yield Constructor(
        (c) => c
          ..constant = true
          ..factory = true
          ..name = variantName(member)
          ..requiredParameters.addAll([
            if (isUnknownMember(member))
              Parameter(
                (p) => p
                  ..type = DartTypes.core.string
                  ..name = 'name',
              ),
            Parameter(
              (p) => p
                ..type = memberSymbols[member]!.unboxed
                ..name =
                    isUnknownMember(member) ? 'value' : variantName(member),
            ),
          ])
          ..redirect = refer(variantClassName(member)),
      );
    }

    yield Constructor(
      (c) => c
        ..constant = true
        ..factory = true
        ..name = sdkUnknown
        ..requiredParameters.addAll([
          Parameter(
            (p) => p
              ..type = DartTypes.core.string
              ..name = 'name',
          ),
          Parameter(
            (p) => p
              ..type = unknownMemberSymbol
              ..name = 'value',
          ),
        ])
        ..redirect = refer(variantClassName(unknownMember)),
    );
  }

  /// The `when` method for switching over the union's value.
  Method get _whenMethod {
    return Method((m) {
      m
        ..annotations.add(DartTypes.core.override)
        ..returns = refer('T?')
        ..name = 'when'
        ..types.add(refer('T'));

      m.optionalParameters.addAll([
        for (var member in sortedMembers)
          Parameter(
            (p) => p
              ..named = true
              ..name = variantName(member)
              ..type = FunctionType(
                (t) => t
                  ..isNullable = true
                  ..requiredParameters.add(memberSymbols[member]!.unboxed)
                  ..returnType = refer('T'),
              ),
          ),
        Parameter(
          (p) => p
            ..named = true
            ..name = sdkUnknown
            ..type = FunctionType(
              (t) => t
                ..isNullable = true
                ..requiredParameters.addAll([
                  DartTypes.core.string, // name
                  unknownMemberSymbol, // value
                ])
                ..returnType = refer('T'),
            ),
        ),
      ]);

      m.body = Block.of([
        for (var member in sortedMembers) ...[
          const Code('if ('),
          refer('this').isA(refer(variantClassName(member))).code,
          const Code(') {'),
          refer(variantName(member))
              .nullSafeProperty('call')
              .call([
                refer('this').asA(refer(variantClassName(member))).property(
                      isUnknownMember(member) ? 'value' : variantName(member),
                    ),
              ])
              .returned
              .statement,
          const Code('}'),
        ],
        refer('sdkUnknown')
            .nullSafeProperty('call')
            .call([refer('name'), refer('value')])
            .returned
            .statement,
      ]);
    });
  }

  /// All the serializers for the union.
  Field get _serializersField => Field((f) => f
    ..static = true
    ..modifier = FieldModifier.constant
    ..type = DartTypes.core.list(DartTypes.smithy.smithySerializer(symbol))
    ..name = 'serializers'
    ..assignment = literalConstList([
      for (final serializer in _serializers)
        refer(serializer.name).constInstance([]),
    ]).code);

  /// Factory constructors for each member.
  Iterable<Class> get _variantClasses sync* {
    for (var member in sortedMembers) {
      final ctor = Constructor(
        (ctor) => ctor
          ..constant = true
          ..requiredParameters.add(
            Parameter((p) => p
              ..toThis = true
              ..name = variantName(member)),
          )
          ..initializers.add(refer('super').property('_').call([]).code),
      );
      final value = Field(
        (f) => f
          ..modifier = FieldModifier.final$
          ..annotations.add(DartTypes.core.override)
          ..name = variantName(member)
          ..type = memberSymbols[member]!.unboxed,
      );
      yield Class(
        (c) => c
          ..name = variantClassName(member)
          ..extend = symbol
          ..constructors.add(ctor)
          ..fields.add(value)
          ..methods.add(Method((m) => m
            ..annotations.add(DartTypes.core.override)
            ..returns = DartTypes.core.string
            ..name = 'name'
            ..type = MethodType.getter
            ..lambda = true
            ..body = literalString(member.memberName).code)),
      );
    }

    // Unknown constructor
    final ctor = Constructor(
      (ctor) => ctor
        ..constant = true
        ..requiredParameters.addAll([
          Parameter(
            (p) => p
              ..toThis = true
              ..name = 'name',
          ),
          Parameter(
            (p) => p
              ..toThis = true
              ..name = 'value',
          ),
        ])
        ..initializers.add(refer('super').property('_').call([]).code),
    );
    final value = Field(
      (f) => f
        ..modifier = FieldModifier.final$
        ..annotations.add(DartTypes.core.override)
        ..name = 'value'
        ..type = unknownMemberSymbol,
    );
    yield Class((c) => c
      ..name = variantClassName(unknownMember)
      ..extend = symbol
      ..constructors.add(ctor)
      ..fields.addAll([
        Field((f) => f
          ..modifier = FieldModifier.final$
          ..annotations.add(DartTypes.core.override)
          ..name = 'name'
          ..type = DartTypes.core.string),
        value,
      ]));
  }

  Method get _toString {
    final builder = BlockBuilder();
    final helper = refer('helper');
    builder.addExpression(
      DartTypes.builtValue.newBuiltValueToStringHelper
          .call([literalString(className, raw: true)]).assignFinal('helper'),
    );
    for (final member in sortedMembers) {
      final dartName = member.dartName(ShapeType.union);
      final isSensitive = shape.hasTrait<SensitiveTrait>() ||
          member.hasTrait<SensitiveTrait>() ||
          context.shapeFor(member.target).hasTrait<SensitiveTrait>();
      final stringValue =
          isSensitive ? literalString('***SENSITIVE***') : refer(dartName);
      builder.statements.add(
        helper.property('add').call([
          literalString(dartName, raw: true),
          stringValue,
        ]).wrapWithBlockNullCheck(
            refer(dartName).notEqualTo(literalNull), true),
      );
    }
    builder.addExpression(helper.property('toString').call([]).returned);
    return Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.string
        ..name = 'toString'
        ..body = builder.build(),
    );
  }
}

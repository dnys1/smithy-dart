import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

const _sdkUnknown = 'sdkUnknown';

class UnionGenerator extends LibraryGenerator<UnionShape> {
  UnionGenerator(
    UnionShape shape, {
    required CodegenContext context,
  }) : super(shape, context: context);

  late final List<MemberShape> sortedMembers = shape.members.values.toList()
    ..sort((a, b) {
      return a.memberName.compareTo(b.memberName);
    })
    ..add(MemberShape(
      (s) => s
        ..memberName = _sdkUnknown
        ..shapeId = shape.shapeId.replace(member: _sdkUnknown)
        ..target = ShapeId.core('Document'),
    ));

  late final Map<MemberShape, Reference> memberSymbols = {
    for (var member in sortedMembers)
      member: context.symbolFor(member.target, shape),
  };

  @override
  Library generate() {
    builder.body.addAll([
      _unionClass,
      ..._variantClasses,
    ]);

    return builder.build();
  }

  Class get _unionClass => Class(
        (c) => c
          ..docs.addAll([if (shape.docs != null) formatDocs(shape.docs!)])
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
          ])
          ..fields.addAll([]),
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
          ..name = member.variantName
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
            ([...sortedMembers]..removeLast()).fold<Expression?>(null,
                (ref, m) {
              final memberRef = refer(m.variantName);
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
          ..name = member.variantName
          ..requiredParameters.add(Parameter(
            (p) => p
              ..type = memberSymbols[member]!.unboxed
              ..name = member.variantName == _sdkUnknown
                  ? 'value'
                  : member.variantName,
          ))
          ..redirect = refer(member.variantClassName(className)),
      );
    }
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
              ..name = member.variantName
              ..type = FunctionType(
                (t) => t
                  ..isNullable = true
                  ..requiredParameters.add(memberSymbols[member]!.unboxed)
                  ..returnType = refer('T'),
              ),
          ),
      ]);

      m.body = Block.of([
        for (var member in sortedMembers) ...[
          const Code('if ('),
          refer('this').isA(refer(member.variantClassName(className))).code,
          const Code(') {'),
          refer(member.variantName)
              .nullSafeProperty('call')
              .call([
                refer('this')
                    .asA(refer(member.variantClassName(className)))
                    .property(
                      member.isUnknownMember ? 'value' : member.variantName,
                    ),
              ])
              .returned
              .statement,
          const Code('}'),
        ],
        DartTypes.core.stateError
            .newInstance([literalString(r'Unknown union value: $this')])
            .thrown
            .statement,
      ]);
    });
  }

  /// Factory constructors for each member.
  Iterable<Class> get _variantClasses sync* {
    for (var member in sortedMembers) {
      final ctor = Constructor(
        (ctor) => ctor
          ..constant = true
          ..requiredParameters.add(Parameter(
            (p) => p
              ..toThis = true
              ..name = member.isUnknownMember ? 'value' : member.variantName,
          ))
          ..initializers.add(refer('super').property('_').call([]).code),
      );
      final value = Field(
        (f) => f
          ..modifier = FieldModifier.final$
          ..annotations.add(DartTypes.core.override)
          ..name = member.isUnknownMember ? 'value' : member.variantName
          ..type = member.isUnknownMember
              ? DartTypes.core.object
              : memberSymbols[member]!.unboxed,
      );
      yield Class(
        (c) => c
          ..name = member.variantClassName(className)
          ..extend = symbol
          ..constructors.add(ctor)
          ..fields.add(value),
      );
    }
  }
}

extension on MemberShape {
  /// Whether this represents the unknown value type.
  bool get isUnknownMember => memberName == _sdkUnknown;

  /// The name of this member as a union variant.
  String get variantName => memberName.camelCase;

  /// The name of the enum variant's private class name.
  String variantClassName(String className) =>
      '_' + '${className}_$memberName'.pascalCase;
}

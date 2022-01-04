import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

class StructureGenerator extends LibraryGenerator<StructureShape> {
  StructureGenerator(
    StructureShape shape, {
    required CodegenContext context,
  }) : super(shape, context: context);

  late final List<MemberShape> sortedMembers = shape.members.values.toList()
    ..sort((a, b) {
      return a.dartName.compareTo(b.dartName);
    });

  late final Map<MemberShape, Reference> memberSymbols = {
    for (var member in sortedMembers)
      member: context
          .symbolFor(member.target, shape)
          .withBoxed(member.isNullable(shape)),
  };

  @override
  Library generate() {
    final serializerClasses = _serializerClasses;
    builder.body.addAll([
      _structClass(serializerClasses.keys),
      ...serializerClasses.values,
    ]);

    return builder.build();
  }

  /// The main struct class.
  Class _structClass(Iterable<String> serializerClasses) => Class(
        (c) => c
          ..name = className
          ..annotations.addAll([
            if (shape.deprecatedAnnotation != null) shape.deprecatedAnnotation!,
          ])
          ..docs.addAll([
            if (shape.docs != null) formatDocs(shape.docs!),
          ])
          ..mixins.addAll([
            DartTypes.awsCommon.awsEquatable(symbol),
            DartTypes.awsCommon.awsSerializable,
          ])
          ..constructors.addAll([
            _primaryConstructor,
          ])
          ..methods.addAll([
            ..._fieldGetters,
          ])
          ..fields.addAll([
            _serializersField(serializerClasses),
          ]),
      );

  /// The primary, unnamed constructor.
  Constructor get _primaryConstructor => Constructor(
        (c) => c
          ..constant = true
          ..docs.addAll([
            if (shape.docs != null) formatDocs(shape.docs!),
          ])
          ..optionalParameters.addAll(sortedMembers.map((shape) {
            return Parameter(
              (p) => p
                ..toThis = true
                ..named = sortedMembers.length > 1
                ..required = !shape.isNullable(this.shape)
                ..name = shape.dartName
                ..defaultTo = shape.defaultValue?.code,
            );
          })),
      );

  /// Fields for this type.
  Iterable<Method> get _fieldGetters sync* {
    for (var member in sortedMembers) {
      yield Method(
        (f) => f
          ..annotations.addAll([
            if (member.deprecatedAnnotation != null)
              member.deprecatedAnnotation!,
          ])
          ..docs.addAll([
            if (member.docs != null) formatDocs(member.docs!),
          ])
          ..returns = memberSymbols[member]!
          ..type = MethodType.getter
          ..name = member.dartName,
      );
    }
  }

  /// Creates the static `serializers` field using the class names in
  /// [serializerClasses].
  Field _serializersField(Iterable<String> serializerClasses) => Field(
        (f) => f
          ..static = true
          ..modifier = FieldModifier.constant
          ..type =
              DartTypes.core.list(DartTypes.smithy.smithySerializer(symbol))
          ..name = 'serializers'
          ..assignment = literalList(
            serializerClasses.map((name) => refer(name).newInstance([])),
          ).code,
      );

  /// The `built_value` serializer class.
  Map<String, Class> get _serializerClasses {
    final classes = <String, Class>{};
    final serializerClassName = '_${className}Serializer';

    // The primary, unnamed initializer.
    final ctor = Constructor(
      (c) => c
        ..constant = true
        ..name = serializerClassName
        ..initializers.add(
          refer('super').call([
            // Use the unprocessed shape name as the wire name, since this is
            // what we can expect to see for protocols which use it like XML.
            literalString(shape.shapeId.shape),
          ]).code,
        ),
    );

    // The `supportedProtocols` getter.
    final supportedProtocols = Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.iterable(DartTypes.core.string)
        ..type = MethodType.getter
        ..name = 'supportedProtocols'
        ..lambda = true
        ..body = literalList([]).code,
    );

    // The deserialize method.
    final deserialize = Method((m) => m
      ..annotations.add(DartTypes.core.override)
      ..returns = symbol
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
      ));

    // The serialize method.
    final serialize = Method((m) => m
      ..annotations.add(DartTypes.core.override)
      ..returns = DartTypes.core.iterable(DartTypes.core.object.boxed)
      ..name = 'serialize'
      ..requiredParameters.addAll([
        Parameter((p) => p
          ..type = DartTypes.builtValue.serializers
          ..name = 'serializers'),
        Parameter((p) => p
          ..type = symbol
          ..name = 'object'),
      ])
      ..optionalParameters.add(
        Parameter((p) => p
          ..type = DartTypes.builtValue.fullType
          ..named = true
          ..name = 'specifiedType'
          ..defaultTo =
              DartTypes.builtValue.fullType.property('unspecified').code),
      ));

    classes[serializerClassName] = Class(
      (c) => c
        ..name = serializerClassName
        ..extend = DartTypes.smithy.smithySerializer(symbol)
        ..constructors.add(ctor)
        ..methods.addAll([
          supportedProtocols,
          deserialize,
          serialize,
        ]),
    );

    return classes;
  }
}

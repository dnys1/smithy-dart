import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// Generates enums for [StringShape] types.
class EnumGenerator extends LibraryGenerator<StringShape> {
  EnumGenerator(
    StringShape enumShape,
    CodegenContext context,
  ) : super(enumShape, context: context);

  late final EnumTrait enumTrait = shape.expectTrait<EnumTrait>();

  late final List<EnumDefinition> sortedDefinitions =
      enumTrait.definitions.toList()
        ..sort((a, b) {
          return a.variantName.compareTo(b.variantName);
        });

  @override
  Library generate() {
    builder.body.addAll([
      _classDefinition,
      _helperExtension,
    ]);

    return builder.build();
  }

  /// The `SmithyEnum` class definition.
  Class get _classDefinition => Class((c) {
        final docs = shape.docs;
        if (docs != null) {
          c.docs.add(formatDocs(docs));
        }
        c
          ..name = className
          ..extend = DartTypes.smithy.smithyEnum(symbol)
          ..constructors.addAll([
            _privateConstructor,
            _sdkUnknownConstructor,
          ])
          ..fields.addAll([
            ..._variantFields,
            _valuesField,
          ]);
      });

  /// The private constructor which is used internally.
  ///
  /// ```dart
  /// MyEnum._(int index, String name, String value)
  ///   : super(index, name, value);
  /// ```
  Constructor get _privateConstructor => Constructor(
        (c) => c
          ..constant = true
          ..name = '_'
          ..requiredParameters.addAll([
            Parameter((p) => p
              ..name = 'index'
              ..type = DartTypes.core.int),
            Parameter((p) => p
              ..name = 'name'
              ..type = DartTypes.core.string),
            Parameter((p) => p
              ..name = 'value'
              ..type = DartTypes.core.string),
          ])
          ..initializers.add(refer('super').call([
            refer('index'),
            refer('name'),
            refer('value'),
          ]).code),
      );

  /// The `sdkUnknown` constructor for values which do not match the
  /// enumerated ones.
  ///
  /// ```dart
  /// const MyEnum.sdkUnknown(String value) : super.sdkUnknown(value);
  /// ```
  Constructor get _sdkUnknownConstructor => Constructor(
        (c) => c
          ..constant = true
          ..name = 'sdkUnknown'
          ..requiredParameters.add(Parameter((p) => p
            ..name = 'value'
            ..type = DartTypes.core.string))
          ..initializers.add(refer('super').property('sdkUnknown').call([
            refer('value'),
          ]).code),
      );

  /// Enumerated value fields, as `static const` properties.
  Iterable<Field> get _variantFields =>
      sortedDefinitions.mapIndexed((index, definition) {
        return Field((f) {
          final docs = definition.documentation;
          if (docs != null) {
            f.docs.add(formatDocs(docs));
          }
          f
            ..static = true
            ..modifier = FieldModifier.constant
            ..name = definition.variantName
            ..assignment = symbol.newInstanceNamed('_', [
              literalNum(index),
              literalString(definition.name ?? definition.variantName),
              literalString(definition.value),
            ]).code;
        });
      });

  /// The static `values` field with all enum values.
  Field get _valuesField => Field(
        (f) => f
          ..static = true
          ..modifier = FieldModifier.constant
          ..name = 'values'
          ..docs.add('/// All values of [$className].')
          ..assignment = literalList(
            sortedDefinitions.map((e) => symbol.property(e.variantName)),
            symbol,
          ).code,
      );

  /// Adds helper functions `byName` and `byValue` via an extension.
  Extension get _helperExtension => Extension((e) => e
    ..name = '${className}Helpers'
    ..on = DartTypes.core.list(symbol)
    ..methods.addAll([
      // The `byName` method
      Method(
        (m) => m
          ..returns = symbol
          ..name = 'byName'
          ..docs.addAll([
            '/// Returns the value of [$className] whose name matches [name].',
            '/// ',
            '/// Throws a `StateError` if no matching value is found.',
          ])
          ..requiredParameters.add(Parameter((p) => p
            ..type = DartTypes.core.string
            ..name = 'name'))
          ..lambda = true
          ..body = refer('firstWhere').call([
            Method(
              (c) => c
                ..lambda = true
                ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                ..body = refer('el')
                    .property('name')
                    .property('toLowerCase')
                    .call([])
                    .equalTo(refer('name').property('toLowerCase').call([]))
                    .code,
            ).closure,
          ]).code,
      ),

      // The `byValue` method
      Method(
        (m) => m
          ..returns = symbol
          ..name = 'byValue'
          ..docs.addAll([
            '/// Returns the value of [$className] whose value matches [value].'
          ])
          ..requiredParameters.add(Parameter((p) => p
            ..type = DartTypes.core.string
            ..name = 'value'))
          ..lambda = true
          ..body = refer('firstWhere').call([
            Method(
              (c) => c
                ..lambda = true
                ..requiredParameters.add(Parameter((p) => p..name = 'el'))
                ..body =
                    refer('el').property('value').equalTo(refer('value')).code,
            ).closure,
          ], {
            'orElse': Method(
              (c) => c
                ..lambda = true
                ..body = symbol
                    .newInstanceNamed('sdkUnknown', [refer('value')]).code,
            ).closure,
          }).code,
      ),
    ]));
}

extension on EnumDefinition {
  /// The name of the enum variant.
  String get variantName => (name ?? value).camelCase;
}

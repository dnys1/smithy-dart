import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// A general purpose generator.
abstract class Generator<T> {
  T generate();
}

/// A generator for [Shape] types.
abstract class ShapeGenerator<T extends Shape, U> implements Generator<U> {
  ShapeGenerator(this.shape, this.context);

  final CodegenContext context;
  final T shape;

  /// The symbol for [shape].
  late final Reference symbol = context.symbolFor(shape.shapeId);

  /// The re-cased name for the generated class.
  String get className => shape.shapeId.shape.pascalCase;

  /// Formats documentation to follow Dart standards.
  String formatDocs(String docs) => docs
      .split('\n')
      .map((doc) => '/// ${doc.replaceFirst(RegExp(r'^/*'), '')}')
      .join('\n');
}

/// A generator for [Library] definitions.
abstract class LibraryGenerator<T extends Shape>
    extends ShapeGenerator<T, Library> {
  LibraryGenerator(
    T shape, {
    required CodegenContext context,
  })  : builder = LibraryBuilder()
          ..name = shape.libraryName(context.packageName, context.serviceName),
        super(shape, context);

  final LibraryBuilder builder;
}

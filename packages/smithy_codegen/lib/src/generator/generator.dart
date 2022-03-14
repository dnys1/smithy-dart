import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
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
  String get className {
    return shape.escapedClassName(context)!;
  }
}

/// A generator for [Library] definitions.
abstract class LibraryGenerator<T extends Shape>
    extends ShapeGenerator<T, Library?> {
  LibraryGenerator(
    T shape, {
    required CodegenContext context,
    SmithyLibrary? smithyLibrary,
  })  : builder = LibraryBuilder()
          ..name = smithyLibrary?.libraryName ?? shape.libraryName(context),
        super(shape, context);

  final LibraryBuilder builder;
}

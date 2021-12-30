import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/util/recase.dart';

/// A general purpose generator.
abstract class Generator<T> {
  T generate();
}

/// A generator for [Library] definitions.
abstract class LibraryGenerator<T extends Shape> extends Generator<Library> {
  LibraryGenerator(
    this.shape, {
    required this.context,
  }) : builder = LibraryBuilder();

  final LibraryBuilder builder;

  final CodegenContext context;
  final T shape;

  /// The symbol for [shape].
  late final Reference symbol = context.symbolFor(shape.shapeId);

  /// The re-cased name for the generated class.
  String get className => shape.shapeId.name.pascalCase;
}

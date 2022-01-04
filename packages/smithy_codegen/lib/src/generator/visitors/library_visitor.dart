import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/enum_generator.dart';
import 'package:smithy_codegen/src/generator/operation_generator.dart';
import 'package:smithy_codegen/src/generator/service_generator.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_codegen/src/generator/union_generator.dart';
import 'package:smithy_codegen/src/generator/visitors/default_visitor.dart';

/// Wrapper over [Library] with context for its creation.
class ShapeLibrary {
  const ShapeLibrary(this.shape, this.library);

  final Shape shape;
  final Library library;
}

/// Visits shapes to create libraries as needed. Only certain shape types are
/// given their own library file.
class LibraryVisitor extends DefaultVisitor<Library> {
  const LibraryVisitor(this.context);

  final CodegenContext context;

  @override
  Library serviceShape(ServiceShape shape, [Shape? parent]) {
    return ServiceGenerator(shape, context: context).generate();
  }

  @override
  Library? stringShape(StringShape shape, [Shape? parent]) {
    if (shape.isEnum) {
      return EnumGenerator(shape, context: context).generate();
    }
    return null;
  }

  @override
  Library structureShape(StructureShape shape, [Shape? parent]) {
    return StructureGenerator(shape, context: context).generate();
  }

  @override
  Library unionShape(UnionShape shape, [Shape? parent]) {
    return UnionGenerator(shape, context: context).generate();
  }
}

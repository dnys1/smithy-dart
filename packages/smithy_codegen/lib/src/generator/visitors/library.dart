import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/enum_generator.dart';
import 'package:smithy_codegen/src/generator/service_generator.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_codegen/src/generator/union_generator.dart';
import 'package:smithy_codegen/src/generator/visitors/default.dart';

/// Visits shapes to create libraries as needed. Only certain shape types are
/// given their own library file.
class LibraryVisitor extends DefaultVisitor<Library> {
  const LibraryVisitor(this.context);

  final CodegenContext context;

  @override
  Library serviceShape(ServiceShape shape) {
    return ServiceGenerator(shape, context: context).generate();
  }

  @override
  Library? stringShape(StringShape shape) {
    if (!shape.isEnum) {
      return null;
    }
    return EnumGenerator(shape, context: context).generate();
  }

  @override
  Library structureShape(StructureShape shape) {
    return StructureGenerator(shape, context: context).generate();
  }

  @override
  Library unionShape(UnionShape shape) {
    return UnionGenerator(shape, context: context).generate();
  }
}

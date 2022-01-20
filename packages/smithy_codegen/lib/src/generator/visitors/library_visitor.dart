import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/enum_generator.dart';
import 'package:smithy_codegen/src/generator/generated_library.dart';
import 'package:smithy_codegen/src/generator/operation_generator.dart';
import 'package:smithy_codegen/src/generator/operation_test_generator.dart';
import 'package:smithy_codegen/src/generator/serializers_generator.dart';
import 'package:smithy_codegen/src/generator/service_client_generator.dart';
import 'package:smithy_codegen/src/generator/service_generator.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_codegen/src/generator/union_generator.dart';
import 'package:smithy_codegen/src/generator/visitors/default_visitor.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// Wrapper over [Library] with context for its creation.
class ShapeLibrary {
  const ShapeLibrary(this.shape, this.library);

  final Shape shape;
  final Library library;
}

/// Visits shapes to create libraries as needed. Only certain shape types are
/// given their own library file.
class LibraryVisitor extends DefaultVisitor<Iterable<GeneratedLibrary>> {
  const LibraryVisitor(this.context);

  final CodegenContext context;

  GeneratedLibrary _buildLibrary(Shape shape, Library library) =>
      GeneratedLibrary(shape.smithyLibrary(context), library);

  @override
  Iterable<GeneratedLibrary> operationShape(OperationShape shape,
      [Shape? parent]) sync* {
    // Build the operation class.
    yield _buildLibrary(shape, OperationGenerator(shape, context).generate());

    // Build the operation tests.
    final testLibrary = SmithyLibraryX.create(
      packageName: context.packageName,
      serviceName: context.serviceName,
      libraryType: SmithyLibrary_LibraryType.TEST,
      filename: shape.dartName,
    );
    yield GeneratedLibrary(
      testLibrary,
      OperationTestGenerator(shape, context).generate(),
    );

    // Build the input, output and error shapes
    final shapes = [
      if (shape.input != null) shape.input!.target,
      if (shape.output != null) shape.output!.target,
      ...shape.errors.map((ref) => ref.target),
    ].map(context.shapeFor).cast<StructureShape>();

    for (final child in shapes) {
      if (!context.shapes.values.contains(child)) {
        yield* structureShape(child);
      }
    }
  }

  @override
  Iterable<GeneratedLibrary> serviceShape(ServiceShape shape,
      [Shape? parent]) sync* {
    // Build service client
    yield GeneratedLibrary(
      context.serviceClientLibrary,
      ServiceClientGenerator(shape, context).generate(),
    );

    // Build serializers library
    yield GeneratedLibrary(
      context.serviceSerializersLibrary,
      SerializersGenerator(context).generate(),
    );

    // Build top-level service library (should be last thing built)
    yield GeneratedLibrary(
      context.serviceLibrary,
      ServiceGenerator(shape, context).generate(),
    );
  }

  @override
  Iterable<GeneratedLibrary> stringShape(StringShape shape, [Shape? parent]) {
    if (shape.isEnum) {
      return [_buildLibrary(shape, EnumGenerator(shape, context).generate())];
    }
    return const Iterable.empty();
  }

  @override
  Iterable<GeneratedLibrary> structureShape(StructureShape shape,
      [Shape? parent]) sync* {
    if (Shape.preludeShapes.keys.contains(shape.shapeId)) {
      return;
    }
    yield* _foreignMembers(shape);
    yield _buildLibrary(
      shape,
      StructureGenerator(shape, context).generate(),
    );
  }

  @override
  Iterable<GeneratedLibrary> unionShape(UnionShape shape,
      [Shape? parent]) sync* {
    yield* _foreignMembers(shape);
    yield _buildLibrary(shape, UnionGenerator(shape, context).generate());
  }

  Iterable<GeneratedLibrary> _foreignMembers(NamedMembersShape shape) {
    return shape.members.values
        .map((shape) => context.shapeFor(shape.target))
        .where((target) => !context.shapes.keys.contains(target.shapeId))
        .expand((shape) => shape.accept(this) ?? const Iterable.empty());
  }
}

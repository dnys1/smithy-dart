import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/endpoint_resolver_generator.dart';
import 'package:smithy_codegen/src/generator/enum_generator.dart';
import 'package:smithy_codegen/src/generator/operation_generator.dart';
import 'package:smithy_codegen/src/generator/operation_test_generator.dart';
import 'package:smithy_codegen/src/generator/serializers_generator.dart';
import 'package:smithy_codegen/src/generator/service_client_generator.dart';
import 'package:smithy_codegen/src/generator/service_generator.dart';
import 'package:smithy_codegen/src/generator/service_server_generator.dart';
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
    final generated = OperationTestGenerator(
      shape,
      context,
      smithyLibrary: testLibrary,
    ).generate();
    if (generated != null) {
      yield GeneratedLibrary(
        testLibrary,
        generated,
        libraryDocs: '// ignore_for_file: unused_element\n',
      );
    }

    // Build the input, output and error shapes
    final shapes = [
      if (shape.input != null) shape.input!.target,
      if (shape.output != null) shape.output!.target,
      ...shape.errors.map((ref) => ref.target),
    ].map(context.shapeFor).cast<StructureShape>();

    for (final child in shapes) {
      if (!context.shapes.keys.contains(child.shapeId)) {
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
      ServiceClientGenerator(
        shape,
        context,
        smithyLibrary: context.serviceClientLibrary,
      ).generate(),
    );

    if (context.generateServer) {
      // Build service server
      yield GeneratedLibrary(
        context.serviceServerLibrary,
        ServiceServerGenerator(
          shape,
          context,
          smithyLibrary: context.serviceServerLibrary,
        ).generate(),
      );
    }

    // Build serializers library
    yield GeneratedLibrary(
      context.serviceSerializersLibrary,
      SerializersGenerator(context).generate(),
    );

    // Build the endpoint resolver library
    final endpointResolver =
        EndpointResolverGenerator(shape, context).generate();
    if (endpointResolver != null) {
      yield GeneratedLibrary(
        context.endpointResolverLibrary,
        endpointResolver,
      );
    }

    // Build top-level service library (should be last thing built)
    final docs = StringBuffer();
    final title = shape.getTrait<TitleTrait>()?.value;
    if (title != null) {
      docs.writeln('/// $title');
    }
    if (shape.hasDocs(context)) {
      if (docs.isNotEmpty) docs.writeln('///');
      docs.writeln(shape.formattedDocs(context));
    }
    yield GeneratedLibrary(
      context.serviceLibrary,
      ServiceGenerator(
        shape,
        context,
        smithyLibrary: context.serviceLibrary,
      ).generate(),
      libraryDocs: docs.toString(),
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
  Iterable<GeneratedLibrary> listShape(ListShape shape, [Shape? parent]) {
    return _foreignMembers([shape.member]);
  }

  @override
  Iterable<GeneratedLibrary> setShape(SetShape shape, [Shape? parent]) {
    return _foreignMembers([shape.member]);
  }

  @override
  Iterable<GeneratedLibrary> structureShape(StructureShape shape,
      [Shape? parent]) sync* {
    if (Shape.preludeShapes.keys.contains(shape.shapeId)) {
      return;
    }
    yield* _foreignMembers(shape.members.values);
    yield _buildLibrary(
      shape,
      StructureGenerator(shape, context).generate(),
    );
  }

  @override
  Iterable<GeneratedLibrary> unionShape(UnionShape shape,
      [Shape? parent]) sync* {
    yield* _foreignMembers(shape.members.values);
    yield _buildLibrary(shape, UnionGenerator(shape, context).generate());
  }

  Iterable<GeneratedLibrary> _foreignMembers(Iterable<MemberShape> members) {
    return members
        .map((shape) => context.shapeFor(shape.target))
        .expand((shape) {
          if (shape is CollectionShape) {
            return [context.shapeFor(shape.member.target)];
          } else if (shape is MapShape) {
            return [shape.key.target, shape.value.target].map(context.shapeFor);
          }
          return [shape];
        })
        .where((target) => !context.shapes.keys.contains(target.shapeId))
        .expand((shape) => shape.accept(this) ?? const Iterable.empty());
  }
}

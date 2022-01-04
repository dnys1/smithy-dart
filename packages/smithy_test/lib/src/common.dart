import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

/// Creates an AST from [shapes].
SmithyAst createAst(List<Shape> shapes) {
  return SmithyAst(
    (b) =>
        b..shapes = ShapeMap({for (var shape in shapes) shape.shapeId: shape}),
  );
}

/// Creates a codegen context for test cases.
CodegenContext createTestContext(
  List<Shape> shapes, {
  String packageName = 'example',
  String serviceName = 'Test',
}) {
  return CodegenContext(
    smithyVersion: '1.0',
    shapes: ShapeMap({for (var shape in shapes) shape.shapeId: shape}),
    packageName: packageName,
    serviceName: serviceName,
  );
}

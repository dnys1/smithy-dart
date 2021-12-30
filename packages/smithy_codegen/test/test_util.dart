import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

/// Creates a codegen context for test cases.
CodegenContext createTestContext(
  List<Shape> shapes, {
  String packageName = 'test',
  String serviceName = 'Test',
}) {
  return CodegenContext(
    shapes: ShapeMap({for (var shape in shapes) shape.shapeId: shape}),
    packageName: packageName,
    serviceName: serviceName,
  );
}

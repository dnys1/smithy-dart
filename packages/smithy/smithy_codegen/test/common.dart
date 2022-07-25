import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

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

import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';

extension ShapeUtils on Shape {
  /// Documentation for the shape.
  String? get docs => getTrait<DocumentationTrait>()?.value;

  /// The default value of this shape when not boxed.
  Expression? get defaultValue {
    switch (getType()) {
      case ShapeType.byte:
      case ShapeType.short:
      case ShapeType.integer:
      case ShapeType.float:
      case ShapeType.double:
        return literalNum(0);
      case ShapeType.long:
        return DartTypes.fixNum.int64.property('ZERO');
      case ShapeType.boolean:
        return literalFalse;
      default:
        return null;
    }
  }

  /// The absolute `package` path of the library generated for this shape.
  String libraryUrl(String packageName, String serviceName) {
    if (this is ServiceShape) {
      return 'package:$packageName/src/${serviceName.snakeCase}.dart';
    }
    return 'package:$packageName/src/${serviceName.snakeCase}/${shapeId.name.snakeCase}.dart';
  }
}

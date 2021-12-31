import 'package:smithy_ast/smithy_ast.dart';

abstract class AnnotationTrait extends Trait<Map> {
  const AnnotationTrait(ShapeId shapeId) : super(shapeId, const {});
}

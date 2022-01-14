import 'package:smithy_ast/smithy_ast.dart';

class ControlPlaneTrait extends AnnotationTrait {
  const ControlPlaneTrait() : super(id);

  const ControlPlaneTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'aws.api', shape: 'controlPlane');
}

import 'package:smithy_ast/smithy_ast.dart';

/// Indicates that the data stored in the shape or member is sensitive and
/// should be handled with care.
class SensitiveTrait extends AnnotationTrait {
  const SensitiveTrait() : super(id);

  const SensitiveTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('sensitive');
}

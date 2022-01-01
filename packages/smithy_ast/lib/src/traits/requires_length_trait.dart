import 'package:smithy_ast/smithy_ast.dart';

/// Indicates that the streaming blob must be finite and has a known size.
class RequiresLengthTrait extends AnnotationTrait {
  const RequiresLengthTrait() : super(id);

  const RequiresLengthTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('requiresLength');
}

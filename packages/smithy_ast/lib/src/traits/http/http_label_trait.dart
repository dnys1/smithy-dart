import 'package:smithy_ast/smithy_ast.dart';

/// Binds a member to a URI label of an input of an operation using
/// the member name.
class HttpLabelTrait extends AnnotationTrait {
  const HttpLabelTrait() : super(id);

  const HttpLabelTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('httpLabel');
}

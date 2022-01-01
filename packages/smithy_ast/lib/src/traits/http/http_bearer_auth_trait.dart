import 'package:smithy_ast/smithy_ast.dart';

/// An auth scheme trait uses HTTP bearer auth.
class HttpBearerAuthTrait extends AnnotationTrait {
  const HttpBearerAuthTrait() : super(id);

  const HttpBearerAuthTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', name: 'httpBearerAuth');
}

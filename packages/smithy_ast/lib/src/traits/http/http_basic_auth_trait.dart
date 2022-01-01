import 'package:smithy_ast/smithy_ast.dart';

/// An auth scheme trait uses HTTP basic auth.
class HttpBasicAuthTrait extends AnnotationTrait {
  const HttpBasicAuthTrait() : super(id);

  const HttpBasicAuthTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', name: 'httpBasicAuth');
}

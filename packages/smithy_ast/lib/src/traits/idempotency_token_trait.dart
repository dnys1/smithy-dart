import 'package:smithy_ast/smithy_ast.dart';

/// Defines an operation input member that is used to prevent replayed requests.
class IdempotencyTokenTrait extends AnnotationTrait {
  const IdempotencyTokenTrait() : super(id);

  const IdempotencyTokenTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', name: 'idempotencyToken');
}

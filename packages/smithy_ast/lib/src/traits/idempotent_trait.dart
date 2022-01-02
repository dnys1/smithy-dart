import 'package:smithy_ast/smithy_ast.dart';

/// Indicates that an operation is idempotent.
class IdempotentTrait extends AnnotationTrait {
  const IdempotentTrait() : super(id);

  const IdempotentTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'idempotent');
}

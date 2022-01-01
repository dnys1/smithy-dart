import 'package:smithy_ast/smithy_ast.dart';

/// Indicates that a list or map is sparse, meaning they may contain nulls.
class SparseTrait extends AnnotationTrait {
  const SparseTrait() : super(id);

  const SparseTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('sparse');
}

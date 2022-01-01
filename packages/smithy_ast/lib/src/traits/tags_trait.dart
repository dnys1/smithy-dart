import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/string_list_trait.dart';

/// Applies tags to a shape.
class TagsTrait extends StringListTrait {
  const TagsTrait(List<String> values) : super(id, values);

  factory TagsTrait.fromJson(Object? json) => TagsTrait((json as List).cast());

  static const id = ShapeId.core('tags');
}

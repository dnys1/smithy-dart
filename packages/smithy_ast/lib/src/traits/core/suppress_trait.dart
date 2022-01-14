import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/string_list_trait.dart';

class SuppressTrait extends StringListTrait {
  const SuppressTrait(List<String> values) : super(id, values);

  factory SuppressTrait.fromJson(Object? json) =>
      SuppressTrait((json as List).cast());

  static const id = ShapeId.core('suppress');
}

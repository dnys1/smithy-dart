import 'package:smithy_ast/smithy_ast.dart';

/// Contains abstract functionality to build traits that contain a list
/// of strings.
abstract class StringListTrait extends Trait<List<String>> {
  const StringListTrait(ShapeId shapeId, List<String> values)
      : super(shapeId, values);
}

import 'package:smithy_ast/smithy_ast.dart';

abstract class StringTrait extends Trait<String> {
  const StringTrait(ShapeId shapeId, String value) : super(shapeId, value);
}

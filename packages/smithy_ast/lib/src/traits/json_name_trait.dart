import 'package:smithy_ast/smithy_ast.dart';

/// Provides a custom name to use when serializing a structure member
/// name as a JSON object property.
class JsonNameTrait extends AnnotationTrait {
  const JsonNameTrait() : super(id);

  const JsonNameTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('jsonName');
}

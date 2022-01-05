import 'package:smithy_ast/smithy_ast.dart';

/// Provides a custom name to use when serializing a structure member
/// name as a XML object property.
class XmlNameTrait extends StringTrait {
  const XmlNameTrait(String value) : super(id, value);

  factory XmlNameTrait.fromJson(Object? json) => XmlNameTrait(json as String);

  static const id = ShapeId.core('xmlName');
}

import 'package:smithy_ast/smithy_ast.dart';

extension ProtocolDefinitionUtils on ProtocolDefinitionTrait {
  /// Whether this is a known JSON protocol.
  bool get isJsonProtocol => traits.contains(JsonNameTrait.id);

  /// Whether this is a known XML protocol.
  bool get isXmlProtocol => traits.contains(XmlNameTrait.id);
}

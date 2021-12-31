import 'package:smithy_ast/smithy_ast.dart';

class DocumentationTrait extends StringTrait {
  const DocumentationTrait(String value) : super(id, value);

  const DocumentationTrait.fromJson(Object? json) : super(id, json as String);

  static const id = ShapeId(namespace: 'smithy.api', name: 'documentation');
}

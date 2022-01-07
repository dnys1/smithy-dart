import 'package:smithy_ast/smithy_ast.dart';

/// Indicates that a structure can be used as an error.
class ErrorTrait extends StringTrait {
  const ErrorTrait(String value) : super(id, value);

  factory ErrorTrait.fromJson(Object? json) => ErrorTrait(json as String);

  static const id = ShapeId.core('error');

  int get defaultHttpStatusCode => isClientError ? 400 : 500;

  bool get isClientError => value == 'client';

  bool get isServerError => value == 'server';
}

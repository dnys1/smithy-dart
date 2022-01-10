import 'package:smithy_ast/smithy_ast.dart';

enum ErrorKind { client, server }

extension ErrorTypeStatusCode on ErrorKind {
  int get defaultStatusCode {
    switch (this) {
      case ErrorKind.client:
        return 400;
      case ErrorKind.server:
        return 500;
    }
  }
}

/// Indicates that a structure can be used as an error.
class ErrorTrait extends StringTrait {
  const ErrorTrait(String value) : super(id, value);

  factory ErrorTrait.fromJson(Object? json) => ErrorTrait(json as String);

  static const id = ShapeId.core('error');

  ErrorKind get type => ErrorKind.values.byName(value);
}

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:http/http.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

mixin AWSJsonProtocol<InputPayload, Input, OutputPayload, Output>
    on AWSHttpProtocol<InputPayload, Input, OutputPayload, Output> {
  /// Error responses in the awsJson1_0 protocol are serialized identically to
  /// standard responses with one additional component to distinguish which
  /// error is contained. New server-side protocol implementations SHOULD use a
  /// body field named __type. The component MUST be one of the following: an
  /// additional header with the name X-Amzn-Errortype, a body field with the
  /// name code, or a body field named __type. The value of this component
  /// SHOULD contain the error's Shape ID.
  @override
  Future<String?> resolveErrorType(AWSStreamedHttpResponse response) async {
    var header = response.headers['X-Amzn-Errortype'];
    if (header != null) {
      return _sanitizeError(header);
    }

    final body = await ByteStream(response.split()).toBytes();
    final json = jsonDecode(utf8.decode(body)) as Map;
    final code = json['code'] as String?;
    if (code != null) {
      return _sanitizeError(code);
    }

    final type = json['__type'] as String?;
    if (type != null) {
      return _sanitizeError(type);
    }
  }

  /// Legacy server-side protocol implementations sometimes include different
  /// information in this value. All client-side implementations SHOULD support
  /// sanitizing the value to retrieve the disambiguated error type using the
  /// following steps:
  /// 1. If a `:` character is present, then take only the contents **before**
  /// the first `:` character in the value.
  /// 2. If a `#` character is present, then take only the contents **after**
  /// the first `#` character in the value.
  ///
  /// All of the following error values resolve to `FooError`:
  ///
  /// - FooError
  /// - FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/
  /// - aws.protocoltests.restjson#FooError
  /// - aws.protocoltests.restjson#FooError:http://internal.amazon.com/coral/com.amazon.coral.validate/
  String _sanitizeError(String errorType) {
    var sanitized = errorType;
    if (sanitized.contains(':')) {
      sanitized = sanitized.substring(0, sanitized.indexOf(':'));
    }
    if (sanitized.contains('#')) {
      sanitized = sanitized.substring(sanitized.indexOf('#') + 1);
    }
    return sanitized;
  }
}
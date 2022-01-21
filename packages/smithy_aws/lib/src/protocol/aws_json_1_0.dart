import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:http/http.dart';
import 'package:smithy/smithy.dart' hide Serializer;
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

class AwsJson1_0Protocol<InputPayload, Input, OutputPayload, Output>
    extends AWSHttpProtocol<InputPayload, Input, OutputPayload, Output> {
  AwsJson1_0Protocol({
    List<HttpInterceptor> interceptors = const [],
    List<SmithySerializer> serializers = const [],
    Map<FullType, Function> builderFactories = const {},
  }) : super(
          _coreSerializers,
          _coreInterceptors,
          serializers: serializers,
          builderFactories: builderFactories,
          interceptors: interceptors,
        );

  static const _coreInterceptors = [
    WithContentLength(),
  ];

  static late final _coreSerializers = (Serializers().toBuilder()
        ..addPlugin(SmithyJsonPlugin())
        ..addAll([
          const DoubleSerializer(),
          const UnitSerializer(),
          const BlobSerializer(),
          TimestampSerializer.epochSeconds,
          BigIntSerializer.asNum,
        ]))
      .build();

  @override
  ShapeId get protocolId => AwsJson1_0Trait.id;

  @override
  String get contentType => 'application/x-amz-json-1.0';

  @override
  late final JsonSerializer wireSerializer = JsonSerializer(serializers);

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

// ignore_for_file: camel_case_types

// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.operation.malformed_enum;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_validation_protocol/common/endpoint_resolver.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_validation_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_validation_protocol/model/malformed_enum_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_validation_protocol/model/validation_exception.dart'
    as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class MalformedEnumOperation extends _i1.HttpOperation<_i2.MalformedEnumInput,
    _i2.MalformedEnumInput, _i1.Unit, _i1.Unit> {
  MalformedEnumOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.MalformedEnumInput, _i2.MalformedEnumInput, _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.MalformedEnumInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/MalformedEnum';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'smithy.framework', shape: 'ValidationException'),
            _i1.ErrorKind.client,
            _i6.ValidationException,
            builder: _i6.ValidationException.fromResponse)
      ];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i7.endpointResolver
      .resolveWithContext(_i7.sdkId, region, context)
      .endpoint;
}

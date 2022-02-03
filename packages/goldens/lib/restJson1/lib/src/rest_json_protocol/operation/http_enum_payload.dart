// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.http_enum_payload;

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/enum_payload_input.dart'
    as _i3;
import 'package:rest_json1/src/rest_json_protocol/model/string_enum.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class HttpEnumPayloadOperation extends _i1.HttpOperation<_i2.StringEnum,
    _i3.EnumPayloadInput, _i2.StringEnum, _i3.EnumPayloadInput> {
  HttpEnumPayloadOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.StringEnum, _i3.EnumPayloadInput, _i2.StringEnum,
          _i3.EnumPayloadInput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  late final _i4.AWSEndpoint _awsEndpoint =
      _i6.endpointResolver.resolve(_i6.sdkId, region);

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i3.EnumPayloadInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/EnumPayload';
      });
  @override
  int successCode([_i3.EnumPayloadInput? output]) => 200;
  @override
  _i3.EnumPayloadInput buildOutput(
          _i2.StringEnum? payload, _i7.AWSStreamedHttpResponse response) =>
      _i3.EnumPayloadInput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i8.Future<_i3.EnumPayloadInput> run(_i3.EnumPayloadInput input,
      {Uri? baseUri, _i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i8.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}

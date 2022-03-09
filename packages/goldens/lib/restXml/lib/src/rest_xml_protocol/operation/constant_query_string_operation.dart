// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.operation.constant_query_string_operation;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/common/serializers.dart' as _i4;
import 'package:rest_xml/src/rest_xml_protocol/model/constant_query_string_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example uses a constant query string parameters and a label.
/// This simply tests that labels and query string parameters are
/// compatible. The fixed query string parameter named "hello" should
/// in no way conflict with the label, `{hello}`.
class ConstantQueryStringOperation extends _i1.HttpOperation<
    _i2.ConstantQueryStringInputPayload,
    _i2.ConstantQueryStringInput,
    _i1.Unit,
    _i1.Unit> {
  /// This example uses a constant query string parameters and a label.
  /// This simply tests that labels and query string parameters are
  /// compatible. The fixed query string parameter named "hello" should
  /// in no way conflict with the label, `{hello}`.
  ConstantQueryStringOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ConstantQueryStringInputPayload,
          _i2.ConstantQueryStringInput, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestXmlProtocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        requestInterceptors: [const _i1.WithContentLength()],
        responseInterceptors: [],
        noErrorWrapping: false)
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i5.endpointResolver.resolve(_i5.sdkId, region);

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.ConstantQueryStringInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/ConstantQueryString/{hello}?foo=bar&hello';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i6.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i1.Unit> run(_i2.ConstantQueryStringInput input,
      {Uri? baseUri, _i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}
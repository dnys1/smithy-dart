// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.operation.xml_empty_blobs_operation;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/common/serializers.dart' as _i4;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_blobs_input_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:uuid/uuid.dart' as _i8;

/// Blobs are base64 encoded
class XmlEmptyBlobsOperation extends _i1.HttpOperation<_i2.XmlBlobsInputOutput,
    _i2.XmlBlobsInputOutput, _i2.XmlBlobsInputOutput, _i2.XmlBlobsInputOutput> {
  /// Blobs are base64 encoded
  XmlEmptyBlobsOperation({required String region, Uri? baseUri})
      : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.XmlBlobsInputOutput, _i2.XmlBlobsInputOutput,
          _i2.XmlBlobsInputOutput, _i2.XmlBlobsInputOutput>> protocols = [
    _i3.RestXmlProtocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        requestInterceptors: [
          const _i1.WithContentLength(),
          const _i3.WithSdkInvocationId(),
          const _i3.WithSdkRequest()
        ],
        responseInterceptors: [],
        noErrorWrapping: false)
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i5.endpointResolver.resolve(_i5.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.XmlBlobsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/XmlEmptyBlobs';
      });
  @override
  int successCode([_i2.XmlBlobsInputOutput? output]) => 200;
  @override
  _i2.XmlBlobsInputOutput buildOutput(_i2.XmlBlobsInputOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i2.XmlBlobsInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i2.XmlBlobsInputOutput> run(_i2.XmlBlobsInputOutput input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i6.AWSHeaders.sdkInvocationId: const _i8.Uuid().v4()}
        });
  }
}

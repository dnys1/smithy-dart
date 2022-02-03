// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.operation.xml_attributes;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/common/serializers.dart' as _i4;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_attributes_input_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example serializes an XML attributes on synthesized document.
class XmlAttributesOperation extends _i1.HttpOperation<
    _i2.XmlAttributesInputOutput,
    _i2.XmlAttributesInputOutput,
    _i2.XmlAttributesInputOutput,
    _i2.XmlAttributesInputOutput> {
  /// This example serializes an XML attributes on synthesized document.
  XmlAttributesOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.XmlAttributesInputOutput,
          _i2.XmlAttributesInputOutput,
          _i2.XmlAttributesInputOutput,
          _i2.XmlAttributesInputOutput>> protocols = [
    _i3.RestXmlProtocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [const _i1.WithContentLength()],
        noErrorWrapping: false)
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i5.endpointResolver.resolve(_i5.sdkId, region);

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.XmlAttributesInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/XmlAttributes';
      });
  @override
  int successCode([_i2.XmlAttributesInputOutput? output]) => 200;
  @override
  _i2.XmlAttributesInputOutput buildOutput(_i2.XmlAttributesInputOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i2.XmlAttributesInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i2.XmlAttributesInputOutput> run(
      _i2.XmlAttributesInputOutput input,
      {Uri? baseUri,
      _i1.HttpClient? client,
      _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}

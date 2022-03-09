// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.operation.flattened_xml_map_with_xml_namespace_operation;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/common/serializers.dart' as _i4;
import 'package:rest_xml/src/rest_xml_protocol/model/flattened_xml_map_with_xml_namespace_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Flattened maps with @xmlNamespace and @xmlName
class FlattenedXmlMapWithXmlNamespaceOperation extends _i1.HttpOperation<
    _i1.Unit,
    _i1.Unit,
    _i2.FlattenedXmlMapWithXmlNamespaceOutput,
    _i2.FlattenedXmlMapWithXmlNamespaceOutput> {
  /// Flattened maps with @xmlNamespace and @xmlName
  FlattenedXmlMapWithXmlNamespaceOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i2.FlattenedXmlMapWithXmlNamespaceOutput,
          _i2.FlattenedXmlMapWithXmlNamespaceOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/FlattenedXmlMapWithXmlNamespace';
      });
  @override
  int successCode([_i2.FlattenedXmlMapWithXmlNamespaceOutput? output]) => 200;
  @override
  _i2.FlattenedXmlMapWithXmlNamespaceOutput buildOutput(
          _i2.FlattenedXmlMapWithXmlNamespaceOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i2.FlattenedXmlMapWithXmlNamespaceOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i2.FlattenedXmlMapWithXmlNamespaceOutput> run(_i1.Unit input,
      {Uri? baseUri, _i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}
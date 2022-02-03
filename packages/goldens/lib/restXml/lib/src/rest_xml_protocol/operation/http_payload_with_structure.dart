// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.operation.http_payload_with_structure;

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_xml/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i6;
import 'package:rest_xml/src/rest_xml_protocol/common/serializers.dart' as _i5;
import 'package:rest_xml/src/rest_xml_protocol/model/http_payload_with_structure_input_output.dart'
    as _i3;
import 'package:rest_xml/src/rest_xml_protocol/model/nested_payload.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples serializes a structure in the payload.
///
/// Note that serializing a structure changes the wrapper element name
/// to match the targeted structure.
class HttpPayloadWithStructureOperation extends _i1.HttpOperation<
    _i2.NestedPayload,
    _i3.HttpPayloadWithStructureInputOutput,
    _i2.NestedPayload,
    _i3.HttpPayloadWithStructureInputOutput> {
  /// This examples serializes a structure in the payload.
  ///
  /// Note that serializing a structure changes the wrapper element name
  /// to match the targeted structure.
  HttpPayloadWithStructureOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.NestedPayload,
          _i3.HttpPayloadWithStructureInputOutput,
          _i2.NestedPayload,
          _i3.HttpPayloadWithStructureInputOutput>> protocols = [
    _i4.RestXmlProtocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [const _i1.WithContentLength()],
        noErrorWrapping: false)
  ];

  late final _i4.AWSEndpoint _awsEndpoint =
      _i6.endpointResolver.resolve(_i6.sdkId, region);

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i3.HttpPayloadWithStructureInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/HttpPayloadWithStructure';
      });
  @override
  int successCode([_i3.HttpPayloadWithStructureInputOutput? output]) => 200;
  @override
  _i3.HttpPayloadWithStructureInputOutput buildOutput(
          _i2.NestedPayload? payload, _i7.AWSStreamedHttpResponse response) =>
      _i3.HttpPayloadWithStructureInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i8.Future<_i3.HttpPayloadWithStructureInputOutput> run(
      _i3.HttpPayloadWithStructureInputOutput input,
      {Uri? baseUri,
      _i1.HttpClient? client,
      _i1.ShapeId? useProtocol}) {
    return _i8.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}

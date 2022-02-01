// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.operation.null_and_empty_headers_client;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/common/serializers.dart' as _i4;
import 'package:rest_xml/src/rest_xml_protocol/model/null_and_empty_headers_io.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Null and empty headers are not sent over the wire.
class NullAndEmptyHeadersClientOperation extends _i1.HttpOperation<
    _i2.NullAndEmptyHeadersIoPayload,
    _i2.NullAndEmptyHeadersIo,
    _i2.NullAndEmptyHeadersIoPayload,
    _i2.NullAndEmptyHeadersIo> {
  /// Null and empty headers are not sent over the wire.
  NullAndEmptyHeadersClientOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.NullAndEmptyHeadersIoPayload,
          _i2.NullAndEmptyHeadersIo,
          _i2.NullAndEmptyHeadersIoPayload,
          _i2.NullAndEmptyHeadersIo>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.NullAndEmptyHeadersIo input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/NullAndEmptyHeadersClient';
        if (input.a != null) {
          if (input.a!.isNotEmpty) {
            b.headers['X-A'] = input.a!;
          }
        }
        if (input.b != null) {
          if (input.b!.isNotEmpty) {
            b.headers['X-B'] = input.b!;
          }
        }
        if (input.c != null) {
          if (input.c!.isNotEmpty) {
            b.headers['X-C'] =
                input.c!.map((el) => _i1.sanitizeHeader(el)).join(', ');
          }
        }
      });
  @override
  int successCode([_i2.NullAndEmptyHeadersIo? output]) => 200;
  @override
  _i2.NullAndEmptyHeadersIo buildOutput(
          _i2.NullAndEmptyHeadersIoPayload payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i2.NullAndEmptyHeadersIo.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i2.NullAndEmptyHeadersIo> run(_i2.NullAndEmptyHeadersIo input,
      {Uri? baseUri, _i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}
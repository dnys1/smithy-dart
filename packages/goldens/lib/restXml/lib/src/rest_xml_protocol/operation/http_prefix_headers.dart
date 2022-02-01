// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.operation.http_prefix_headers;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/common/serializers.dart' as _i4;
import 'package:rest_xml/src/rest_xml_protocol/model/http_prefix_headers_input_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This examples adds headers to the input of a request and response by prefix.///
/// See also:
/// - [httpPrefixHeaders Trait](https://awslabs.github.io/smithy/1.0/spec/http.html#httpprefixheaders-trait)

class HttpPrefixHeadersOperation extends _i1.HttpOperation<
    _i2.HttpPrefixHeadersInputOutputPayload,
    _i2.HttpPrefixHeadersInputOutput,
    _i2.HttpPrefixHeadersInputOutputPayload,
    _i2.HttpPrefixHeadersInputOutput> {
  /// This examples adds headers to the input of a request and response by prefix.///
  /// See also:
  /// - [httpPrefixHeaders Trait](https://awslabs.github.io/smithy/1.0/spec/http.html#httpprefixheaders-trait)

  HttpPrefixHeadersOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpPrefixHeadersInputOutputPayload,
          _i2.HttpPrefixHeadersInputOutput,
          _i2.HttpPrefixHeadersInputOutputPayload,
          _i2.HttpPrefixHeadersInputOutput>> protocols = [
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
  _i1.HttpRequest buildRequest(_i2.HttpPrefixHeadersInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/HttpPrefixHeaders';
        if (input.foo != null) {
          if (input.foo!.isNotEmpty) {
            b.headers['X-Foo'] = input.foo!;
          }
        }
        if (input.fooMap != null) {
          for (var entry in input.fooMap!.toMap().entries) {
            if (entry.value.isNotEmpty) {
              b.headers['X-Foo-' + entry.key] = entry.value;
            }
          }
        }
      });
  @override
  int successCode([_i2.HttpPrefixHeadersInputOutput? output]) => 200;
  @override
  _i2.HttpPrefixHeadersInputOutput buildOutput(
          _i2.HttpPrefixHeadersInputOutputPayload payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i2.HttpPrefixHeadersInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i2.HttpPrefixHeadersInputOutput> run(
      _i2.HttpPrefixHeadersInputOutput input,
      {Uri? baseUri,
      _i1.HttpClient? client,
      _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}
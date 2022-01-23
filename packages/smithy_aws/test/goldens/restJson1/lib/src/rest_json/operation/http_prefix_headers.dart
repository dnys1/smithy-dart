// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_prefix_headers;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples adds headers to the input of a request and response by prefix.
class HttpPrefixHeadersOperation extends _i1.HttpOperation<
    _i2.HttpPrefixHeadersInputPayload,
    _i2.HttpPrefixHeadersInput,
    _i3.HttpPrefixHeadersOutputPayload,
    _i3.HttpPrefixHeadersOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpPrefixHeadersInputPayload,
          _i2.HttpPrefixHeadersInput,
          _i3.HttpPrefixHeadersOutputPayload,
          _i3.HttpPrefixHeadersOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoContentLength(),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.HttpPrefixHeadersInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/HttpPrefixHeaders';
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
  int successCode([_i3.HttpPrefixHeadersOutput? output]) => 200;
  @override
  _i3.HttpPrefixHeadersOutput buildOutput(
          _i3.HttpPrefixHeadersOutputPayload payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.HttpPrefixHeadersOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
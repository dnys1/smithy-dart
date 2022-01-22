// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.http_prefix_headers_in_response;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_in_response_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/model/http_prefix_headers_in_response_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// Clients that perform this test extract all headers from the response.
class HttpPrefixHeadersInResponseOperation extends _i1.HttpOperation<
    _i2.HttpPrefixHeadersInResponseInput,
    _i2.HttpPrefixHeadersInResponseInput,
    _i3.HttpPrefixHeadersInResponseOutputPayload,
    _i3.HttpPrefixHeadersInResponseOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.HttpPrefixHeadersInResponseInput,
          _i2.HttpPrefixHeadersInResponseInput,
          _i3.HttpPrefixHeadersInResponseOutputPayload,
          _i3.HttpPrefixHeadersInResponseOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.HttpPrefixHeadersInResponseInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/HttpPrefixHeadersResponse';
        b.successCode = 200;
      });
  @override
  _i3.HttpPrefixHeadersInResponseOutput buildOutput(
          _i3.HttpPrefixHeadersInResponseOutputPayload payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.HttpPrefixHeadersInResponseOutput((b) {
        b.prefixHeaders.addEntries(response.headers.entries);
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}

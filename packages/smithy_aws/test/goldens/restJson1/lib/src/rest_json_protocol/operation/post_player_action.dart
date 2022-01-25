// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.post_player_action;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/post_player_action_input.dart'
    as _i2;
import 'package:rest_json1/src/rest_json_protocol/model/post_player_action_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This operation defines a union with a Unit member.
class PostPlayerActionOperation extends _i1.HttpOperation<
    _i2.PostPlayerActionInput,
    _i2.PostPlayerActionInput,
    _i3.PostPlayerActionOutput,
    _i3.PostPlayerActionOutput> {
  PostPlayerActionOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PostPlayerActionInput, _i2.PostPlayerActionInput,
          _i3.PostPlayerActionOutput, _i3.PostPlayerActionOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.PostPlayerActionInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/PostPlayerAction';
      });
  @override
  int successCode([_i3.PostPlayerActionOutput? output]) => 200;
  @override
  _i3.PostPlayerActionOutput buildOutput(_i3.PostPlayerActionOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.PostPlayerActionOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i7.endpointResolver
      .resolveWithContext(_i7.sdkId, region, context)
      .endpoint;
}

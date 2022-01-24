// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.streaming_traits_with_media_type;

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/streaming_traits_with_media_type_input_output.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// This examples serializes a streaming media-typed blob shape in the request body.
///
/// This examples uses a `@mediaType` trait on the payload to force a custom
/// content-type to be serialized.
class StreamingTraitsWithMediaTypeOperation extends _i1.HttpOperation<
    _i2.Stream<List<int>>,
    _i3.StreamingTraitsWithMediaTypeInputOutput,
    _i2.Stream<List<int>>,
    _i3.StreamingTraitsWithMediaTypeInputOutput> {
  StreamingTraitsWithMediaTypeOperation({required this.region});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.Stream<List<int>>,
          _i3.StreamingTraitsWithMediaTypeInputOutput,
          _i2.Stream<List<int>>,
          _i3.StreamingTraitsWithMediaTypeInputOutput>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [_i4.WithEndpointResolver('Rest Json Protocol', region)],
        mediaType: 'text/plain')
  ];

  final String region;

  @override
  _i1.HttpRequest buildRequest(
          _i3.StreamingTraitsWithMediaTypeInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/StreamingTraitsWithMediaType';
        if (input.foo != null) {
          if (input.foo!.isNotEmpty) {
            b.headers['X-Foo'] = input.foo!;
          }
        }
      });
  @override
  int successCode([_i3.StreamingTraitsWithMediaTypeInputOutput? output]) => 200;
  @override
  _i3.StreamingTraitsWithMediaTypeInputOutput buildOutput(
          _i2.Stream<List<int>>? payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i3.StreamingTraitsWithMediaTypeInputOutput.fromResponse(
          payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}

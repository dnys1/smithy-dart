// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library generic_json.generic_json.operation.event_stream_operation;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:generic_json/src/generic_json/common/serializers.dart' as _i4;
import 'package:generic_json/src/generic_json/model/event.dart' as _i2;
import 'package:generic_json/src/generic_json/model/event_stream_input_output.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

class EventStreamOperation extends _i1.WebSocketOperation<_i2.Event,
    _i3.EventStreamInputOutput, _i2.Event, _i3.EventStreamInputOutput> {
  EventStreamOperation({required this.baseUri});

  @override
  late final List<
      _i1.HttpProtocol<_i2.Event, _i3.EventStreamInputOutput, _i2.Event,
          _i3.EventStreamInputOutput>> protocols = [
    _i1.GenericJsonProtocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        requestInterceptors: [const _i1.WithContentLength()],
        responseInterceptors: [])
  ];

  @override
  final Uri baseUri;

  @override
  _i1.HttpRequest buildRequest(_i3.EventStreamInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/ws';
      });
  @override
  int successCode([_i3.EventStreamInputOutput? output]) => 200;
  @override
  _i3.EventStreamInputOutput buildOutput(
          _i2.Event? payload, _i5.AWSStreamedHttpResponse response) =>
      _i3.EventStreamInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}

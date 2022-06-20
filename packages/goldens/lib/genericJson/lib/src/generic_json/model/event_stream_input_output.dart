// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library generic_json.generic_json.model.event_stream_input_output;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:generic_json/src/generic_json/model/event.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'event_stream_input_output.g.dart';

abstract class EventStreamInputOutput
    with _i1.HttpInput<_i2.Event>, _i3.AWSEquatable<EventStreamInputOutput>
    implements
        Built<EventStreamInputOutput, EventStreamInputOutputBuilder>,
        _i1.HasPayload<_i2.Event> {
  factory EventStreamInputOutput({_i2.Event? event}) {
    return _$EventStreamInputOutput._(event: event);
  }

  factory EventStreamInputOutput.build(
          [void Function(EventStreamInputOutputBuilder) updates]) =
      _$EventStreamInputOutput;

  const EventStreamInputOutput._();

  factory EventStreamInputOutput.fromRequest(
          _i2.Event? payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      EventStreamInputOutput.build((b) {
        b.event = payload;
      });

  /// Constructs a [EventStreamInputOutput] from a [payload] and [response].
  factory EventStreamInputOutput.fromResponse(
          _i2.Event? payload, _i3.AWSBaseHttpResponse response) =>
      EventStreamInputOutput.build((b) {
        b.event = payload;
      });

  static const List<_i1.SmithySerializer> serializers = [];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventStreamInputOutputBuilder b) {}
  _i2.Event? get event;
  @override
  _i2.Event? getPayload() => event;
  @override
  List<Object?> get props => [event];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventStreamInputOutput');
    helper.add('event', event);
    return helper.toString();
  }
}

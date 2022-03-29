// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.greeting_with_errors_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'greeting_with_errors_output.g.dart';

abstract class GreetingWithErrorsOutput
    with _i1.AWSEquatable<GreetingWithErrorsOutput>
    implements
        Built<GreetingWithErrorsOutput, GreetingWithErrorsOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<GreetingWithErrorsOutputPayload> {
  factory GreetingWithErrorsOutput(
          [void Function(GreetingWithErrorsOutputBuilder) updates]) =
      _$GreetingWithErrorsOutput;

  const GreetingWithErrorsOutput._();

  /// Constructs a [GreetingWithErrorsOutput] from a [payload] and [response].
  factory GreetingWithErrorsOutput.fromResponse(
          GreetingWithErrorsOutputPayload payload,
          _i1.AWSBaseHttpResponse response) =>
      GreetingWithErrorsOutput((b) {
        if (response.headers['X-Greeting'] != null) {
          b.greeting = response.headers['X-Greeting']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    _GreetingWithErrorsOutputRestXmlSerializer()
  ];

  String? get greeting;
  @override
  GreetingWithErrorsOutputPayload getPayload() =>
      GreetingWithErrorsOutputPayload();
  @override
  List<Object?> get props => [greeting];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GreetingWithErrorsOutput');
    helper.add('greeting', greeting);
    return helper.toString();
  }
}

@_i3.internal
abstract class GreetingWithErrorsOutputPayload
    with
        _i1.AWSEquatable<GreetingWithErrorsOutputPayload>
    implements
        Built<GreetingWithErrorsOutputPayload,
            GreetingWithErrorsOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory GreetingWithErrorsOutputPayload(
          [void Function(GreetingWithErrorsOutputPayloadBuilder) updates]) =
      _$GreetingWithErrorsOutputPayload;

  const GreetingWithErrorsOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GreetingWithErrorsOutputPayload');
    return helper.toString();
  }
}

class _GreetingWithErrorsOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<GreetingWithErrorsOutputPayload> {
  const _GreetingWithErrorsOutputRestXmlSerializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [
        GreetingWithErrorsOutput,
        _$GreetingWithErrorsOutput,
        GreetingWithErrorsOutputPayload,
        _$GreetingWithErrorsOutputPayload
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  GreetingWithErrorsOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GreetingWithErrorsOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[_i2.XmlElementName('GreetingWithErrorsOutput')];
    return result;
  }
}

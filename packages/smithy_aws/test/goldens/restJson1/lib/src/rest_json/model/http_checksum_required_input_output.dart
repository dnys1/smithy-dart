// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_checksum_required_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_checksum_required_input_output.g.dart';

abstract class HttpChecksumRequiredInputOutput
    with
        _i1.HttpInput<HttpChecksumRequiredInputOutput>,
        _i2.AWSEquatable<HttpChecksumRequiredInputOutput>
    implements
        Built<HttpChecksumRequiredInputOutput,
            HttpChecksumRequiredInputOutputBuilder> {
  factory HttpChecksumRequiredInputOutput(
          [void Function(HttpChecksumRequiredInputOutputBuilder) updates]) =
      _$HttpChecksumRequiredInputOutput;

  const HttpChecksumRequiredInputOutput._();

  factory HttpChecksumRequiredInputOutput.fromResponse(
          HttpChecksumRequiredInputOutput payload,
          _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _HttpChecksumRequiredInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpChecksumRequiredInputOutputBuilder b) {}
  String? get foo;
  @override
  HttpChecksumRequiredInputOutput getPayload() => this;
  @override
  List<Object?> get props => [foo];
}

class _HttpChecksumRequiredInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HttpChecksumRequiredInputOutput> {
  const _HttpChecksumRequiredInputOutputRestJson1Serializer()
      : super('HttpChecksumRequiredInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpChecksumRequiredInputOutput,
        _$HttpChecksumRequiredInputOutput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpChecksumRequiredInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = HttpChecksumRequiredInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as HttpChecksumRequiredInputOutput);
    final result = <Object?>[];
    if (payload.foo != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(payload.foo,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}

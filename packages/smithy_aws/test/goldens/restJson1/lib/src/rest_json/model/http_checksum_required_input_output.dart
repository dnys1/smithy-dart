// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.http_checksum_required_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'http_checksum_required_input_output.g.dart';

abstract class HttpChecksumRequiredInputOutput
    with
        _i1.HttpInput<HttpChecksumRequiredInputOutputPayload>
    implements
        Built<HttpChecksumRequiredInputOutput,
            HttpChecksumRequiredInputOutputBuilder>,
        _i1.HasPayload<HttpChecksumRequiredInputOutputPayload> {
  factory HttpChecksumRequiredInputOutput(
          [void Function(HttpChecksumRequiredInputOutputBuilder) updates]) =
      _$HttpChecksumRequiredInputOutput;

  const HttpChecksumRequiredInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _HttpChecksumRequiredInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpChecksumRequiredInputOutputBuilder b) {}
  String? get foo;
  @override
  HttpChecksumRequiredInputOutputPayload getPayload() =>
      HttpChecksumRequiredInputOutputPayload((b) => b..foo = foo);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class HttpChecksumRequiredInputOutputPayload
    implements
        Built<HttpChecksumRequiredInputOutputPayload,
            HttpChecksumRequiredInputOutputPayloadBuilder> {
  factory HttpChecksumRequiredInputOutputPayload(
      [void Function(HttpChecksumRequiredInputOutputPayloadBuilder)
          updates]) = _$HttpChecksumRequiredInputOutputPayload;

  const HttpChecksumRequiredInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpChecksumRequiredInputOutputPayloadBuilder b) {}
  String? get foo;
}

class _HttpChecksumRequiredInputOutputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<HttpChecksumRequiredInputOutputPayload> {
  const _HttpChecksumRequiredInputOutputRestJson1Serializer()
      : super('HttpChecksumRequiredInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpChecksumRequiredInputOutput,
        _$HttpChecksumRequiredInputOutput,
        HttpChecksumRequiredInputOutputPayload,
        _$HttpChecksumRequiredInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpChecksumRequiredInputOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = HttpChecksumRequiredInputOutputPayloadBuilder();
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
    final payload = object is HttpChecksumRequiredInputOutput
        ? object.getPayload()
        : (object as HttpChecksumRequiredInputOutputPayload);
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

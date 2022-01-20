// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.json_unions_input;

import 'package:aws_json1_0/src/json_rpc10/model/my_union.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'json_unions_input.g.dart';

abstract class JsonUnionsInput
    with _i1.HttpInput<JsonUnionsInputPayload>
    implements
        Built<JsonUnionsInput, JsonUnionsInputBuilder>,
        _i1.HasPayload<JsonUnionsInputPayload> {
  factory JsonUnionsInput([void Function(JsonUnionsInputBuilder) updates]) =
      _$JsonUnionsInput;

  const JsonUnionsInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _JsonUnionsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonUnionsInputBuilder b) {}
  _i2.MyUnion? get contents;
  @override
  JsonUnionsInputPayload getPayload() =>
      JsonUnionsInputPayload((b) => b..contents = contents);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class JsonUnionsInputPayload
    implements Built<JsonUnionsInputPayload, JsonUnionsInputPayloadBuilder> {
  factory JsonUnionsInputPayload(
          [void Function(JsonUnionsInputPayloadBuilder) updates]) =
      _$JsonUnionsInputPayload;

  const JsonUnionsInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonUnionsInputPayloadBuilder b) {}
  _i2.MyUnion? get contents;
}

class _JsonUnionsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<JsonUnionsInput> {
  const _JsonUnionsInputAwsJson10Serializer() : super('JsonUnionsInput');

  @override
  Iterable<Type> get types => const [
        JsonUnionsInput,
        _$JsonUnionsInput,
        JsonUnionsInputPayload,
        _$JsonUnionsInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  JsonUnionsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = JsonUnionsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'contents':
          result.contents = (serializers.deserialize(value,
              specifiedType: const FullType(_i2.MyUnion)) as _i2.MyUnion?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as JsonUnionsInput);
    final result = <Object?>[];
    if (payload.contents != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(payload.contents,
            specifiedType: const FullType(_i2.MyUnion)));
    }
    return result;
  }
}

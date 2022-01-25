// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.model.json_unions_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_json1_0/src/json_rpc_10/model/my_union.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'json_unions_input.g.dart';

abstract class JsonUnionsInput
    with _i1.HttpInput<JsonUnionsInput>, _i2.AWSEquatable<JsonUnionsInput>
    implements Built<JsonUnionsInput, JsonUnionsInputBuilder> {
  factory JsonUnionsInput([void Function(JsonUnionsInputBuilder) updates]) =
      _$JsonUnionsInput;

  const JsonUnionsInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _JsonUnionsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonUnionsInputBuilder b) {}
  _i3.MyUnion? get contents;
  @override
  JsonUnionsInput getPayload() => this;
  @override
  List<Object?> get props => [contents];
}

class _JsonUnionsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<JsonUnionsInput> {
  const _JsonUnionsInputAwsJson10Serializer() : super('JsonUnionsInput');

  @override
  Iterable<Type> get types => const [JsonUnionsInput, _$JsonUnionsInput];
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
      final value = iterator.current;
      switch (key) {
        case 'contents':
          if (value != null) {
            result.contents = (serializers.deserialize(value,
                specifiedType: const FullType(_i3.MyUnion)) as _i3.MyUnion);
          }
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
            specifiedType: const FullType.nullable(_i3.MyUnion)));
    }
    return result;
  }
}
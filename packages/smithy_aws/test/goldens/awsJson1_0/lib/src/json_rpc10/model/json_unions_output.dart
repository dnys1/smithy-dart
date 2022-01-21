// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.json_unions_output;

import 'package:aws_json1_0/src/json_rpc10/model/my_union.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'json_unions_output.g.dart';

abstract class JsonUnionsOutput
    implements
        Built<JsonUnionsOutput, JsonUnionsOutputBuilder>,
        _i1.HasPayload<JsonUnionsOutputPayload> {
  factory JsonUnionsOutput([void Function(JsonUnionsOutputBuilder) updates]) =
      _$JsonUnionsOutput;

  const JsonUnionsOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _JsonUnionsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonUnionsOutputBuilder b) {}
  _i2.MyUnion? get contents;
  @override
  JsonUnionsOutputPayload getPayload() =>
      JsonUnionsOutputPayload((b) => b..contents = contents);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class JsonUnionsOutputPayload
    implements Built<JsonUnionsOutputPayload, JsonUnionsOutputPayloadBuilder> {
  factory JsonUnionsOutputPayload(
          [void Function(JsonUnionsOutputPayloadBuilder) updates]) =
      _$JsonUnionsOutputPayload;

  const JsonUnionsOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonUnionsOutputPayloadBuilder b) {}
  _i2.MyUnion? get contents;
}

class _JsonUnionsOutputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<JsonUnionsOutput> {
  const _JsonUnionsOutputAwsJson10Serializer() : super('JsonUnionsOutput');

  @override
  Iterable<Type> get types => const [
        JsonUnionsOutput,
        _$JsonUnionsOutput,
        JsonUnionsOutputPayload,
        _$JsonUnionsOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  JsonUnionsOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = JsonUnionsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'contents':
          if (value != null) {
            result.contents = (serializers.deserialize(value,
                specifiedType: const FullType(_i2.MyUnion)) as _i2.MyUnion);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as JsonUnionsOutput);
    final result = <Object?>[];
    if (payload.contents != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(payload.contents,
            specifiedType: FullType.nullable(_i2.MyUnion)));
    }
    return result;
  }
}

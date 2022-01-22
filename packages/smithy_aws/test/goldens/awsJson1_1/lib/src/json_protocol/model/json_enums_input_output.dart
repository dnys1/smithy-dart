// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.json_enums_input_output;

import 'package:aws_json1_1/src/json_protocol/model/foo_enum.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'json_enums_input_output.g.dart';

abstract class JsonEnumsInputOutput
    with _i1.HttpInput<JsonEnumsInputOutput>
    implements Built<JsonEnumsInputOutput, JsonEnumsInputOutputBuilder> {
  factory JsonEnumsInputOutput(
          [void Function(JsonEnumsInputOutputBuilder) updates]) =
      _$JsonEnumsInputOutput;

  const JsonEnumsInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _JsonEnumsInputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonEnumsInputOutputBuilder b) {}
  _i2.FooEnum? get fooEnum1;
  _i2.FooEnum? get fooEnum2;
  _i2.FooEnum? get fooEnum3;
  _i3.BuiltList<_i2.FooEnum>? get fooEnumList;
  _i3.BuiltMap<String, _i2.FooEnum>? get fooEnumMap;
  _i3.BuiltSet<_i2.FooEnum>? get fooEnumSet;
}

class _JsonEnumsInputOutputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<JsonEnumsInputOutput> {
  const _JsonEnumsInputOutputAwsJson11Serializer()
      : super('JsonEnumsInputOutput');

  @override
  Iterable<Type> get types =>
      const [JsonEnumsInputOutput, _$JsonEnumsInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  JsonEnumsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = JsonEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'fooEnum1':
          if (value != null) {
            result.fooEnum1 = (serializers.deserialize(value,
                specifiedType: const FullType(_i2.FooEnum)) as _i2.FooEnum);
          }
          break;
        case 'fooEnum2':
          if (value != null) {
            result.fooEnum2 = (serializers.deserialize(value,
                specifiedType: const FullType(_i2.FooEnum)) as _i2.FooEnum);
          }
          break;
        case 'fooEnum3':
          if (value != null) {
            result.fooEnum3 = (serializers.deserialize(value,
                specifiedType: const FullType(_i2.FooEnum)) as _i2.FooEnum);
          }
          break;
        case 'fooEnumList':
          if (value != null) {
            result.fooEnumList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(_i2.FooEnum)]))
                as _i3.BuiltList<_i2.FooEnum>));
          }
          break;
        case 'fooEnumMap':
          if (value != null) {
            result.fooEnumMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.BuiltMap, [
                  FullType(String),
                  FullType(_i2.FooEnum)
                ])) as _i3.BuiltMap<String, _i2.FooEnum>));
          }
          break;
        case 'fooEnumSet':
          if (value != null) {
            result.fooEnumSet.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltSet, [FullType(_i2.FooEnum)]))
                as _i3.BuiltSet<_i2.FooEnum>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as JsonEnumsInputOutput);
    final result = <Object?>[];
    if (payload.fooEnum1 != null) {
      result
        ..add('fooEnum1')
        ..add(serializers.serialize(payload.fooEnum1,
            specifiedType: const FullType.nullable(_i2.FooEnum)));
    }
    if (payload.fooEnum2 != null) {
      result
        ..add('fooEnum2')
        ..add(serializers.serialize(payload.fooEnum2,
            specifiedType: const FullType.nullable(_i2.FooEnum)));
    }
    if (payload.fooEnum3 != null) {
      result
        ..add('fooEnum3')
        ..add(serializers.serialize(payload.fooEnum3,
            specifiedType: const FullType.nullable(_i2.FooEnum)));
    }
    if (payload.fooEnumList != null) {
      result
        ..add('fooEnumList')
        ..add(serializers.serialize(payload.fooEnumList,
            specifiedType: const FullType.nullable(
                _i3.BuiltList, [FullType(_i2.FooEnum)])));
    }
    if (payload.fooEnumMap != null) {
      result
        ..add('fooEnumMap')
        ..add(serializers.serialize(payload.fooEnumMap,
            specifiedType: const FullType.nullable(
                _i3.BuiltMap, [FullType(String), FullType(_i2.FooEnum)])));
    }
    if (payload.fooEnumSet != null) {
      result
        ..add('fooEnumSet')
        ..add(serializers.serialize(payload.fooEnumSet,
            specifiedType: const FullType.nullable(
                _i3.BuiltSet, [FullType(_i2.FooEnum)])));
    }
    return result;
  }
}

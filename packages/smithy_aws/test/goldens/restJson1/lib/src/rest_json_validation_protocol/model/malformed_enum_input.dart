// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.model.malformed_enum_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_validation_protocol/model/enum_string.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_validation_protocol/model/enum_union.dart'
    as _i5;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_enum_input.g.dart';

abstract class MalformedEnumInput
    with _i1.HttpInput<MalformedEnumInput>, _i2.AWSEquatable<MalformedEnumInput>
    implements Built<MalformedEnumInput, MalformedEnumInputBuilder> {
  factory MalformedEnumInput(
          [void Function(MalformedEnumInputBuilder) updates]) =
      _$MalformedEnumInput;

  const MalformedEnumInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedEnumInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedEnumInputBuilder b) {}
  _i3.BuiltList<_i4.EnumString>? get list;
  _i3.BuiltMap<_i4.EnumString, _i4.EnumString>? get map;
  _i4.EnumString? get string;
  _i5.EnumUnion? get union;
  @override
  MalformedEnumInput getPayload() => this;
  @override
  List<Object?> get props => [list, map, string, union];
}

class _MalformedEnumInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedEnumInput> {
  const _MalformedEnumInputRestJson1Serializer() : super('MalformedEnumInput');

  @override
  Iterable<Type> get types => const [MalformedEnumInput, _$MalformedEnumInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedEnumInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedEnumInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'list':
          if (value != null) {
            result.list.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i3.BuiltList, [FullType(_i4.EnumString)]))
                as _i3.BuiltList<_i4.EnumString>));
          }
          break;
        case 'map':
          if (value != null) {
            result.map.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.BuiltMap, [
                  FullType(_i4.EnumString),
                  FullType(_i4.EnumString)
                ])) as _i3.BuiltMap<_i4.EnumString, _i4.EnumString>));
          }
          break;
        case 'string':
          if (value != null) {
            result.string = (serializers.deserialize(value,
                    specifiedType: const FullType(_i4.EnumString))
                as _i4.EnumString);
          }
          break;
        case 'union':
          if (value != null) {
            result.union = (serializers.deserialize(value,
                specifiedType: const FullType(_i5.EnumUnion)) as _i5.EnumUnion);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedEnumInput);
    final result = <Object?>[];
    if (payload.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(payload.list,
            specifiedType: const FullType.nullable(
                _i3.BuiltList, [FullType(_i4.EnumString)])));
    }
    if (payload.map != null) {
      result
        ..add('map')
        ..add(serializers.serialize(payload.map,
            specifiedType: const FullType.nullable(_i3.BuiltMap,
                [FullType(_i4.EnumString), FullType(_i4.EnumString)])));
    }
    if (payload.string != null) {
      result
        ..add('string')
        ..add(serializers.serialize(payload.string,
            specifiedType: const FullType.nullable(_i4.EnumString)));
    }
    if (payload.union != null) {
      result
        ..add('union')
        ..add(serializers.serialize(payload.union,
            specifiedType: const FullType.nullable(_i5.EnumUnion)));
    }
    return result;
  }
}

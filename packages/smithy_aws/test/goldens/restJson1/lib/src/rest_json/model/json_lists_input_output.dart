// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.json_lists_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/foo_enum.dart' as _i4;
import 'package:rest_json1/src/rest_json/model/structure_list_member.dart'
    as _i5;
import 'package:smithy/smithy.dart' as _i1;

part 'json_lists_input_output.g.dart';

abstract class JsonListsInputOutput
    with
        _i1.HttpInput<JsonListsInputOutput>,
        _i2.AWSEquatable<JsonListsInputOutput>
    implements Built<JsonListsInputOutput, JsonListsInputOutputBuilder> {
  factory JsonListsInputOutput(
          [void Function(JsonListsInputOutputBuilder) updates]) =
      _$JsonListsInputOutput;

  const JsonListsInputOutput._();

  factory JsonListsInputOutput.fromResponse(
          JsonListsInputOutput payload, _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _JsonListsInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonListsInputOutputBuilder b) {}
  _i3.BuiltList<bool>? get booleanList;
  _i3.BuiltList<_i4.FooEnum>? get enumList;
  _i3.BuiltList<int>? get integerList;
  _i3.BuiltList<_i3.BuiltList<String>>? get nestedStringList;
  _i3.BuiltList<String?>? get sparseStringList;
  _i3.BuiltList<String>? get stringList;
  _i3.BuiltSet<String>? get stringSet;
  _i3.BuiltList<_i5.StructureListMember>? get structureList;
  _i3.BuiltList<DateTime>? get timestampList;
  @override
  JsonListsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        booleanList,
        enumList,
        integerList,
        nestedStringList,
        sparseStringList,
        stringList,
        stringSet,
        structureList,
        timestampList
      ];
}

class _JsonListsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonListsInputOutput> {
  const _JsonListsInputOutputRestJson1Serializer()
      : super('JsonListsInputOutput');

  @override
  Iterable<Type> get types =>
      const [JsonListsInputOutput, _$JsonListsInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  JsonListsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = JsonListsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'booleanList':
          if (value != null) {
            result.booleanList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(bool)]))
                as _i3.BuiltList<bool>));
          }
          break;
        case 'enumList':
          if (value != null) {
            result.enumList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(_i4.FooEnum)]))
                as _i3.BuiltList<_i4.FooEnum>));
          }
          break;
        case 'integerList':
          if (value != null) {
            result.integerList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(int)]))
                as _i3.BuiltList<int>));
          }
          break;
        case 'nestedStringList':
          if (value != null) {
            result.nestedStringList.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.BuiltList, [
                  FullType(_i3.BuiltList, [FullType(String)])
                ])) as _i3.BuiltList<_i3.BuiltList<String>>));
          }
          break;
        case 'sparseStringList':
          if (value != null) {
            result.sparseStringList.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i3.BuiltList, [FullType.nullable(String)]))
                as _i3.BuiltList<String?>));
          }
          break;
        case 'stringList':
          if (value != null) {
            result.stringList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(String)]))
                as _i3.BuiltList<String>));
          }
          break;
        case 'stringSet':
          if (value != null) {
            result.stringSet.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltSet, [FullType(String)]))
                as _i3.BuiltSet<String>));
          }
          break;
        case 'myStructureList':
          if (value != null) {
            result.structureList.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i3.BuiltList, [FullType(_i5.StructureListMember)]))
                as _i3.BuiltList<_i5.StructureListMember>));
          }
          break;
        case 'timestampList':
          if (value != null) {
            result.timestampList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(DateTime)]))
                as _i3.BuiltList<DateTime>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as JsonListsInputOutput);
    final result = <Object?>[];
    if (payload.booleanList != null) {
      result
        ..add('booleanList')
        ..add(serializers.serialize(payload.booleanList,
            specifiedType:
                const FullType.nullable(_i3.BuiltList, [FullType(bool)])));
    }
    if (payload.enumList != null) {
      result
        ..add('enumList')
        ..add(serializers.serialize(payload.enumList,
            specifiedType: const FullType.nullable(
                _i3.BuiltList, [FullType(_i4.FooEnum)])));
    }
    if (payload.integerList != null) {
      result
        ..add('integerList')
        ..add(serializers.serialize(payload.integerList,
            specifiedType:
                const FullType.nullable(_i3.BuiltList, [FullType(int)])));
    }
    if (payload.nestedStringList != null) {
      result
        ..add('nestedStringList')
        ..add(serializers.serialize(payload.nestedStringList,
            specifiedType: const FullType.nullable(_i3.BuiltList, [
              FullType(_i3.BuiltList, [FullType(String)])
            ])));
    }
    if (payload.sparseStringList != null) {
      result
        ..add('sparseStringList')
        ..add(serializers.serialize(payload.sparseStringList,
            specifiedType: const FullType.nullable(
                _i3.BuiltList, [FullType.nullable(String)])));
    }
    if (payload.stringList != null) {
      result
        ..add('stringList')
        ..add(serializers.serialize(payload.stringList,
            specifiedType:
                const FullType.nullable(_i3.BuiltList, [FullType(String)])));
    }
    if (payload.stringSet != null) {
      result
        ..add('stringSet')
        ..add(serializers.serialize(payload.stringSet,
            specifiedType:
                const FullType.nullable(_i3.BuiltSet, [FullType(String)])));
    }
    if (payload.structureList != null) {
      result
        ..add('myStructureList')
        ..add(serializers.serialize(payload.structureList,
            specifiedType: const FullType.nullable(
                _i3.BuiltList, [FullType(_i5.StructureListMember)])));
    }
    if (payload.timestampList != null) {
      result
        ..add('timestampList')
        ..add(serializers.serialize(payload.timestampList,
            specifiedType:
                const FullType.nullable(_i3.BuiltList, [FullType(DateTime)])));
    }
    return result;
  }
}

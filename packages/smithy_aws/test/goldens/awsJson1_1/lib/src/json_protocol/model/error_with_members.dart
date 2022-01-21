// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.error_with_members;

import 'package:aws_json1_1/src/json_protocol/model/kitchen_sink.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'error_with_members.g.dart';

abstract class ErrorWithMembers
    with _i1.SmithyException
    implements
        Built<ErrorWithMembers, ErrorWithMembersBuilder>,
        _i1.HasPayload<ErrorWithMembersPayload> {
  factory ErrorWithMembers([void Function(ErrorWithMembersBuilder) updates]) =
      _$ErrorWithMembers;

  const ErrorWithMembers._();

  static const List<_i1.SmithySerializer> serializers = [
    _ErrorWithMembersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorWithMembersBuilder b) {}
  String? get code;
  _i2.KitchenSink? get complexData;
  int? get integerField;
  _i3.BuiltList<String>? get listField;
  _i3.BuiltMap<String, String>? get mapField;
  @override
  String? get message;

  /// abc
  String? get stringField;
  @override
  ErrorWithMembersPayload getPayload() => ErrorWithMembersPayload((b) => b
    ..code = code
    ..complexData = complexData
    ..integerField = integerField
    ..listField = listField
    ..mapField = mapField
    ..message = message
    ..stringField = stringField);
  @override
  bool get isRetryable => false;
}

@_i4.internal
@BuiltValue(nestedBuilders: false)
abstract class ErrorWithMembersPayload
    implements Built<ErrorWithMembersPayload, ErrorWithMembersPayloadBuilder> {
  factory ErrorWithMembersPayload(
          [void Function(ErrorWithMembersPayloadBuilder) updates]) =
      _$ErrorWithMembersPayload;

  const ErrorWithMembersPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorWithMembersPayloadBuilder b) {}
  String? get code;
  _i2.KitchenSink? get complexData;
  int? get integerField;
  _i3.BuiltList<String>? get listField;
  _i3.BuiltMap<String, String>? get mapField;
  @override
  String? get message;

  /// abc
  String? get stringField;
}

class _ErrorWithMembersAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ErrorWithMembers> {
  const _ErrorWithMembersAwsJson11Serializer() : super('ErrorWithMembers');

  @override
  Iterable<Type> get types => const [
        ErrorWithMembers,
        _$ErrorWithMembers,
        ErrorWithMembersPayload,
        _$ErrorWithMembersPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ErrorWithMembers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ErrorWithMembersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Code':
          result.code = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'ComplexData':
          result.complexData.replace((serializers.deserialize(value,
                  specifiedType: const FullType(_i2.KitchenSink))
              as _i2.KitchenSink));
          break;
        case 'IntegerField':
          result.integerField = (serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?);
          break;
        case 'ListField':
          result.listField.replace((serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.BuiltList, [FullType(String)]))
              as _i3.BuiltList<String>));
          break;
        case 'MapField':
          result.mapField.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i3.BuiltMap, [FullType(String), FullType(String)]))
              as _i3.BuiltMap<String, String>));
          break;
        case 'Message':
          result.message = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'StringField':
          result.stringField = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ErrorWithMembers);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('Code')
        ..add(serializers.serialize(payload.code,
            specifiedType: const FullType(String)));
    }
    if (payload.complexData != null) {
      result
        ..add('ComplexData')
        ..add(serializers.serialize(payload.complexData,
            specifiedType: const FullType(_i2.KitchenSink)));
    }
    if (payload.integerField != null) {
      result
        ..add('IntegerField')
        ..add(serializers.serialize(payload.integerField,
            specifiedType: const FullType(int)));
    }
    if (payload.listField != null) {
      result
        ..add('ListField')
        ..add(serializers.serialize(payload.listField,
            specifiedType: const FullType(_i3.BuiltList, [FullType(String)])));
    }
    if (payload.mapField != null) {
      result
        ..add('MapField')
        ..add(serializers.serialize(payload.mapField,
            specifiedType: const FullType(
                _i3.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(payload.message,
            specifiedType: const FullType(String)));
    }
    if (payload.stringField != null) {
      result
        ..add('StringField')
        ..add(serializers.serialize(payload.stringField,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
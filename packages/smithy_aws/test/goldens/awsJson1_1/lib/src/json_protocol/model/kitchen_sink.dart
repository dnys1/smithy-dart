// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.kitchen_sink;

import 'dart:typed_data' as _i2;

import 'package:aws_json1_1/src/json_protocol/model/empty_struct.dart' as _i3;
import 'package:aws_json1_1/src/json_protocol/model/simple_struct.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/struct_with_json_name.dart'
    as _i7;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:meta/meta.dart' as _i8;
import 'package:smithy/smithy.dart' as _i1;

part 'kitchen_sink.g.dart';

abstract class KitchenSink
    with _i1.HttpInput<KitchenSinkPayload>
    implements
        Built<KitchenSink, KitchenSinkBuilder>,
        _i1.HasPayload<KitchenSinkPayload> {
  factory KitchenSink([void Function(KitchenSinkBuilder) updates]) =
      _$KitchenSink;

  const KitchenSink._();

  static const List<_i1.SmithySerializer> serializers = [
    _KitchenSinkAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KitchenSinkBuilder b) {}
  _i2.Uint8List? get blob;
  bool? get boolean;
  double? get double$;
  _i3.EmptyStruct? get emptyStruct;
  double? get float;
  DateTime? get httpdateTimestamp;
  int? get integer;
  DateTime? get iso8601Timestamp;
  String? get jsonValue;
  _i4.BuiltList<_i4.BuiltList<String>>? get listOfLists;
  _i4.BuiltList<_i4.BuiltMap<String, String>>? get listOfMapsOfStrings;
  _i4.BuiltList<String>? get listOfStrings;
  _i4.BuiltList<_i5.SimpleStruct>? get listOfStructs;
  _i6.Int64? get long;
  _i4.BuiltListMultimap<String, String>? get mapOfListsOfStrings;
  _i4.BuiltMap<String, _i4.BuiltMap<String, String>>? get mapOfMaps;
  _i4.BuiltMap<String, String>? get mapOfStrings;
  _i4.BuiltMap<String, _i5.SimpleStruct>? get mapOfStructs;
  _i4.BuiltList<KitchenSink>? get recursiveList;
  _i4.BuiltMap<String, KitchenSink>? get recursiveMap;
  KitchenSink? get recursiveStruct;
  _i5.SimpleStruct? get simpleStruct;
  String? get string;
  _i7.StructWithJsonName? get structWithJsonName;
  DateTime? get timestamp;
  DateTime? get unixTimestamp;
  @override
  KitchenSinkPayload getPayload() => KitchenSinkPayload((b) => b
    ..blob = blob
    ..boolean = boolean
    ..double$ = double$
    ..emptyStruct = emptyStruct
    ..float = float
    ..httpdateTimestamp = httpdateTimestamp
    ..integer = integer
    ..iso8601Timestamp = iso8601Timestamp
    ..jsonValue = jsonValue
    ..listOfLists = listOfLists
    ..listOfMapsOfStrings = listOfMapsOfStrings
    ..listOfStrings = listOfStrings
    ..listOfStructs = listOfStructs
    ..long = long
    ..mapOfListsOfStrings = mapOfListsOfStrings
    ..mapOfMaps = mapOfMaps
    ..mapOfStrings = mapOfStrings
    ..mapOfStructs = mapOfStructs
    ..recursiveList = recursiveList
    ..recursiveMap = recursiveMap
    ..recursiveStruct = recursiveStruct
    ..simpleStruct = simpleStruct
    ..string = string
    ..structWithJsonName = structWithJsonName
    ..timestamp = timestamp
    ..unixTimestamp = unixTimestamp);
}

@_i8.internal
@BuiltValue(nestedBuilders: false)
abstract class KitchenSinkPayload
    implements Built<KitchenSinkPayload, KitchenSinkPayloadBuilder> {
  factory KitchenSinkPayload(
          [void Function(KitchenSinkPayloadBuilder) updates]) =
      _$KitchenSinkPayload;

  const KitchenSinkPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KitchenSinkPayloadBuilder b) {}
  _i2.Uint8List? get blob;
  bool? get boolean;
  double? get double$;
  _i3.EmptyStruct? get emptyStruct;
  double? get float;
  DateTime? get httpdateTimestamp;
  int? get integer;
  DateTime? get iso8601Timestamp;
  String? get jsonValue;
  _i4.BuiltList<_i4.BuiltList<String>>? get listOfLists;
  _i4.BuiltList<_i4.BuiltMap<String, String>>? get listOfMapsOfStrings;
  _i4.BuiltList<String>? get listOfStrings;
  _i4.BuiltList<_i5.SimpleStruct>? get listOfStructs;
  _i6.Int64? get long;
  _i4.BuiltListMultimap<String, String>? get mapOfListsOfStrings;
  _i4.BuiltMap<String, _i4.BuiltMap<String, String>>? get mapOfMaps;
  _i4.BuiltMap<String, String>? get mapOfStrings;
  _i4.BuiltMap<String, _i5.SimpleStruct>? get mapOfStructs;
  _i4.BuiltList<KitchenSink>? get recursiveList;
  _i4.BuiltMap<String, KitchenSink>? get recursiveMap;
  KitchenSink? get recursiveStruct;
  _i5.SimpleStruct? get simpleStruct;
  String? get string;
  _i7.StructWithJsonName? get structWithJsonName;
  DateTime? get timestamp;
  DateTime? get unixTimestamp;
}

class _KitchenSinkAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<KitchenSink> {
  const _KitchenSinkAwsJson11Serializer() : super('KitchenSink');

  @override
  Iterable<Type> get types => const [
        KitchenSink,
        _$KitchenSink,
        KitchenSinkPayload,
        _$KitchenSinkPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  KitchenSink deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = KitchenSinkBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Blob':
          result.blob = (serializers.deserialize(value,
              specifiedType: const FullType(_i2.Uint8List)) as _i2.Uint8List?);
          break;
        case 'Boolean':
          result.boolean = (serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?);
          break;
        case 'Double':
          result.double$ = (serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?);
          break;
        case 'EmptyStruct':
          result.emptyStruct.replace((serializers.deserialize(value,
                  specifiedType: const FullType(_i3.EmptyStruct))
              as _i3.EmptyStruct));
          break;
        case 'Float':
          result.float = (serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?);
          break;
        case 'HttpdateTimestamp':
          result.httpdateTimestamp = (serializers.deserializeWith(
              _i1.TimestampSerializer.httpDate, value) as DateTime?);
          break;
        case 'Integer':
          result.integer = (serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?);
          break;
        case 'Iso8601Timestamp':
          result.iso8601Timestamp = (serializers.deserializeWith(
              _i1.TimestampSerializer.dateTime, value) as DateTime?);
          break;
        case 'JsonValue':
          result.jsonValue = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'ListOfLists':
          result.listOfLists.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i4.BuiltList, [
                FullType(_i4.BuiltList, [FullType(String)])
              ])) as _i4.BuiltList<_i4.BuiltList<String>>));
          break;
        case 'ListOfMapsOfStrings':
          result.listOfMapsOfStrings.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i4.BuiltList, [
                FullType(_i4.BuiltMap, [FullType(String), FullType(String)])
              ])) as _i4.BuiltList<_i4.BuiltMap<String, String>>));
          break;
        case 'ListOfStrings':
          result.listOfStrings.replace((serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i4.BuiltList, [FullType(String)]))
              as _i4.BuiltList<String>));
          break;
        case 'ListOfStructs':
          result.listOfStructs.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i4.BuiltList, [FullType(_i5.SimpleStruct)]))
              as _i4.BuiltList<_i5.SimpleStruct>));
          break;
        case 'Long':
          result.long = (serializers.deserialize(value,
              specifiedType: const FullType(_i6.Int64)) as _i6.Int64?);
          break;
        case 'MapOfListsOfStrings':
          result.mapOfListsOfStrings.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i4.BuiltListMultimap, [
                FullType(String),
                FullType(String)
              ])) as _i4.BuiltListMultimap<String, String>));
          break;
        case 'MapOfMaps':
          result.mapOfMaps.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i4.BuiltMap, [
                FullType(String),
                FullType(_i4.BuiltMap, [FullType(String), FullType(String)])
              ])) as _i4.BuiltMap<String, _i4.BuiltMap<String, String>>));
          break;
        case 'MapOfStrings':
          result.mapOfStrings.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i4.BuiltMap, [FullType(String), FullType(String)]))
              as _i4.BuiltMap<String, String>));
          break;
        case 'MapOfStructs':
          result.mapOfStructs.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i4.BuiltMap, [
                FullType(String),
                FullType(_i5.SimpleStruct)
              ])) as _i4.BuiltMap<String, _i5.SimpleStruct>));
          break;
        case 'RecursiveList':
          result.recursiveList.replace((serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i4.BuiltList, [FullType(KitchenSink)]))
              as _i4.BuiltList<KitchenSink>));
          break;
        case 'RecursiveMap':
          result.recursiveMap.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i4.BuiltMap, [FullType(String), FullType(KitchenSink)]))
              as _i4.BuiltMap<String, KitchenSink>));
          break;
        case 'RecursiveStruct':
          result.recursiveStruct.replace((serializers.deserialize(value,
              specifiedType: const FullType(KitchenSink)) as KitchenSink));
          break;
        case 'SimpleStruct':
          result.simpleStruct.replace((serializers.deserialize(value,
                  specifiedType: const FullType(_i5.SimpleStruct))
              as _i5.SimpleStruct));
          break;
        case 'String':
          result.string = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'StructWithJsonName':
          result.structWithJsonName.replace((serializers.deserialize(value,
                  specifiedType: const FullType(_i7.StructWithJsonName))
              as _i7.StructWithJsonName));
          break;
        case 'Timestamp':
          result.timestamp = (serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?);
          break;
        case 'UnixTimestamp':
          result.unixTimestamp = (serializers.deserializeWith(
              _i1.TimestampSerializer.epochSeconds, value) as DateTime?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as KitchenSink);
    final result = <Object?>[];
    if (payload.blob != null) {
      result
        ..add('Blob')
        ..add(serializers.serialize(payload.blob,
            specifiedType: const FullType(_i2.Uint8List)));
    }
    if (payload.boolean != null) {
      result
        ..add('Boolean')
        ..add(serializers.serialize(payload.boolean,
            specifiedType: const FullType(bool)));
    }
    if (payload.double$ != null) {
      result
        ..add('Double')
        ..add(serializers.serialize(payload.double$,
            specifiedType: const FullType(double)));
    }
    if (payload.emptyStruct != null) {
      result
        ..add('EmptyStruct')
        ..add(serializers.serialize(payload.emptyStruct,
            specifiedType: const FullType(_i3.EmptyStruct)));
    }
    if (payload.float != null) {
      result
        ..add('Float')
        ..add(serializers.serialize(payload.float,
            specifiedType: const FullType(double)));
    }
    if (payload.httpdateTimestamp != null) {
      result
        ..add('HttpdateTimestamp')
        ..add(serializers.serializeWith(
            _i1.TimestampSerializer.httpDate, payload.httpdateTimestamp));
    }
    if (payload.integer != null) {
      result
        ..add('Integer')
        ..add(serializers.serialize(payload.integer,
            specifiedType: const FullType(int)));
    }
    if (payload.iso8601Timestamp != null) {
      result
        ..add('Iso8601Timestamp')
        ..add(serializers.serializeWith(
            _i1.TimestampSerializer.dateTime, payload.iso8601Timestamp));
    }
    if (payload.jsonValue != null) {
      result
        ..add('JsonValue')
        ..add(serializers.serialize(payload.jsonValue,
            specifiedType: const FullType(String)));
    }
    if (payload.listOfLists != null) {
      result
        ..add('ListOfLists')
        ..add(serializers.serialize(payload.listOfLists,
            specifiedType: const FullType(_i4.BuiltList, [
              FullType(_i4.BuiltList, [FullType(String)])
            ])));
    }
    if (payload.listOfMapsOfStrings != null) {
      result
        ..add('ListOfMapsOfStrings')
        ..add(serializers.serialize(payload.listOfMapsOfStrings,
            specifiedType: const FullType(_i4.BuiltList, [
              FullType(_i4.BuiltMap, [FullType(String), FullType(String)])
            ])));
    }
    if (payload.listOfStrings != null) {
      result
        ..add('ListOfStrings')
        ..add(serializers.serialize(payload.listOfStrings,
            specifiedType: const FullType(_i4.BuiltList, [FullType(String)])));
    }
    if (payload.listOfStructs != null) {
      result
        ..add('ListOfStructs')
        ..add(serializers.serialize(payload.listOfStructs,
            specifiedType:
                const FullType(_i4.BuiltList, [FullType(_i5.SimpleStruct)])));
    }
    if (payload.long != null) {
      result
        ..add('Long')
        ..add(serializers.serialize(payload.long,
            specifiedType: const FullType(_i6.Int64)));
    }
    if (payload.mapOfListsOfStrings != null) {
      result
        ..add('MapOfListsOfStrings')
        ..add(serializers.serialize(payload.mapOfListsOfStrings,
            specifiedType: const FullType(
                _i4.BuiltListMultimap, [FullType(String), FullType(String)])));
    }
    if (payload.mapOfMaps != null) {
      result
        ..add('MapOfMaps')
        ..add(serializers.serialize(payload.mapOfMaps,
            specifiedType: const FullType(_i4.BuiltMap, [
              FullType(String),
              FullType(_i4.BuiltMap, [FullType(String), FullType(String)])
            ])));
    }
    if (payload.mapOfStrings != null) {
      result
        ..add('MapOfStrings')
        ..add(serializers.serialize(payload.mapOfStrings,
            specifiedType: const FullType(
                _i4.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.mapOfStructs != null) {
      result
        ..add('MapOfStructs')
        ..add(serializers.serialize(payload.mapOfStructs,
            specifiedType: const FullType(
                _i4.BuiltMap, [FullType(String), FullType(_i5.SimpleStruct)])));
    }
    if (payload.recursiveList != null) {
      result
        ..add('RecursiveList')
        ..add(serializers.serialize(payload.recursiveList,
            specifiedType:
                const FullType(_i4.BuiltList, [FullType(KitchenSink)])));
    }
    if (payload.recursiveMap != null) {
      result
        ..add('RecursiveMap')
        ..add(serializers.serialize(payload.recursiveMap,
            specifiedType: const FullType(
                _i4.BuiltMap, [FullType(String), FullType(KitchenSink)])));
    }
    if (payload.recursiveStruct != null) {
      result
        ..add('RecursiveStruct')
        ..add(serializers.serialize(payload.recursiveStruct,
            specifiedType: const FullType(KitchenSink)));
    }
    if (payload.simpleStruct != null) {
      result
        ..add('SimpleStruct')
        ..add(serializers.serialize(payload.simpleStruct,
            specifiedType: const FullType(_i5.SimpleStruct)));
    }
    if (payload.string != null) {
      result
        ..add('String')
        ..add(serializers.serialize(payload.string,
            specifiedType: const FullType(String)));
    }
    if (payload.structWithJsonName != null) {
      result
        ..add('StructWithJsonName')
        ..add(serializers.serialize(payload.structWithJsonName,
            specifiedType: const FullType(_i7.StructWithJsonName)));
    }
    if (payload.timestamp != null) {
      result
        ..add('Timestamp')
        ..add(serializers.serialize(payload.timestamp,
            specifiedType: const FullType(DateTime)));
    }
    if (payload.unixTimestamp != null) {
      result
        ..add('UnixTimestamp')
        ..add(serializers.serializeWith(
            _i1.TimestampSerializer.epochSeconds, payload.unixTimestamp));
    }
    return result;
  }
}

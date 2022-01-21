// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.kitchen_sink;

import 'dart:typed_data' as _i2;

import 'package:aws_json1_1/src/json_protocol/model/empty_struct.dart' as _i3;
import 'package:aws_json1_1/src/json_protocol/model/simple_struct.dart' as _i6;
import 'package:aws_json1_1/src/json_protocol/model/struct_with_json_name.dart'
    as _i8;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i7;
import 'package:meta/meta.dart' as _i9;
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
  _i4.JsonObject? get jsonValue;
  _i5.BuiltList<_i5.BuiltList<String>>? get listOfLists;
  _i5.BuiltList<_i5.BuiltMap<String, String>>? get listOfMapsOfStrings;
  _i5.BuiltList<String>? get listOfStrings;
  _i5.BuiltList<_i6.SimpleStruct>? get listOfStructs;
  _i7.Int64? get long;
  _i5.BuiltListMultimap<String, String>? get mapOfListsOfStrings;
  _i5.BuiltMap<String, _i5.BuiltMap<String, String>>? get mapOfMaps;
  _i5.BuiltMap<String, String>? get mapOfStrings;
  _i5.BuiltMap<String, _i6.SimpleStruct>? get mapOfStructs;
  _i5.BuiltList<KitchenSink>? get recursiveList;
  _i5.BuiltMap<String, KitchenSink>? get recursiveMap;
  KitchenSink? get recursiveStruct;
  _i6.SimpleStruct? get simpleStruct;
  String? get string;
  _i8.StructWithJsonName? get structWithJsonName;
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

@_i9.internal
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
  _i4.JsonObject? get jsonValue;
  _i5.BuiltList<_i5.BuiltList<String>>? get listOfLists;
  _i5.BuiltList<_i5.BuiltMap<String, String>>? get listOfMapsOfStrings;
  _i5.BuiltList<String>? get listOfStrings;
  _i5.BuiltList<_i6.SimpleStruct>? get listOfStructs;
  _i7.Int64? get long;
  _i5.BuiltListMultimap<String, String>? get mapOfListsOfStrings;
  _i5.BuiltMap<String, _i5.BuiltMap<String, String>>? get mapOfMaps;
  _i5.BuiltMap<String, String>? get mapOfStrings;
  _i5.BuiltMap<String, _i6.SimpleStruct>? get mapOfStructs;
  _i5.BuiltList<KitchenSink>? get recursiveList;
  _i5.BuiltMap<String, KitchenSink>? get recursiveMap;
  KitchenSink? get recursiveStruct;
  _i6.SimpleStruct? get simpleStruct;
  String? get string;
  _i8.StructWithJsonName? get structWithJsonName;
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
          if (value != null) {
            result.blob = (serializers.deserialize(value,
                specifiedType: const FullType(_i2.Uint8List)) as _i2.Uint8List);
          }
          break;
        case 'Boolean':
          if (value != null) {
            result.boolean = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
        case 'Double':
          if (value != null) {
            result.double$ = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'EmptyStruct':
          if (value != null) {
            result.emptyStruct.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.EmptyStruct))
                as _i3.EmptyStruct));
          }
          break;
        case 'Float':
          if (value != null) {
            result.float = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'HttpdateTimestamp':
          if (value != null) {
            result.httpdateTimestamp = (_i1.TimestampSerializer.httpDate
                .deserialize(serializers, value) as DateTime);
          }
          break;
        case 'Integer':
          if (value != null) {
            result.integer = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'Iso8601Timestamp':
          if (value != null) {
            result.iso8601Timestamp = (_i1.TimestampSerializer.dateTime
                .deserialize(serializers, value) as DateTime);
          }
          break;
        case 'JsonValue':
          if (value != null) {
            result.jsonValue = (const _i1.EncodedJsonObjectSerializer()
                .deserialize(serializers, value) as _i4.JsonObject);
          }
          break;
        case 'ListOfLists':
          if (value != null) {
            result.listOfLists.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i5.BuiltList, [
                  FullType(_i5.BuiltList, [FullType(String)])
                ])) as _i5.BuiltList<_i5.BuiltList<String>>));
          }
          break;
        case 'ListOfMapsOfStrings':
          if (value != null) {
            result.listOfMapsOfStrings.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i5.BuiltList, [
                  FullType(_i5.BuiltMap, [FullType(String), FullType(String)])
                ])) as _i5.BuiltList<_i5.BuiltMap<String, String>>));
          }
          break;
        case 'ListOfStrings':
          if (value != null) {
            result.listOfStrings.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i5.BuiltList, [FullType(String)]))
                as _i5.BuiltList<String>));
          }
          break;
        case 'ListOfStructs':
          if (value != null) {
            result.listOfStructs.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i5.BuiltList, [FullType(_i6.SimpleStruct)]))
                as _i5.BuiltList<_i6.SimpleStruct>));
          }
          break;
        case 'Long':
          if (value != null) {
            result.long = (serializers.deserialize(value,
                specifiedType: const FullType(_i7.Int64)) as _i7.Int64);
          }
          break;
        case 'MapOfListsOfStrings':
          if (value != null) {
            result.mapOfListsOfStrings.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i5.BuiltListMultimap, [
                  FullType(String),
                  FullType(String)
                ])) as _i5.BuiltListMultimap<String, String>));
          }
          break;
        case 'MapOfMaps':
          if (value != null) {
            result.mapOfMaps.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i5.BuiltMap, [
                  FullType(String),
                  FullType(_i5.BuiltMap, [FullType(String), FullType(String)])
                ])) as _i5.BuiltMap<String, _i5.BuiltMap<String, String>>));
          }
          break;
        case 'MapOfStrings':
          if (value != null) {
            result.mapOfStrings.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i5.BuiltMap, [FullType(String), FullType(String)]))
                as _i5.BuiltMap<String, String>));
          }
          break;
        case 'MapOfStructs':
          if (value != null) {
            result.mapOfStructs.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i5.BuiltMap, [
                  FullType(String),
                  FullType(_i6.SimpleStruct)
                ])) as _i5.BuiltMap<String, _i6.SimpleStruct>));
          }
          break;
        case 'RecursiveList':
          if (value != null) {
            result.recursiveList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i5.BuiltList, [FullType(KitchenSink)]))
                as _i5.BuiltList<KitchenSink>));
          }
          break;
        case 'RecursiveMap':
          if (value != null) {
            result.recursiveMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i5.BuiltMap, [
                  FullType(String),
                  FullType(KitchenSink)
                ])) as _i5.BuiltMap<String, KitchenSink>));
          }
          break;
        case 'RecursiveStruct':
          if (value != null) {
            result.recursiveStruct.replace((serializers.deserialize(value,
                specifiedType: const FullType(KitchenSink)) as KitchenSink));
          }
          break;
        case 'SimpleStruct':
          if (value != null) {
            result.simpleStruct.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i6.SimpleStruct))
                as _i6.SimpleStruct));
          }
          break;
        case 'String':
          if (value != null) {
            result.string = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'StructWithJsonName':
          if (value != null) {
            result.structWithJsonName.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i8.StructWithJsonName))
                as _i8.StructWithJsonName));
          }
          break;
        case 'Timestamp':
          if (value != null) {
            result.timestamp = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
        case 'UnixTimestamp':
          if (value != null) {
            result.unixTimestamp = (_i1.TimestampSerializer.epochSeconds
                .deserialize(serializers, value) as DateTime);
          }
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
            specifiedType: FullType.nullable(_i2.Uint8List)));
    }
    if (payload.boolean != null) {
      result
        ..add('Boolean')
        ..add(serializers.serialize(payload.boolean,
            specifiedType: FullType.nullable(bool)));
    }
    if (payload.double$ != null) {
      result
        ..add('Double')
        ..add(serializers.serialize(payload.double$,
            specifiedType: FullType.nullable(double)));
    }
    if (payload.emptyStruct != null) {
      result
        ..add('EmptyStruct')
        ..add(serializers.serialize(payload.emptyStruct,
            specifiedType: FullType.nullable(_i3.EmptyStruct)));
    }
    if (payload.float != null) {
      result
        ..add('Float')
        ..add(serializers.serialize(payload.float,
            specifiedType: FullType.nullable(double)));
    }
    if (payload.httpdateTimestamp != null) {
      result
        ..add('HttpdateTimestamp')
        ..add(_i1.TimestampSerializer.httpDate
            .serialize(serializers, payload.httpdateTimestamp!));
    }
    if (payload.integer != null) {
      result
        ..add('Integer')
        ..add(serializers.serialize(payload.integer,
            specifiedType: FullType.nullable(int)));
    }
    if (payload.iso8601Timestamp != null) {
      result
        ..add('Iso8601Timestamp')
        ..add(_i1.TimestampSerializer.dateTime
            .serialize(serializers, payload.iso8601Timestamp!));
    }
    if (payload.jsonValue != null) {
      result
        ..add('JsonValue')
        ..add(const _i1.EncodedJsonObjectSerializer()
            .serialize(serializers, payload.jsonValue!));
    }
    if (payload.listOfLists != null) {
      result
        ..add('ListOfLists')
        ..add(serializers.serialize(payload.listOfLists,
            specifiedType: FullType.nullable(_i5.BuiltList, [
              const FullType(_i5.BuiltList, [FullType(String)])
            ])));
    }
    if (payload.listOfMapsOfStrings != null) {
      result
        ..add('ListOfMapsOfStrings')
        ..add(serializers.serialize(payload.listOfMapsOfStrings,
            specifiedType: FullType.nullable(_i5.BuiltList, [
              const FullType(_i5.BuiltMap, [FullType(String), FullType(String)])
            ])));
    }
    if (payload.listOfStrings != null) {
      result
        ..add('ListOfStrings')
        ..add(serializers.serialize(payload.listOfStrings,
            specifiedType:
                FullType.nullable(_i5.BuiltList, [const FullType(String)])));
    }
    if (payload.listOfStructs != null) {
      result
        ..add('ListOfStructs')
        ..add(serializers.serialize(payload.listOfStructs,
            specifiedType: FullType.nullable(
                _i5.BuiltList, [const FullType(_i6.SimpleStruct)])));
    }
    if (payload.long != null) {
      result
        ..add('Long')
        ..add(serializers.serialize(payload.long,
            specifiedType: FullType.nullable(_i7.Int64)));
    }
    if (payload.mapOfListsOfStrings != null) {
      result
        ..add('MapOfListsOfStrings')
        ..add(serializers.serialize(payload.mapOfListsOfStrings,
            specifiedType: FullType.nullable(_i5.BuiltListMultimap,
                [const FullType(String), const FullType(String)])));
    }
    if (payload.mapOfMaps != null) {
      result
        ..add('MapOfMaps')
        ..add(serializers.serialize(payload.mapOfMaps,
            specifiedType: FullType.nullable(_i5.BuiltMap, [
              const FullType(String),
              const FullType(_i5.BuiltMap, [FullType(String), FullType(String)])
            ])));
    }
    if (payload.mapOfStrings != null) {
      result
        ..add('MapOfStrings')
        ..add(serializers.serialize(payload.mapOfStrings,
            specifiedType: FullType.nullable(_i5.BuiltMap,
                [const FullType(String), const FullType(String)])));
    }
    if (payload.mapOfStructs != null) {
      result
        ..add('MapOfStructs')
        ..add(serializers.serialize(payload.mapOfStructs,
            specifiedType: FullType.nullable(_i5.BuiltMap,
                [const FullType(String), const FullType(_i6.SimpleStruct)])));
    }
    if (payload.recursiveList != null) {
      result
        ..add('RecursiveList')
        ..add(serializers.serialize(payload.recursiveList,
            specifiedType: FullType.nullable(
                _i5.BuiltList, [const FullType(KitchenSink)])));
    }
    if (payload.recursiveMap != null) {
      result
        ..add('RecursiveMap')
        ..add(serializers.serialize(payload.recursiveMap,
            specifiedType: FullType.nullable(_i5.BuiltMap,
                [const FullType(String), const FullType(KitchenSink)])));
    }
    if (payload.recursiveStruct != null) {
      result
        ..add('RecursiveStruct')
        ..add(serializers.serialize(payload.recursiveStruct,
            specifiedType: FullType.nullable(KitchenSink)));
    }
    if (payload.simpleStruct != null) {
      result
        ..add('SimpleStruct')
        ..add(serializers.serialize(payload.simpleStruct,
            specifiedType: FullType.nullable(_i6.SimpleStruct)));
    }
    if (payload.string != null) {
      result
        ..add('String')
        ..add(serializers.serialize(payload.string,
            specifiedType: FullType.nullable(String)));
    }
    if (payload.structWithJsonName != null) {
      result
        ..add('StructWithJsonName')
        ..add(serializers.serialize(payload.structWithJsonName,
            specifiedType: FullType.nullable(_i8.StructWithJsonName)));
    }
    if (payload.timestamp != null) {
      result
        ..add('Timestamp')
        ..add(serializers.serialize(payload.timestamp,
            specifiedType: FullType.nullable(DateTime)));
    }
    if (payload.unixTimestamp != null) {
      result
        ..add('UnixTimestamp')
        ..add(_i1.TimestampSerializer.epochSeconds
            .serialize(serializers, payload.unixTimestamp!));
    }
    return result;
  }
}

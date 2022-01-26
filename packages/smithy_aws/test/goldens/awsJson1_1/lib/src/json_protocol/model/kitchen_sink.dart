// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.kitchen_sink;

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_json1_1/src/json_protocol/model/empty_struct.dart' as _i4;
import 'package:aws_json1_1/src/json_protocol/model/simple_struct.dart' as _i7;
import 'package:aws_json1_1/src/json_protocol/model/struct_with_json_name.dart'
    as _i9;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i8;
import 'package:smithy/smithy.dart' as _i1;

part 'kitchen_sink.g.dart';

abstract class KitchenSink
    with _i1.HttpInput<KitchenSink>, _i2.AWSEquatable<KitchenSink>
    implements Built<KitchenSink, KitchenSinkBuilder> {
  factory KitchenSink([void Function(KitchenSinkBuilder) updates]) =
      _$KitchenSink;

  const KitchenSink._();

  factory KitchenSink.fromResponse(
          KitchenSink payload, _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _KitchenSinkAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KitchenSinkBuilder b) {}
  _i3.Uint8List? get blob;
  bool? get boolean;
  double? get double_;
  _i4.EmptyStruct? get emptyStruct;
  double? get float;
  DateTime? get httpdateTimestamp;
  int? get integer;
  DateTime? get iso8601Timestamp;
  _i5.JsonObject? get jsonValue;
  _i6.BuiltList<_i6.BuiltList<String>>? get listOfLists;
  _i6.BuiltList<_i6.BuiltMap<String, String>>? get listOfMapsOfStrings;
  _i6.BuiltList<String>? get listOfStrings;
  _i6.BuiltList<_i7.SimpleStruct>? get listOfStructs;
  _i8.Int64? get long;
  _i6.BuiltListMultimap<String, String>? get mapOfListsOfStrings;
  _i6.BuiltMap<String, _i6.BuiltMap<String, String>>? get mapOfMaps;
  _i6.BuiltMap<String, String>? get mapOfStrings;
  _i6.BuiltMap<String, _i7.SimpleStruct>? get mapOfStructs;
  _i6.BuiltList<KitchenSink>? get recursiveList;
  _i6.BuiltMap<String, KitchenSink>? get recursiveMap;
  KitchenSink? get recursiveStruct;
  _i7.SimpleStruct? get simpleStruct;
  String? get string;
  _i9.StructWithJsonName? get structWithJsonName;
  DateTime? get timestamp;
  DateTime? get unixTimestamp;
  @override
  KitchenSink getPayload() => this;
  @override
  List<Object?> get props => [
        blob,
        boolean,
        double_,
        emptyStruct,
        float,
        httpdateTimestamp,
        integer,
        iso8601Timestamp,
        jsonValue,
        listOfLists,
        listOfMapsOfStrings,
        listOfStrings,
        listOfStructs,
        long,
        mapOfListsOfStrings,
        mapOfMaps,
        mapOfStrings,
        mapOfStructs,
        recursiveList,
        recursiveMap,
        recursiveStruct,
        simpleStruct,
        string,
        structWithJsonName,
        timestamp,
        unixTimestamp
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'KitchenSink');
    helper.add(r'blob', blob);
    helper.add(r'boolean', boolean);
    helper.add(r'double_', double_);
    helper.add(r'emptyStruct', emptyStruct);
    helper.add(r'float', float);
    helper.add(r'httpdateTimestamp', httpdateTimestamp);
    helper.add(r'integer', integer);
    helper.add(r'iso8601Timestamp', iso8601Timestamp);
    helper.add(r'jsonValue', jsonValue);
    helper.add(r'listOfLists', listOfLists);
    helper.add(r'listOfMapsOfStrings', listOfMapsOfStrings);
    helper.add(r'listOfStrings', listOfStrings);
    helper.add(r'listOfStructs', listOfStructs);
    helper.add(r'long', long);
    helper.add(r'mapOfListsOfStrings', mapOfListsOfStrings);
    helper.add(r'mapOfMaps', mapOfMaps);
    helper.add(r'mapOfStrings', mapOfStrings);
    helper.add(r'mapOfStructs', mapOfStructs);
    helper.add(r'recursiveList', recursiveList);
    helper.add(r'recursiveMap', recursiveMap);
    helper.add(r'recursiveStruct', recursiveStruct);
    helper.add(r'simpleStruct', simpleStruct);
    helper.add(r'string', string);
    helper.add(r'structWithJsonName', structWithJsonName);
    helper.add(r'timestamp', timestamp);
    helper.add(r'unixTimestamp', unixTimestamp);
    return helper.toString();
  }
}

class _KitchenSinkAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<KitchenSink> {
  const _KitchenSinkAwsJson11Serializer() : super('KitchenSink');

  @override
  Iterable<Type> get types => const [KitchenSink, _$KitchenSink];
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
                specifiedType: const FullType(_i3.Uint8List)) as _i3.Uint8List);
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
            result.double_ = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'EmptyStruct':
          if (value != null) {
            result.emptyStruct.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i4.EmptyStruct))
                as _i4.EmptyStruct));
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
            result.httpdateTimestamp = _i1.TimestampSerializer.httpDate
                .deserialize(serializers, value);
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
            result.iso8601Timestamp = _i1.TimestampSerializer.dateTime
                .deserialize(serializers, value);
          }
          break;
        case 'JsonValue':
          if (value != null) {
            result.jsonValue = const _i1.EncodedJsonObjectSerializer()
                .deserialize(serializers, value);
          }
          break;
        case 'ListOfLists':
          if (value != null) {
            result.listOfLists.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltList, [
                  FullType(_i6.BuiltList, [FullType(String)])
                ])) as _i6.BuiltList<_i6.BuiltList<String>>));
          }
          break;
        case 'ListOfMapsOfStrings':
          if (value != null) {
            result.listOfMapsOfStrings.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltList, [
                  FullType(_i6.BuiltMap, [FullType(String), FullType(String)])
                ])) as _i6.BuiltList<_i6.BuiltMap<String, String>>));
          }
          break;
        case 'ListOfStrings':
          if (value != null) {
            result.listOfStrings.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(String)]))
                as _i6.BuiltList<String>));
          }
          break;
        case 'ListOfStructs':
          if (value != null) {
            result.listOfStructs.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltList, [FullType(_i7.SimpleStruct)]))
                as _i6.BuiltList<_i7.SimpleStruct>));
          }
          break;
        case 'Long':
          if (value != null) {
            result.long = (serializers.deserialize(value,
                specifiedType: const FullType(_i8.Int64)) as _i8.Int64);
          }
          break;
        case 'MapOfListsOfStrings':
          if (value != null) {
            result.mapOfListsOfStrings.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltListMultimap, [
                  FullType(String),
                  FullType(String)
                ])) as _i6.BuiltListMultimap<String, String>));
          }
          break;
        case 'MapOfMaps':
          if (value != null) {
            result.mapOfMaps.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType(_i6.BuiltMap, [FullType(String), FullType(String)])
                ])) as _i6.BuiltMap<String, _i6.BuiltMap<String, String>>));
          }
          break;
        case 'MapOfStrings':
          if (value != null) {
            result.mapOfStrings.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltMap, [FullType(String), FullType(String)]))
                as _i6.BuiltMap<String, String>));
          }
          break;
        case 'MapOfStructs':
          if (value != null) {
            result.mapOfStructs.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType(_i7.SimpleStruct)
                ])) as _i6.BuiltMap<String, _i7.SimpleStruct>));
          }
          break;
        case 'RecursiveList':
          if (value != null) {
            result.recursiveList.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i6.BuiltList, [FullType(KitchenSink)]))
                as _i6.BuiltList<KitchenSink>));
          }
          break;
        case 'RecursiveMap':
          if (value != null) {
            result.recursiveMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType(KitchenSink)
                ])) as _i6.BuiltMap<String, KitchenSink>));
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
                    specifiedType: const FullType(_i7.SimpleStruct))
                as _i7.SimpleStruct));
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
                    specifiedType: const FullType(_i9.StructWithJsonName))
                as _i9.StructWithJsonName));
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
            result.unixTimestamp = _i1.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
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
            specifiedType: const FullType.nullable(_i3.Uint8List)));
    }
    if (payload.boolean != null) {
      result
        ..add('Boolean')
        ..add(serializers.serialize(payload.boolean,
            specifiedType: const FullType.nullable(bool)));
    }
    if (payload.double_ != null) {
      result
        ..add('Double')
        ..add(serializers.serialize(payload.double_,
            specifiedType: const FullType.nullable(double)));
    }
    if (payload.emptyStruct != null) {
      result
        ..add('EmptyStruct')
        ..add(serializers.serialize(payload.emptyStruct,
            specifiedType: const FullType.nullable(_i4.EmptyStruct)));
    }
    if (payload.float != null) {
      result
        ..add('Float')
        ..add(serializers.serialize(payload.float,
            specifiedType: const FullType.nullable(double)));
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
            specifiedType: const FullType.nullable(int)));
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
            specifiedType: const FullType.nullable(_i6.BuiltList, [
              FullType(_i6.BuiltList, [FullType(String)])
            ])));
    }
    if (payload.listOfMapsOfStrings != null) {
      result
        ..add('ListOfMapsOfStrings')
        ..add(serializers.serialize(payload.listOfMapsOfStrings,
            specifiedType: const FullType.nullable(_i6.BuiltList, [
              FullType(_i6.BuiltMap, [FullType(String), FullType(String)])
            ])));
    }
    if (payload.listOfStrings != null) {
      result
        ..add('ListOfStrings')
        ..add(serializers.serialize(payload.listOfStrings,
            specifiedType:
                const FullType.nullable(_i6.BuiltList, [FullType(String)])));
    }
    if (payload.listOfStructs != null) {
      result
        ..add('ListOfStructs')
        ..add(serializers.serialize(payload.listOfStructs,
            specifiedType: const FullType.nullable(
                _i6.BuiltList, [FullType(_i7.SimpleStruct)])));
    }
    if (payload.long != null) {
      result
        ..add('Long')
        ..add(serializers.serialize(payload.long,
            specifiedType: const FullType.nullable(_i8.Int64)));
    }
    if (payload.mapOfListsOfStrings != null) {
      result
        ..add('MapOfListsOfStrings')
        ..add(serializers.serialize(payload.mapOfListsOfStrings,
            specifiedType: const FullType.nullable(
                _i6.BuiltListMultimap, [FullType(String), FullType(String)])));
    }
    if (payload.mapOfMaps != null) {
      result
        ..add('MapOfMaps')
        ..add(serializers.serialize(payload.mapOfMaps,
            specifiedType: const FullType.nullable(_i6.BuiltMap, [
              FullType(String),
              FullType(_i6.BuiltMap, [FullType(String), FullType(String)])
            ])));
    }
    if (payload.mapOfStrings != null) {
      result
        ..add('MapOfStrings')
        ..add(serializers.serialize(payload.mapOfStrings,
            specifiedType: const FullType.nullable(
                _i6.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.mapOfStructs != null) {
      result
        ..add('MapOfStructs')
        ..add(serializers.serialize(payload.mapOfStructs,
            specifiedType: const FullType.nullable(
                _i6.BuiltMap, [FullType(String), FullType(_i7.SimpleStruct)])));
    }
    if (payload.recursiveList != null) {
      result
        ..add('RecursiveList')
        ..add(serializers.serialize(payload.recursiveList,
            specifiedType: const FullType.nullable(
                _i6.BuiltList, [FullType(KitchenSink)])));
    }
    if (payload.recursiveMap != null) {
      result
        ..add('RecursiveMap')
        ..add(serializers.serialize(payload.recursiveMap,
            specifiedType: const FullType.nullable(
                _i6.BuiltMap, [FullType(String), FullType(KitchenSink)])));
    }
    if (payload.recursiveStruct != null) {
      result
        ..add('RecursiveStruct')
        ..add(serializers.serialize(payload.recursiveStruct,
            specifiedType: const FullType.nullable(KitchenSink)));
    }
    if (payload.simpleStruct != null) {
      result
        ..add('SimpleStruct')
        ..add(serializers.serialize(payload.simpleStruct,
            specifiedType: const FullType.nullable(_i7.SimpleStruct)));
    }
    if (payload.string != null) {
      result
        ..add('String')
        ..add(serializers.serialize(payload.string,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.structWithJsonName != null) {
      result
        ..add('StructWithJsonName')
        ..add(serializers.serialize(payload.structWithJsonName,
            specifiedType: const FullType.nullable(_i9.StructWithJsonName)));
    }
    if (payload.timestamp != null) {
      result
        ..add('Timestamp')
        ..add(serializers.serialize(payload.timestamp,
            specifiedType: const FullType.nullable(DateTime)));
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

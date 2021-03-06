// Generated with smithy-dart 0.5.5. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.my_union;

import 'dart:typed_data' as _i2;

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/foo_enum.dart' as _i3;
import 'package:rest_json1/src/rest_json_protocol/model/greeting_struct.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/model/renamed_greeting.dart'
    as _i5;
import 'package:smithy/smithy.dart' as _i1;

/// A union with a representative set of types for members.
abstract class MyUnion extends _i1.SmithyUnion<MyUnion> {
  const MyUnion._();

  const factory MyUnion.blobValue(_i2.Uint8List blobValue) = _MyUnionBlobValue;

  const factory MyUnion.booleanValue(bool booleanValue) = _MyUnionBooleanValue;

  const factory MyUnion.enumValue(_i3.FooEnum enumValue) = _MyUnionEnumValue;

  const factory MyUnion.listValue(_i4.BuiltList<String> listValue) =
      _MyUnionListValue;

  const factory MyUnion.mapValue(_i4.BuiltMap<String, String> mapValue) =
      _MyUnionMapValue;

  const factory MyUnion.numberValue(int numberValue) = _MyUnionNumberValue;

  const factory MyUnion.renamedStructureValue(
          _i5.RenamedGreeting renamedStructureValue) =
      _MyUnionRenamedStructureValue;

  const factory MyUnion.stringValue(String stringValue) = _MyUnionStringValue;

  const factory MyUnion.structureValue(_i6.GreetingStruct structureValue) =
      _MyUnionStructureValue;

  const factory MyUnion.timestampValue(DateTime timestampValue) =
      _MyUnionTimestampValue;

  const factory MyUnion.sdkUnknown(String name, Object value) =
      _MyUnionSdkUnknown;

  static const List<_i1.SmithySerializer<MyUnion>> serializers = [
    _MyUnionRestJson1Serializer()
  ];

  _i2.Uint8List? get blobValue => null;
  bool? get booleanValue => null;
  _i3.FooEnum? get enumValue => null;
  _i4.BuiltList<String>? get listValue => null;
  _i4.BuiltMap<String, String>? get mapValue => null;
  int? get numberValue => null;
  _i5.RenamedGreeting? get renamedStructureValue => null;
  String? get stringValue => null;
  _i6.GreetingStruct? get structureValue => null;
  DateTime? get timestampValue => null;
  @override
  Object get value => (blobValue ??
      booleanValue ??
      enumValue ??
      listValue ??
      mapValue ??
      numberValue ??
      renamedStructureValue ??
      stringValue ??
      structureValue ??
      timestampValue)!;
  @override
  T? when<T>(
      {T Function(_i2.Uint8List)? blobValue,
      T Function(bool)? booleanValue,
      T Function(_i3.FooEnum)? enumValue,
      T Function(_i4.BuiltList<String>)? listValue,
      T Function(_i4.BuiltMap<String, String>)? mapValue,
      T Function(int)? numberValue,
      T Function(_i5.RenamedGreeting)? renamedStructureValue,
      T Function(String)? stringValue,
      T Function(_i6.GreetingStruct)? structureValue,
      T Function(DateTime)? timestampValue,
      T Function(String, Object)? sdkUnknown}) {
    if (this is _MyUnionBlobValue) {
      return blobValue?.call((this as _MyUnionBlobValue).blobValue);
    }
    if (this is _MyUnionBooleanValue) {
      return booleanValue?.call((this as _MyUnionBooleanValue).booleanValue);
    }
    if (this is _MyUnionEnumValue) {
      return enumValue?.call((this as _MyUnionEnumValue).enumValue);
    }
    if (this is _MyUnionListValue) {
      return listValue?.call((this as _MyUnionListValue).listValue);
    }
    if (this is _MyUnionMapValue) {
      return mapValue?.call((this as _MyUnionMapValue).mapValue);
    }
    if (this is _MyUnionNumberValue) {
      return numberValue?.call((this as _MyUnionNumberValue).numberValue);
    }
    if (this is _MyUnionRenamedStructureValue) {
      return renamedStructureValue
          ?.call((this as _MyUnionRenamedStructureValue).renamedStructureValue);
    }
    if (this is _MyUnionStringValue) {
      return stringValue?.call((this as _MyUnionStringValue).stringValue);
    }
    if (this is _MyUnionStructureValue) {
      return structureValue
          ?.call((this as _MyUnionStructureValue).structureValue);
    }
    if (this is _MyUnionTimestampValue) {
      return timestampValue
          ?.call((this as _MyUnionTimestampValue).timestampValue);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'MyUnion');
    if (blobValue != null) {
      helper.add(r'blobValue', blobValue);
    }
    if (booleanValue != null) {
      helper.add(r'booleanValue', booleanValue);
    }
    if (enumValue != null) {
      helper.add(r'enumValue', enumValue);
    }
    if (listValue != null) {
      helper.add(r'listValue', listValue);
    }
    if (mapValue != null) {
      helper.add(r'mapValue', mapValue);
    }
    if (numberValue != null) {
      helper.add(r'numberValue', numberValue);
    }
    if (renamedStructureValue != null) {
      helper.add(r'renamedStructureValue', renamedStructureValue);
    }
    if (stringValue != null) {
      helper.add(r'stringValue', stringValue);
    }
    if (structureValue != null) {
      helper.add(r'structureValue', structureValue);
    }
    if (timestampValue != null) {
      helper.add(r'timestampValue', timestampValue);
    }
    return helper.toString();
  }
}

class _MyUnionBlobValue extends MyUnion {
  const _MyUnionBlobValue(this.blobValue) : super._();

  @override
  final _i2.Uint8List blobValue;

  @override
  String get name => 'blobValue';
}

class _MyUnionBooleanValue extends MyUnion {
  const _MyUnionBooleanValue(this.booleanValue) : super._();

  @override
  final bool booleanValue;

  @override
  String get name => 'booleanValue';
}

class _MyUnionEnumValue extends MyUnion {
  const _MyUnionEnumValue(this.enumValue) : super._();

  @override
  final _i3.FooEnum enumValue;

  @override
  String get name => 'enumValue';
}

class _MyUnionListValue extends MyUnion {
  const _MyUnionListValue(this.listValue) : super._();

  @override
  final _i4.BuiltList<String> listValue;

  @override
  String get name => 'listValue';
}

class _MyUnionMapValue extends MyUnion {
  const _MyUnionMapValue(this.mapValue) : super._();

  @override
  final _i4.BuiltMap<String, String> mapValue;

  @override
  String get name => 'mapValue';
}

class _MyUnionNumberValue extends MyUnion {
  const _MyUnionNumberValue(this.numberValue) : super._();

  @override
  final int numberValue;

  @override
  String get name => 'numberValue';
}

class _MyUnionRenamedStructureValue extends MyUnion {
  const _MyUnionRenamedStructureValue(this.renamedStructureValue) : super._();

  @override
  final _i5.RenamedGreeting renamedStructureValue;

  @override
  String get name => 'renamedStructureValue';
}

class _MyUnionStringValue extends MyUnion {
  const _MyUnionStringValue(this.stringValue) : super._();

  @override
  final String stringValue;

  @override
  String get name => 'stringValue';
}

class _MyUnionStructureValue extends MyUnion {
  const _MyUnionStructureValue(this.structureValue) : super._();

  @override
  final _i6.GreetingStruct structureValue;

  @override
  String get name => 'structureValue';
}

class _MyUnionTimestampValue extends MyUnion {
  const _MyUnionTimestampValue(this.timestampValue) : super._();

  @override
  final DateTime timestampValue;

  @override
  String get name => 'timestampValue';
}

class _MyUnionSdkUnknown extends MyUnion {
  const _MyUnionSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class _MyUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MyUnion> {
  const _MyUnionRestJson1Serializer() : super('MyUnion');

  @override
  Iterable<Type> get types => const [MyUnion];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MyUnion deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'blobValue':
        return MyUnion.blobValue((serializers.deserialize(value,
            specifiedType: const FullType(_i2.Uint8List)) as _i2.Uint8List));
      case 'booleanValue':
        return MyUnion.booleanValue((serializers.deserialize(value,
            specifiedType: const FullType(bool)) as bool));
      case 'enumValue':
        return MyUnion.enumValue((serializers.deserialize(value,
            specifiedType: const FullType(_i3.FooEnum)) as _i3.FooEnum));
      case 'listValue':
        return MyUnion.listValue((serializers.deserialize(value,
                specifiedType:
                    const FullType(_i4.BuiltList, [FullType(String)]))
            as _i4.BuiltList<String>));
      case 'mapValue':
        return MyUnion.mapValue((serializers.deserialize(value,
                specifiedType: const FullType(
                    _i4.BuiltMap, [FullType(String), FullType(String)]))
            as _i4.BuiltMap<String, String>));
      case 'numberValue':
        return MyUnion.numberValue((serializers.deserialize(value,
            specifiedType: const FullType(int)) as int));
      case 'renamedStructureValue':
        return MyUnion.renamedStructureValue((serializers.deserialize(value,
                specifiedType: const FullType(_i5.RenamedGreeting))
            as _i5.RenamedGreeting));
      case 'stringValue':
        return MyUnion.stringValue((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
      case 'structureValue':
        return MyUnion.structureValue((serializers.deserialize(value,
                specifiedType: const FullType(_i6.GreetingStruct))
            as _i6.GreetingStruct));
      case 'timestampValue':
        return MyUnion.timestampValue((serializers.deserialize(value,
            specifiedType: const FullType(DateTime)) as DateTime));
    }
    return MyUnion.sdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as MyUnion);
    return [
      object.name,
      object.when<Object?>(
          blobValue: (_i2.Uint8List blobValue) => serializers.serialize(blobValue,
              specifiedType: const FullType(_i2.Uint8List)),
          booleanValue: (bool booleanValue) => serializers
              .serialize(booleanValue, specifiedType: const FullType(bool)),
          enumValue: (_i3.FooEnum enumValue) => serializers.serialize(enumValue,
              specifiedType: const FullType(_i3.FooEnum)),
          listValue: (_i4.BuiltList<String> listValue) => serializers.serialize(listValue,
              specifiedType: const FullType(_i4.BuiltList, [FullType(String)])),
          mapValue: (_i4.BuiltMap<String, String> mapValue) => serializers.serialize(mapValue,
              specifiedType: const FullType(
                  _i4.BuiltMap, [FullType(String), FullType(String)])),
          numberValue: (int numberValue) => serializers.serialize(numberValue,
              specifiedType: const FullType(int)),
          renamedStructureValue: (_i5.RenamedGreeting renamedStructureValue) =>
              serializers.serialize(renamedStructureValue, specifiedType: const FullType(_i5.RenamedGreeting)),
          stringValue: (String stringValue) => serializers.serialize(stringValue, specifiedType: const FullType(String)),
          structureValue: (_i6.GreetingStruct structureValue) => serializers.serialize(structureValue, specifiedType: const FullType(_i6.GreetingStruct)),
          timestampValue: (DateTime timestampValue) => serializers.serialize(timestampValue, specifiedType: const FullType(DateTime)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}

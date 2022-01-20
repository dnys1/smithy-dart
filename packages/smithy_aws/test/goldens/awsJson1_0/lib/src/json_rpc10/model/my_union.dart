// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.model.my_union;

import 'dart:typed_data' as _i2;

import 'package:aws_json1_0/src/json_rpc10/model/foo_enum.dart' as _i3;
import 'package:aws_json1_0/src/json_rpc10/model/greeting_struct.dart' as _i5;
import 'package:built_collection/built_collection.dart' as _i4;
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

  const factory MyUnion.stringValue(String stringValue) = _MyUnionStringValue;

  const factory MyUnion.structureValue(_i5.GreetingStruct structureValue) =
      _MyUnionStructureValue;

  const factory MyUnion.timestampValue(DateTime timestampValue) =
      _MyUnionTimestampValue;

  const factory MyUnion.sdkUnknown(String name, Object value) =
      _MyUnionSdkUnknown;

  _i2.Uint8List? get blobValue => null;
  bool? get booleanValue => null;
  _i3.FooEnum? get enumValue => null;
  _i4.BuiltList<String>? get listValue => null;
  _i4.BuiltMap<String, String>? get mapValue => null;
  int? get numberValue => null;
  String? get stringValue => null;
  _i5.GreetingStruct? get structureValue => null;
  DateTime? get timestampValue => null;
  Object? get sdkUnknown => null;
  @override
  Object get value => (blobValue ??
      booleanValue ??
      enumValue ??
      listValue ??
      mapValue ??
      numberValue ??
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
      T Function(String)? stringValue,
      T Function(_i5.GreetingStruct)? structureValue,
      T Function(DateTime)? timestampValue,
      T Function(Object)? sdkUnknown}) {
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
    if (this is _MyUnionSdkUnknown) {
      return sdkUnknown?.call((this as _MyUnionSdkUnknown).value);
    }
    throw StateError('Unknown union value: $this');
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
  final _i5.GreetingStruct structureValue;

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

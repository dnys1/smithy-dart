// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.xml_union_shape;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_nested_union_struct.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

abstract class XmlUnionShape extends _i1.SmithyUnion<XmlUnionShape> {
  const XmlUnionShape._();

  const factory XmlUnionShape.booleanValue(bool booleanValue) =
      _XmlUnionShapeBooleanValue;

  const factory XmlUnionShape.byteValue(int byteValue) =
      _XmlUnionShapeByteValue;

  const factory XmlUnionShape.doubleValue(double doubleValue) =
      _XmlUnionShapeDoubleValue;

  const factory XmlUnionShape.floatValue(double floatValue) =
      _XmlUnionShapeFloatValue;

  const factory XmlUnionShape.integerValue(int integerValue) =
      _XmlUnionShapeIntegerValue;

  const factory XmlUnionShape.longValue(_i2.Int64 longValue) =
      _XmlUnionShapeLongValue;

  const factory XmlUnionShape.shortValue(int shortValue) =
      _XmlUnionShapeShortValue;

  const factory XmlUnionShape.stringValue(String stringValue) =
      _XmlUnionShapeStringValue;

  const factory XmlUnionShape.structValue(
      _i3.XmlNestedUnionStruct structValue) = _XmlUnionShapeStructValue;

  const factory XmlUnionShape.unionValue(XmlUnionShape unionValue) =
      _XmlUnionShapeUnionValue;

  const factory XmlUnionShape.sdkUnknown(String name, Object value) =
      _XmlUnionShapeSdkUnknown;

  static const List<_i1.SmithySerializer<XmlUnionShape>> serializers = [
    _XmlUnionShapeRestXmlSerializer()
  ];

  bool? get booleanValue => null;
  int? get byteValue => null;
  double? get doubleValue => null;
  double? get floatValue => null;
  int? get integerValue => null;
  _i2.Int64? get longValue => null;
  int? get shortValue => null;
  String? get stringValue => null;
  _i3.XmlNestedUnionStruct? get structValue => null;
  XmlUnionShape? get unionValue => null;
  @override
  Object get value => (booleanValue ??
      byteValue ??
      doubleValue ??
      floatValue ??
      integerValue ??
      longValue ??
      shortValue ??
      stringValue ??
      structValue ??
      unionValue)!;
  @override
  T? when<T>(
      {T Function(bool)? booleanValue,
      T Function(int)? byteValue,
      T Function(double)? doubleValue,
      T Function(double)? floatValue,
      T Function(int)? integerValue,
      T Function(_i2.Int64)? longValue,
      T Function(int)? shortValue,
      T Function(String)? stringValue,
      T Function(_i3.XmlNestedUnionStruct)? structValue,
      T Function(XmlUnionShape)? unionValue,
      T Function(String, Object)? sdkUnknown}) {
    if (this is _XmlUnionShapeBooleanValue) {
      return booleanValue
          ?.call((this as _XmlUnionShapeBooleanValue).booleanValue);
    }
    if (this is _XmlUnionShapeByteValue) {
      return byteValue?.call((this as _XmlUnionShapeByteValue).byteValue);
    }
    if (this is _XmlUnionShapeDoubleValue) {
      return doubleValue?.call((this as _XmlUnionShapeDoubleValue).doubleValue);
    }
    if (this is _XmlUnionShapeFloatValue) {
      return floatValue?.call((this as _XmlUnionShapeFloatValue).floatValue);
    }
    if (this is _XmlUnionShapeIntegerValue) {
      return integerValue
          ?.call((this as _XmlUnionShapeIntegerValue).integerValue);
    }
    if (this is _XmlUnionShapeLongValue) {
      return longValue?.call((this as _XmlUnionShapeLongValue).longValue);
    }
    if (this is _XmlUnionShapeShortValue) {
      return shortValue?.call((this as _XmlUnionShapeShortValue).shortValue);
    }
    if (this is _XmlUnionShapeStringValue) {
      return stringValue?.call((this as _XmlUnionShapeStringValue).stringValue);
    }
    if (this is _XmlUnionShapeStructValue) {
      return structValue?.call((this as _XmlUnionShapeStructValue).structValue);
    }
    if (this is _XmlUnionShapeUnionValue) {
      return unionValue?.call((this as _XmlUnionShapeUnionValue).unionValue);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'XmlUnionShape');
    if (booleanValue != null) {
      helper.add(r'booleanValue', booleanValue);
    }
    if (byteValue != null) {
      helper.add(r'byteValue', byteValue);
    }
    if (doubleValue != null) {
      helper.add(r'doubleValue', doubleValue);
    }
    if (floatValue != null) {
      helper.add(r'floatValue', floatValue);
    }
    if (integerValue != null) {
      helper.add(r'integerValue', integerValue);
    }
    if (longValue != null) {
      helper.add(r'longValue', longValue);
    }
    if (shortValue != null) {
      helper.add(r'shortValue', shortValue);
    }
    if (stringValue != null) {
      helper.add(r'stringValue', stringValue);
    }
    if (structValue != null) {
      helper.add(r'structValue', structValue);
    }
    if (unionValue != null) {
      helper.add(r'unionValue', unionValue);
    }
    return helper.toString();
  }
}

class _XmlUnionShapeBooleanValue extends XmlUnionShape {
  const _XmlUnionShapeBooleanValue(this.booleanValue) : super._();

  @override
  final bool booleanValue;

  @override
  String get name => 'booleanValue';
}

class _XmlUnionShapeByteValue extends XmlUnionShape {
  const _XmlUnionShapeByteValue(this.byteValue) : super._();

  @override
  final int byteValue;

  @override
  String get name => 'byteValue';
}

class _XmlUnionShapeDoubleValue extends XmlUnionShape {
  const _XmlUnionShapeDoubleValue(this.doubleValue) : super._();

  @override
  final double doubleValue;

  @override
  String get name => 'doubleValue';
}

class _XmlUnionShapeFloatValue extends XmlUnionShape {
  const _XmlUnionShapeFloatValue(this.floatValue) : super._();

  @override
  final double floatValue;

  @override
  String get name => 'floatValue';
}

class _XmlUnionShapeIntegerValue extends XmlUnionShape {
  const _XmlUnionShapeIntegerValue(this.integerValue) : super._();

  @override
  final int integerValue;

  @override
  String get name => 'integerValue';
}

class _XmlUnionShapeLongValue extends XmlUnionShape {
  const _XmlUnionShapeLongValue(this.longValue) : super._();

  @override
  final _i2.Int64 longValue;

  @override
  String get name => 'longValue';
}

class _XmlUnionShapeShortValue extends XmlUnionShape {
  const _XmlUnionShapeShortValue(this.shortValue) : super._();

  @override
  final int shortValue;

  @override
  String get name => 'shortValue';
}

class _XmlUnionShapeStringValue extends XmlUnionShape {
  const _XmlUnionShapeStringValue(this.stringValue) : super._();

  @override
  final String stringValue;

  @override
  String get name => 'stringValue';
}

class _XmlUnionShapeStructValue extends XmlUnionShape {
  const _XmlUnionShapeStructValue(this.structValue) : super._();

  @override
  final _i3.XmlNestedUnionStruct structValue;

  @override
  String get name => 'structValue';
}

class _XmlUnionShapeUnionValue extends XmlUnionShape {
  const _XmlUnionShapeUnionValue(this.unionValue) : super._();

  @override
  final XmlUnionShape unionValue;

  @override
  String get name => 'unionValue';
}

class _XmlUnionShapeSdkUnknown extends XmlUnionShape {
  const _XmlUnionShapeSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class _XmlUnionShapeRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlUnionShape> {
  const _XmlUnionShapeRestXmlSerializer() : super('XmlUnionShape');

  @override
  Iterable<Type> get types => const [XmlUnionShape];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  XmlUnionShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'booleanValue':
        return XmlUnionShape.booleanValue((serializers.deserialize(value,
            specifiedType: const FullType(bool)) as bool));
      case 'byteValue':
        return XmlUnionShape.byteValue((serializers.deserialize(value,
            specifiedType: const FullType(int)) as int));
      case 'doubleValue':
        return XmlUnionShape.doubleValue((serializers.deserialize(value,
            specifiedType: const FullType(double)) as double));
      case 'floatValue':
        return XmlUnionShape.floatValue((serializers.deserialize(value,
            specifiedType: const FullType(double)) as double));
      case 'integerValue':
        return XmlUnionShape.integerValue((serializers.deserialize(value,
            specifiedType: const FullType(int)) as int));
      case 'longValue':
        return XmlUnionShape.longValue((serializers.deserialize(value,
            specifiedType: const FullType(_i2.Int64)) as _i2.Int64));
      case 'shortValue':
        return XmlUnionShape.shortValue((serializers.deserialize(value,
            specifiedType: const FullType(int)) as int));
      case 'stringValue':
        return XmlUnionShape.stringValue((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
      case 'structValue':
        return XmlUnionShape.structValue((serializers.deserialize(value,
                specifiedType: const FullType(_i3.XmlNestedUnionStruct))
            as _i3.XmlNestedUnionStruct));
      case 'unionValue':
        return XmlUnionShape.unionValue((serializers.deserialize(value,
            specifiedType: const FullType(XmlUnionShape)) as XmlUnionShape));
    }
    return XmlUnionShape.sdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as XmlUnionShape);
    return [
      object.name,
      object.when<Object?>(
          booleanValue: (bool booleanValue) => serializers
              .serialize(booleanValue, specifiedType: const FullType(bool)),
          byteValue: (int byteValue) => serializers.serialize(byteValue,
              specifiedType: const FullType(int)),
          doubleValue: (double doubleValue) => serializers
              .serialize(doubleValue, specifiedType: const FullType(double)),
          floatValue: (double floatValue) => serializers.serialize(floatValue,
              specifiedType: const FullType(double)),
          integerValue: (int integerValue) => serializers
              .serialize(integerValue, specifiedType: const FullType(int)),
          longValue: (_i2.Int64 longValue) => serializers.serialize(longValue,
              specifiedType: const FullType(_i2.Int64)),
          shortValue: (int shortValue) => serializers.serialize(shortValue,
              specifiedType: const FullType(int)),
          stringValue: (String stringValue) => serializers
              .serialize(stringValue, specifiedType: const FullType(String)),
          structValue: (_i3.XmlNestedUnionStruct structValue) => serializers.serialize(structValue, specifiedType: const FullType(_i3.XmlNestedUnionStruct)),
          unionValue: (XmlUnionShape unionValue) => serializers.serialize(unionValue, specifiedType: const FullType(XmlUnionShape)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}

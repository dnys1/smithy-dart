import 'package:smithy_ast/src/serializers.dart';
import 'package:smithy_ast/src/shapes/apply_shape.dart';
import 'package:smithy_ast/src/shapes/big_decimal_shape.dart';
import 'package:smithy_ast/src/shapes/big_integer_shape.dart';
import 'package:smithy_ast/src/shapes/blob_shape.dart';
import 'package:smithy_ast/src/shapes/boolean_shape.dart';
import 'package:smithy_ast/src/shapes/byte_shape.dart';
import 'package:smithy_ast/src/shapes/document_shape.dart';
import 'package:smithy_ast/src/shapes/float_shape.dart';
import 'package:smithy_ast/src/shapes/integer_shape.dart';
import 'package:smithy_ast/src/shapes/list_shape.dart';
import 'package:smithy_ast/src/shapes/long_shape.dart';
import 'package:smithy_ast/src/shapes/map_shape.dart';
import 'package:smithy_ast/src/shapes/member_shape.dart';
import 'package:smithy_ast/src/shapes/operation_shape.dart';
import 'package:smithy_ast/src/shapes/resource_shape.dart';
import 'package:smithy_ast/src/shapes/service_shape.dart';
import 'package:smithy_ast/src/shapes/set_shape.dart';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/short_shape.dart';
import 'package:smithy_ast/src/shapes/string_shape.dart';
import 'package:smithy_ast/src/shapes/structure_shape.dart';
import 'package:smithy_ast/src/shapes/timestamp_shape.dart';
import 'package:smithy_ast/src/shapes/union_shape.dart';

import 'double_shape.dart';

part 'shape_type.g.dart';

enum Category {
  simple,
  aggregate,
  service,
  apply,
}

class ShapeType extends EnumClass {
  static const ShapeType apply = _$apply;
  static const ShapeType blob = _$blob;
  static const ShapeType boolean = _$boolean;
  static const ShapeType string = _$string;
  static const ShapeType timestamp = _$timestamp;
  static const ShapeType byte = _$byte;
  static const ShapeType short = _$short;
  static const ShapeType integer = _$integer;
  static const ShapeType long = _$long;
  static const ShapeType float = _$float;
  static const ShapeType document = _$document;
  static const ShapeType double = _$double;
  static const ShapeType bigDecimal = _$bigDecimal;
  static const ShapeType bigInteger = _$bigInteger;
  static const ShapeType list = _$list;
  static const ShapeType set = _$set;
  static const ShapeType map = _$map;
  static const ShapeType structure = _$structure;
  static const ShapeType union = _$union;
  static const ShapeType member = _$member;
  static const ShapeType service = _$service;
  static const ShapeType resource = _$resource;
  static const ShapeType operation = _$operation;

  const ShapeType._(String name) : super(name);

  static BuiltSet<ShapeType> get values => _$shapeTypeValues;
  static ShapeType valueOf(String name) => _$shapeTypeValueOf(name);

  String serialize() {
    return serializers.serializeWith(ShapeType.serializer, this) as String;
  }

  static ShapeType deserialize(String string) {
    return serializers.deserializeWith(ShapeType.serializer, string)
        as ShapeType;
  }

  static Serializer<ShapeType> get serializer => _$shapeTypeSerializer;
}

extension ShapeTypeX on ShapeType {
  Category get category {
    switch (this) {
      case ShapeType.apply:
        return Category.apply;
      case ShapeType.blob:
      case ShapeType.boolean:
      case ShapeType.string:
      case ShapeType.timestamp:
      case ShapeType.byte:
      case ShapeType.short:
      case ShapeType.integer:
      case ShapeType.long:
      case ShapeType.float:
      case ShapeType.document:
      case ShapeType.double:
      case ShapeType.bigDecimal:
      case ShapeType.bigInteger:
        return Category.simple;
      case ShapeType.list:
      case ShapeType.set:
      case ShapeType.map:
      case ShapeType.structure:
      case ShapeType.union:
      case ShapeType.member:
        return Category.aggregate;
      case ShapeType.service:
      case ShapeType.resource:
      case ShapeType.operation:
        return Category.service;
    }
    throw ArgumentError();
  }

  Type get type {
    switch (this) {
      case ShapeType.apply:
        return ApplyShape;
      case ShapeType.bigDecimal:
        return BigDecimalShape;
      case ShapeType.bigInteger:
        return BigIntegerShape;
      case ShapeType.blob:
        return BlobShape;
      case ShapeType.boolean:
        return BooleanShape;
      case ShapeType.byte:
        return ByteShape;
      case ShapeType.document:
        return DocumentShape;
      case ShapeType.double:
        return DoubleShape;
      case ShapeType.float:
        return FloatShape;
      case ShapeType.integer:
        return IntegerShape;
      case ShapeType.list:
        return ListShape;
      case ShapeType.long:
        return LongShape;
      case ShapeType.map:
        return MapShape;
      case ShapeType.member:
        return MemberShape;
      case ShapeType.operation:
        return OperationShape;
      case ShapeType.resource:
        return ResourceShape;
      case ShapeType.service:
        return ServiceShape;
      case ShapeType.set:
        return SetShape;
      case ShapeType.short:
        return ShortShape;
      case ShapeType.string:
        return StringShape;
      case ShapeType.structure:
        return StructureShape;
      case ShapeType.timestamp:
        return TimestampShape;
      case ShapeType.union:
        return UnionShape;
    }
    throw ArgumentError.value(this);
  }
}

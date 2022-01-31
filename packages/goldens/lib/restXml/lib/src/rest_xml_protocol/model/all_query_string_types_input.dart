// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.all_query_string_types_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:meta/meta.dart' as _i6;
import 'package:rest_xml/src/rest_xml_protocol/model/foo_enum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'all_query_string_types_input.g.dart';

abstract class AllQueryStringTypesInput
    with
        _i1.HttpInput<AllQueryStringTypesInputPayload>,
        _i2.AWSEquatable<AllQueryStringTypesInput>
    implements
        Built<AllQueryStringTypesInput, AllQueryStringTypesInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<AllQueryStringTypesInputPayload> {
  factory AllQueryStringTypesInput(
          [void Function(AllQueryStringTypesInputBuilder) updates]) =
      _$AllQueryStringTypesInput;

  const AllQueryStringTypesInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _AllQueryStringTypesInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllQueryStringTypesInputBuilder b) {}
  bool? get queryBoolean;
  _i3.BuiltList<bool>? get queryBooleanList;
  int? get queryByte;
  double? get queryDouble;
  _i3.BuiltList<double>? get queryDoubleList;
  _i4.FooEnum? get queryEnum;
  _i3.BuiltList<_i4.FooEnum>? get queryEnumList;
  double? get queryFloat;
  int? get queryInteger;
  _i3.BuiltList<int>? get queryIntegerList;
  _i3.BuiltSet<int>? get queryIntegerSet;
  _i5.Int64? get queryLong;
  _i3.BuiltMap<String, String>? get queryParamsMapOfStrings;
  int? get queryShort;
  String? get queryString;
  _i3.BuiltList<String>? get queryStringList;
  _i3.BuiltSet<String>? get queryStringSet;
  DateTime? get queryTimestamp;
  _i3.BuiltList<DateTime>? get queryTimestampList;
  @override
  AllQueryStringTypesInputPayload getPayload() =>
      AllQueryStringTypesInputPayload();
  @override
  List<Object?> get props => [
        queryBoolean,
        queryBooleanList,
        queryByte,
        queryDouble,
        queryDoubleList,
        queryEnum,
        queryEnumList,
        queryFloat,
        queryInteger,
        queryIntegerList,
        queryIntegerSet,
        queryLong,
        queryParamsMapOfStrings,
        queryShort,
        queryString,
        queryStringList,
        queryStringSet,
        queryTimestamp,
        queryTimestampList
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllQueryStringTypesInput');
    helper.add('queryBoolean', queryBoolean);
    helper.add('queryBooleanList', queryBooleanList);
    helper.add('queryByte', queryByte);
    helper.add('queryDouble', queryDouble);
    helper.add('queryDoubleList', queryDoubleList);
    helper.add('queryEnum', queryEnum);
    helper.add('queryEnumList', queryEnumList);
    helper.add('queryFloat', queryFloat);
    helper.add('queryInteger', queryInteger);
    helper.add('queryIntegerList', queryIntegerList);
    helper.add('queryIntegerSet', queryIntegerSet);
    helper.add('queryLong', queryLong);
    helper.add('queryParamsMapOfStrings', queryParamsMapOfStrings);
    helper.add('queryShort', queryShort);
    helper.add('queryString', queryString);
    helper.add('queryStringList', queryStringList);
    helper.add('queryStringSet', queryStringSet);
    helper.add('queryTimestamp', queryTimestamp);
    helper.add('queryTimestampList', queryTimestampList);
    return helper.toString();
  }
}

@_i6.internal
@BuiltValue(nestedBuilders: false)
abstract class AllQueryStringTypesInputPayload
    with
        _i2.AWSEquatable<AllQueryStringTypesInputPayload>
    implements
        Built<AllQueryStringTypesInputPayload,
            AllQueryStringTypesInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory AllQueryStringTypesInputPayload(
          [void Function(AllQueryStringTypesInputPayloadBuilder) updates]) =
      _$AllQueryStringTypesInputPayload;

  const AllQueryStringTypesInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllQueryStringTypesInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AllQueryStringTypesInputPayload');
    return helper.toString();
  }
}

class _AllQueryStringTypesInputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<AllQueryStringTypesInputPayload> {
  const _AllQueryStringTypesInputRestXmlSerializer()
      : super('AllQueryStringTypesInput');

  @override
  Iterable<Type> get types => const [
        AllQueryStringTypesInput,
        _$AllQueryStringTypesInput,
        AllQueryStringTypesInputPayload,
        _$AllQueryStringTypesInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  AllQueryStringTypesInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return AllQueryStringTypesInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is AllQueryStringTypesInput
        ? object.getPayload()
        : (object as AllQueryStringTypesInputPayload);
    final result = <Object?>[_i1.XmlElementName('AllQueryStringTypesInput')];
    return result;
  }
}

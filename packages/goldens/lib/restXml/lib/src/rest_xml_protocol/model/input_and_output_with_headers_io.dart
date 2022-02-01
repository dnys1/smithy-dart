// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.input_and_output_with_headers_io;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i6;
import 'package:rest_xml/src/rest_xml_protocol/model/foo_enum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'input_and_output_with_headers_io.g.dart';

abstract class InputAndOutputWithHeadersIo
    with
        _i1.HttpInput<InputAndOutputWithHeadersIoPayload>,
        _i2.AWSEquatable<InputAndOutputWithHeadersIo>
    implements
        Built<InputAndOutputWithHeadersIo, InputAndOutputWithHeadersIoBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<InputAndOutputWithHeadersIoPayload> {
  factory InputAndOutputWithHeadersIo(
          [void Function(InputAndOutputWithHeadersIoBuilder) updates]) =
      _$InputAndOutputWithHeadersIo;

  const InputAndOutputWithHeadersIo._();

  factory InputAndOutputWithHeadersIo.fromResponse(
          InputAndOutputWithHeadersIoPayload payload,
          _i2.AWSStreamedHttpResponse response) =>
      InputAndOutputWithHeadersIo((b) {
        if (response.headers['X-String'] != null) {
          b.headerString = response.headers['X-String']!;
        }
        if (response.headers['X-Byte'] != null) {
          b.headerByte = int.parse(response.headers['X-Byte']!);
        }
        if (response.headers['X-Short'] != null) {
          b.headerShort = int.parse(response.headers['X-Short']!);
        }
        if (response.headers['X-Integer'] != null) {
          b.headerInteger = int.parse(response.headers['X-Integer']!);
        }
        if (response.headers['X-Long'] != null) {
          b.headerLong = _i3.Int64.parseInt(response.headers['X-Long']!);
        }
        if (response.headers['X-Float'] != null) {
          b.headerFloat = double.parse(response.headers['X-Float']!);
        }
        if (response.headers['X-Double'] != null) {
          b.headerDouble = double.parse(response.headers['X-Double']!);
        }
        if (response.headers['X-Boolean1'] != null) {
          b.headerTrueBool = response.headers['X-Boolean1']! == 'true';
        }
        if (response.headers['X-Boolean2'] != null) {
          b.headerFalseBool = response.headers['X-Boolean2']! == 'true';
        }
        if (response.headers['X-StringList'] != null) {
          b.headerStringList.addAll(_i1
              .parseHeader(response.headers['X-StringList']!)
              .map((el) => el.trim()));
        }
        if (response.headers['X-StringSet'] != null) {
          b.headerStringSet.addAll(_i1
              .parseHeader(response.headers['X-StringSet']!)
              .map((el) => el.trim()));
        }
        if (response.headers['X-IntegerList'] != null) {
          b.headerIntegerList.addAll(_i1
              .parseHeader(response.headers['X-IntegerList']!)
              .map((el) => int.parse(el.trim())));
        }
        if (response.headers['X-BooleanList'] != null) {
          b.headerBooleanList.addAll(_i1
              .parseHeader(response.headers['X-BooleanList']!)
              .map((el) => el.trim() == 'true'));
        }
        if (response.headers['X-TimestampList'] != null) {
          b.headerTimestampList.addAll(_i1
              .parseHeader(response.headers['X-TimestampList']!,
                  isTimestampList: true)
              .map((el) => _i1.Timestamp.parse(el.trim(),
                      format: _i1.TimestampFormat.httpDate)
                  .asDateTime));
        }
        if (response.headers['X-Enum'] != null) {
          b.headerEnum =
              _i4.FooEnum.values.byValue(response.headers['X-Enum']!);
        }
        if (response.headers['X-EnumList'] != null) {
          b.headerEnumList.addAll(_i1
              .parseHeader(response.headers['X-EnumList']!)
              .map((el) => _i4.FooEnum.values.byValue(el.trim())));
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    _InputAndOutputWithHeadersIoRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InputAndOutputWithHeadersIoBuilder b) {}
  _i5.BuiltList<bool>? get headerBooleanList;
  int? get headerByte;
  double? get headerDouble;
  _i4.FooEnum? get headerEnum;
  _i5.BuiltList<_i4.FooEnum>? get headerEnumList;
  bool? get headerFalseBool;
  double? get headerFloat;
  int? get headerInteger;
  _i5.BuiltList<int>? get headerIntegerList;
  _i3.Int64? get headerLong;
  int? get headerShort;
  String? get headerString;
  _i5.BuiltList<String>? get headerStringList;
  _i5.BuiltSet<String>? get headerStringSet;
  _i5.BuiltList<DateTime>? get headerTimestampList;
  bool? get headerTrueBool;
  @override
  InputAndOutputWithHeadersIoPayload getPayload() =>
      InputAndOutputWithHeadersIoPayload();
  @override
  List<Object?> get props => [
        headerBooleanList,
        headerByte,
        headerDouble,
        headerEnum,
        headerEnumList,
        headerFalseBool,
        headerFloat,
        headerInteger,
        headerIntegerList,
        headerLong,
        headerShort,
        headerString,
        headerStringList,
        headerStringSet,
        headerTimestampList,
        headerTrueBool
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InputAndOutputWithHeadersIo');
    helper.add('headerBooleanList', headerBooleanList);
    helper.add('headerByte', headerByte);
    helper.add('headerDouble', headerDouble);
    helper.add('headerEnum', headerEnum);
    helper.add('headerEnumList', headerEnumList);
    helper.add('headerFalseBool', headerFalseBool);
    helper.add('headerFloat', headerFloat);
    helper.add('headerInteger', headerInteger);
    helper.add('headerIntegerList', headerIntegerList);
    helper.add('headerLong', headerLong);
    helper.add('headerShort', headerShort);
    helper.add('headerString', headerString);
    helper.add('headerStringList', headerStringList);
    helper.add('headerStringSet', headerStringSet);
    helper.add('headerTimestampList', headerTimestampList);
    helper.add('headerTrueBool', headerTrueBool);
    return helper.toString();
  }
}

@_i6.internal
abstract class InputAndOutputWithHeadersIoPayload
    with
        _i2.AWSEquatable<InputAndOutputWithHeadersIoPayload>
    implements
        Built<InputAndOutputWithHeadersIoPayload,
            InputAndOutputWithHeadersIoPayloadBuilder>,
        _i1.EmptyPayload {
  factory InputAndOutputWithHeadersIoPayload(
          [void Function(InputAndOutputWithHeadersIoPayloadBuilder) updates]) =
      _$InputAndOutputWithHeadersIoPayload;

  const InputAndOutputWithHeadersIoPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InputAndOutputWithHeadersIoPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InputAndOutputWithHeadersIoPayload');
    return helper.toString();
  }
}

class _InputAndOutputWithHeadersIoRestXmlSerializer
    extends _i1.StructuredSmithySerializer<InputAndOutputWithHeadersIoPayload> {
  const _InputAndOutputWithHeadersIoRestXmlSerializer()
      : super('InputAndOutputWithHeadersIo');

  @override
  Iterable<Type> get types => const [
        InputAndOutputWithHeadersIo,
        _$InputAndOutputWithHeadersIo,
        InputAndOutputWithHeadersIoPayload,
        _$InputAndOutputWithHeadersIoPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  InputAndOutputWithHeadersIoPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return InputAndOutputWithHeadersIoPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[_i1.XmlElementName('InputAndOutputWithHeadersIo')];
    return result;
  }
}
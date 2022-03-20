// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.all_query_string_types_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/model/foo_enum.dart' as _i4;
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

  factory AllQueryStringTypesInput.fromRequest(
          AllQueryStringTypesInputPayload payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      AllQueryStringTypesInput((b) {
        if (request.queryParameters['String'] != null) {
          b.queryString = request.queryParameters['String']!;
        }
        if (request.queryParameters['StringList'] != null) {
          b.queryStringList.addAll(_i1
              .parseHeader(request.queryParameters['StringList']!)
              .map((el) => el.trim()));
        }
        if (request.queryParameters['StringSet'] != null) {
          b.queryStringSet.addAll(_i1
              .parseHeader(request.queryParameters['StringSet']!)
              .map((el) => el.trim()));
        }
        if (request.queryParameters['Byte'] != null) {
          b.queryByte = int.parse(request.queryParameters['Byte']!);
        }
        if (request.queryParameters['Short'] != null) {
          b.queryShort = int.parse(request.queryParameters['Short']!);
        }
        if (request.queryParameters['Integer'] != null) {
          b.queryInteger = int.parse(request.queryParameters['Integer']!);
        }
        if (request.queryParameters['IntegerList'] != null) {
          b.queryIntegerList.addAll(_i1
              .parseHeader(request.queryParameters['IntegerList']!)
              .map((el) => int.parse(el.trim())));
        }
        if (request.queryParameters['IntegerSet'] != null) {
          b.queryIntegerSet.addAll(_i1
              .parseHeader(request.queryParameters['IntegerSet']!)
              .map((el) => int.parse(el.trim())));
        }
        if (request.queryParameters['Long'] != null) {
          b.queryLong = _i3.Int64.parseInt(request.queryParameters['Long']!);
        }
        if (request.queryParameters['Float'] != null) {
          b.queryFloat = double.parse(request.queryParameters['Float']!);
        }
        if (request.queryParameters['Double'] != null) {
          b.queryDouble = double.parse(request.queryParameters['Double']!);
        }
        if (request.queryParameters['DoubleList'] != null) {
          b.queryDoubleList.addAll(_i1
              .parseHeader(request.queryParameters['DoubleList']!)
              .map((el) => double.parse(el.trim())));
        }
        if (request.queryParameters['Boolean'] != null) {
          b.queryBoolean = request.queryParameters['Boolean']! == 'true';
        }
        if (request.queryParameters['BooleanList'] != null) {
          b.queryBooleanList.addAll(_i1
              .parseHeader(request.queryParameters['BooleanList']!)
              .map((el) => el.trim() == 'true'));
        }
        if (request.queryParameters['Timestamp'] != null) {
          b.queryTimestamp = _i1.Timestamp.parse(
                  request.queryParameters['Timestamp']!,
                  format: _i1.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (request.queryParameters['TimestampList'] != null) {
          b.queryTimestampList.addAll(_i1
              .parseHeader(request.queryParameters['TimestampList']!,
                  isTimestampList: true)
              .map((el) => _i1.Timestamp.parse(el.trim(),
                      format: _i1.TimestampFormat.httpDate)
                  .asDateTime));
        }
        if (request.queryParameters['Enum'] != null) {
          b.queryEnum =
              _i4.FooEnum.values.byValue(request.queryParameters['Enum']!);
        }
        if (request.queryParameters['EnumList'] != null) {
          b.queryEnumList.addAll(_i1
              .parseHeader(request.queryParameters['EnumList']!)
              .map((el) => _i4.FooEnum.values.byValue(el.trim())));
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    _AllQueryStringTypesInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllQueryStringTypesInputBuilder b) {}
  bool? get queryBoolean;
  _i5.BuiltList<bool>? get queryBooleanList;
  int? get queryByte;
  double? get queryDouble;
  _i5.BuiltList<double>? get queryDoubleList;
  _i4.FooEnum? get queryEnum;
  _i5.BuiltList<_i4.FooEnum>? get queryEnumList;
  double? get queryFloat;
  int? get queryInteger;
  _i5.BuiltList<int>? get queryIntegerList;
  _i5.BuiltSet<int>? get queryIntegerSet;
  _i3.Int64? get queryLong;
  _i5.BuiltListMultimap<String, String>? get queryParamsMapOfStringList;
  int? get queryShort;
  String? get queryString;
  _i5.BuiltList<String>? get queryStringList;
  _i5.BuiltSet<String>? get queryStringSet;
  DateTime? get queryTimestamp;
  _i5.BuiltList<DateTime>? get queryTimestampList;
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
        queryParamsMapOfStringList,
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
    helper.add('queryParamsMapOfStringList', queryParamsMapOfStringList);
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

class _AllQueryStringTypesInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<AllQueryStringTypesInputPayload> {
  const _AllQueryStringTypesInputRestJson1Serializer()
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
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  AllQueryStringTypesInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return AllQueryStringTypesInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

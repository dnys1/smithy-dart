// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.all_query_string_types_input;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:meta/meta.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/foo_enum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'all_query_string_types_input.g.dart';

abstract class AllQueryStringTypesInput
    with _i1.HttpInput<AllQueryStringTypesInputPayload>
    implements
        Built<AllQueryStringTypesInput, AllQueryStringTypesInputBuilder>,
        _i1.EmptyPayload {
  factory AllQueryStringTypesInput(
          [void Function(AllQueryStringTypesInputBuilder) updates]) =
      _$AllQueryStringTypesInput;

  const AllQueryStringTypesInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _AllQueryStringTypesInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllQueryStringTypesInputBuilder b) {}
  bool? get queryBoolean;
  _i2.BuiltList<bool>? get queryBooleanList;
  int? get queryByte;
  double? get queryDouble;
  _i2.BuiltList<double>? get queryDoubleList;
  _i3.FooEnum? get queryEnum;
  _i2.BuiltList<_i3.FooEnum>? get queryEnumList;
  double? get queryFloat;
  int? get queryInteger;
  _i2.BuiltList<int>? get queryIntegerList;
  _i2.BuiltSet<int>? get queryIntegerSet;
  _i4.Int64? get queryLong;
  _i2.BuiltListMultimap<String, String>? get queryParamsMapOfStringList;
  int? get queryShort;
  String? get queryString;
  _i2.BuiltList<String>? get queryStringList;
  _i2.BuiltSet<String>? get queryStringSet;
  DateTime? get queryTimestamp;
  _i2.BuiltList<DateTime>? get queryTimestampList;
  AllQueryStringTypesInputPayload getPayload() =>
      AllQueryStringTypesInputPayload();
}

@_i5.internal
@BuiltValue(nestedBuilders: false)
abstract class AllQueryStringTypesInputPayload
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

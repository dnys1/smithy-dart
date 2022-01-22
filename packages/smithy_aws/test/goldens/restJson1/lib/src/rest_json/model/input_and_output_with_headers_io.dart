// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.input_and_output_with_headers_io;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:meta/meta.dart' as _i5;
import 'package:rest_json1/src/rest_json/model/foo_enum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'input_and_output_with_headers_io.g.dart';

abstract class InputAndOutputWithHeadersIo
    with _i1.HttpInput<InputAndOutputWithHeadersIoPayload>
    implements
        Built<InputAndOutputWithHeadersIo, InputAndOutputWithHeadersIoBuilder>,
        _i1.EmptyPayload {
  factory InputAndOutputWithHeadersIo(
          [void Function(InputAndOutputWithHeadersIoBuilder) updates]) =
      _$InputAndOutputWithHeadersIo;

  const InputAndOutputWithHeadersIo._();

  static const List<_i1.SmithySerializer> serializers = [
    _InputAndOutputWithHeadersIoRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InputAndOutputWithHeadersIoBuilder b) {}
  _i2.BuiltList<bool>? get headerBooleanList;
  int? get headerByte;
  double? get headerDouble;
  _i3.FooEnum? get headerEnum;
  _i2.BuiltList<_i3.FooEnum>? get headerEnumList;
  bool? get headerFalseBool;
  double? get headerFloat;
  int? get headerInteger;
  _i2.BuiltList<int>? get headerIntegerList;
  _i4.Int64? get headerLong;
  int? get headerShort;
  String? get headerString;
  _i2.BuiltList<String>? get headerStringList;
  _i2.BuiltSet<String>? get headerStringSet;
  _i2.BuiltList<DateTime>? get headerTimestampList;
  bool? get headerTrueBool;
  InputAndOutputWithHeadersIoPayload getPayload() =>
      InputAndOutputWithHeadersIoPayload();
}

@_i5.internal
@BuiltValue(nestedBuilders: false)
abstract class InputAndOutputWithHeadersIoPayload
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
}

class _InputAndOutputWithHeadersIoRestJson1Serializer
    extends _i1.StructuredSmithySerializer<InputAndOutputWithHeadersIoPayload> {
  const _InputAndOutputWithHeadersIoRestJson1Serializer()
      : super('InputAndOutputWithHeadersIO');

  @override
  Iterable<Type> get types => const [
        InputAndOutputWithHeadersIo,
        _$InputAndOutputWithHeadersIo,
        InputAndOutputWithHeadersIoPayload,
        _$InputAndOutputWithHeadersIoPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  InputAndOutputWithHeadersIoPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return InputAndOutputWithHeadersIoPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

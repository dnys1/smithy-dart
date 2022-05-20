// Generated with smithy-dart 0.5.0. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.enum_payload_input;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/string_enum.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'enum_payload_input.g.dart';

abstract class EnumPayloadInput
    with _i1.HttpInput<_i2.StringEnum>, _i3.AWSEquatable<EnumPayloadInput>
    implements
        Built<EnumPayloadInput, EnumPayloadInputBuilder>,
        _i1.HasPayload<_i2.StringEnum> {
  factory EnumPayloadInput({_i2.StringEnum? payload}) {
    return _$EnumPayloadInput._(payload: payload);
  }

  factory EnumPayloadInput.build(
      [void Function(EnumPayloadInputBuilder) updates]) = _$EnumPayloadInput;

  const EnumPayloadInput._();

  factory EnumPayloadInput.fromRequest(
          _i2.StringEnum? payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      EnumPayloadInput.build((b) {
        b.payload = payload;
      });

  /// Constructs a [EnumPayloadInput] from a [payload] and [response].
  factory EnumPayloadInput.fromResponse(
          _i2.StringEnum? payload, _i3.AWSBaseHttpResponse response) =>
      EnumPayloadInput.build((b) {
        b.payload = payload;
      });

  static const List<_i1.SmithySerializer> serializers = [
    _EnumPayloadInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnumPayloadInputBuilder b) {}
  _i2.StringEnum? get payload;
  @override
  _i2.StringEnum? getPayload() => payload;
  @override
  List<Object?> get props => [payload];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnumPayloadInput');
    helper.add('payload', payload);
    return helper.toString();
  }
}

class _EnumPayloadInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _EnumPayloadInputRestJson1Serializer() : super('EnumPayloadInput');

  @override
  Iterable<Type> get types => const [EnumPayloadInput, _$EnumPayloadInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.StringEnum deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.StringEnum)) as _i2.StringEnum);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is EnumPayloadInput
        ? object.getPayload()
        : (object as _i2.StringEnum?);
    return (serializers.serialize(payload!,
        specifiedType: const FullType(_i2.StringEnum)) as Object);
  }
}

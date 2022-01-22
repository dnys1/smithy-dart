// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.constant_query_string_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'constant_query_string_input.g.dart';

abstract class ConstantQueryStringInput
    with _i1.HttpInput<ConstantQueryStringInputPayload>
    implements
        Built<ConstantQueryStringInput, ConstantQueryStringInputBuilder>,
        _i1.EmptyPayload {
  factory ConstantQueryStringInput(
          [void Function(ConstantQueryStringInputBuilder) updates]) =
      _$ConstantQueryStringInput;

  const ConstantQueryStringInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _ConstantQueryStringInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConstantQueryStringInputBuilder b) {}
  String get hello;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'hello':
        return hello;
    }
    throw _i1.MissingLabelException(this, key);
  }

  ConstantQueryStringInputPayload getPayload() =>
      ConstantQueryStringInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class ConstantQueryStringInputPayload
    implements
        Built<ConstantQueryStringInputPayload,
            ConstantQueryStringInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory ConstantQueryStringInputPayload(
          [void Function(ConstantQueryStringInputPayloadBuilder) updates]) =
      _$ConstantQueryStringInputPayload;

  const ConstantQueryStringInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConstantQueryStringInputPayloadBuilder b) {}
}

class _ConstantQueryStringInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<ConstantQueryStringInputPayload> {
  const _ConstantQueryStringInputRestJson1Serializer()
      : super('ConstantQueryStringInput');

  @override
  Iterable<Type> get types => const [
        ConstantQueryStringInput,
        _$ConstantQueryStringInput,
        ConstantQueryStringInputPayload,
        _$ConstantQueryStringInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  ConstantQueryStringInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ConstantQueryStringInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

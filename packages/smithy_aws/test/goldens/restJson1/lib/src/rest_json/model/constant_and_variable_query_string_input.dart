// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.constant_and_variable_query_string_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'constant_and_variable_query_string_input.g.dart';

abstract class ConstantAndVariableQueryStringInput
    with
        _i1.HttpInput<ConstantAndVariableQueryStringInputPayload>,
        _i2.AWSEquatable<ConstantAndVariableQueryStringInput>
    implements
        Built<ConstantAndVariableQueryStringInput,
            ConstantAndVariableQueryStringInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<ConstantAndVariableQueryStringInputPayload> {
  factory ConstantAndVariableQueryStringInput(
          [void Function(ConstantAndVariableQueryStringInputBuilder) updates]) =
      _$ConstantAndVariableQueryStringInput;

  const ConstantAndVariableQueryStringInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _ConstantAndVariableQueryStringInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConstantAndVariableQueryStringInputBuilder b) {}
  String? get baz;
  String? get maybeSet;
  @override
  ConstantAndVariableQueryStringInputPayload getPayload() =>
      ConstantAndVariableQueryStringInputPayload();
  @override
  List<Object?> get props => [baz, maybeSet];
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class ConstantAndVariableQueryStringInputPayload
    with
        _i2.AWSEquatable<ConstantAndVariableQueryStringInputPayload>
    implements
        Built<ConstantAndVariableQueryStringInputPayload,
            ConstantAndVariableQueryStringInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory ConstantAndVariableQueryStringInputPayload(
      [void Function(ConstantAndVariableQueryStringInputPayloadBuilder)
          updates]) = _$ConstantAndVariableQueryStringInputPayload;

  const ConstantAndVariableQueryStringInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConstantAndVariableQueryStringInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
}

class _ConstantAndVariableQueryStringInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<ConstantAndVariableQueryStringInputPayload> {
  const _ConstantAndVariableQueryStringInputRestJson1Serializer()
      : super('ConstantAndVariableQueryStringInput');

  @override
  Iterable<Type> get types => const [
        ConstantAndVariableQueryStringInput,
        _$ConstantAndVariableQueryStringInput,
        ConstantAndVariableQueryStringInputPayload,
        _$ConstantAndVariableQueryStringInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  ConstantAndVariableQueryStringInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ConstantAndVariableQueryStringInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

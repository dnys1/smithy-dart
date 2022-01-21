// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.error_without_members;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'error_without_members.g.dart';

abstract class ErrorWithoutMembers
    with _i1.SmithyException
    implements
        Built<ErrorWithoutMembers, ErrorWithoutMembersBuilder>,
        _i1.HasPayload<ErrorWithoutMembersPayload> {
  factory ErrorWithoutMembers(
          [void Function(ErrorWithoutMembersBuilder) updates]) =
      _$ErrorWithoutMembers;

  const ErrorWithoutMembers._();

  static const List<_i1.SmithySerializer> serializers = [
    _ErrorWithoutMembersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorWithoutMembersBuilder b) {}
  @override
  ErrorWithoutMembersPayload getPayload() => ErrorWithoutMembersPayload();
  @override
  String? get message => null;
  @override
  bool get isRetryable => false;
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class ErrorWithoutMembersPayload
    implements
        Built<ErrorWithoutMembersPayload, ErrorWithoutMembersPayloadBuilder> {
  factory ErrorWithoutMembersPayload(
          [void Function(ErrorWithoutMembersPayloadBuilder) updates]) =
      _$ErrorWithoutMembersPayload;

  const ErrorWithoutMembersPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorWithoutMembersPayloadBuilder b) {}
}

class _ErrorWithoutMembersAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ErrorWithoutMembers> {
  const _ErrorWithoutMembersAwsJson11Serializer()
      : super('ErrorWithoutMembers');

  @override
  Iterable<Type> get types => const [
        ErrorWithoutMembers,
        _$ErrorWithoutMembers,
        ErrorWithoutMembersPayload,
        _$ErrorWithoutMembersPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ErrorWithoutMembers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ErrorWithoutMembersBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

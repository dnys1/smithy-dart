// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.error_without_members;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'error_without_members.g.dart';

abstract class ErrorWithoutMembers
    with _i1.AWSEquatable<ErrorWithoutMembers>
    implements
        Built<ErrorWithoutMembers, ErrorWithoutMembersBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyException {
  factory ErrorWithoutMembers(
          [void Function(ErrorWithoutMembersBuilder) updates]) =
      _$ErrorWithoutMembers;

  const ErrorWithoutMembers._();

  factory ErrorWithoutMembers.fromResponse(
          ErrorWithoutMembers payload, _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _ErrorWithoutMembersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorWithoutMembersBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'aws.protocoltests.json', shape: 'ErrorWithoutMembers');
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ErrorWithoutMembers');
    return helper.toString();
  }
}

class _ErrorWithoutMembersAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ErrorWithoutMembers> {
  const _ErrorWithoutMembersAwsJson11Serializer()
      : super('ErrorWithoutMembers');

  @override
  Iterable<Type> get types =>
      const [ErrorWithoutMembers, _$ErrorWithoutMembers];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
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

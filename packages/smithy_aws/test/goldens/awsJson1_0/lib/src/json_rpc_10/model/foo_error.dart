// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.model.foo_error;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'foo_error.g.dart';

/// This error has test cases that test some of the dark corners of Amazon service framework history. It should only be implemented by clients.
abstract class FooError
    with _i1.AWSEquatable<FooError>
    implements
        Built<FooError, FooErrorBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyException {
  factory FooError([void Function(FooErrorBuilder) updates]) = _$FooError;

  const FooError._();

  factory FooError.fromResponse(
          FooError payload, _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _FooErrorAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FooErrorBuilder b) {}
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'FooError');
    return helper.toString();
  }
}

class _FooErrorAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<FooError> {
  const _FooErrorAwsJson10Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [FooError, _$FooError];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  FooError deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return FooErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

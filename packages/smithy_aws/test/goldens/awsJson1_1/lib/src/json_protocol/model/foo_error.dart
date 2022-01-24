// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.foo_error;

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
    _FooErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FooErrorBuilder b) {}
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [];
}

class _FooErrorAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<FooError> {
  const _FooErrorAwsJson11Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [FooError, _$FooError];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
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

// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.foo_error;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'foo_error.g.dart';

/// This error has test cases that test some of the dark corners of Amazon service
/// framework history. It should only be implemented by clients.
abstract class FooError
    with _i1.SmithyHttpException
    implements Built<FooError, FooErrorBuilder> {
  factory FooError([void Function(FooErrorBuilder) updates]) = _$FooError;

  const FooError._();

  static const List<_i1.SmithySerializer> serializers = [
    _FooErrorRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FooErrorBuilder b) {}
  @override
  _i1.ErrorKind get kind => _i1.ErrorKind.server;
  @override
  int? get statusCode => 500;
  @override
  String? get message => null;
  @override
  bool get isRetryable => false;
}

class _FooErrorRestJson1Serializer
    extends _i1.StructuredSmithySerializer<FooError> {
  const _FooErrorRestJson1Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [FooError, _$FooError];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
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

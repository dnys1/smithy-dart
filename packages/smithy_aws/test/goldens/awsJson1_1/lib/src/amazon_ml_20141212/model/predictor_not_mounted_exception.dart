// Generated code. DO NOT MODIFY.

library aws_json1_1.amazon_ml_20141212.model.predictor_not_mounted_exception;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'predictor_not_mounted_exception.g.dart';

abstract class PredictorNotMountedException
    with
        _i1.SmithyException,
        _i2.AWSEquatable<PredictorNotMountedException>
    implements
        Built<PredictorNotMountedException,
            PredictorNotMountedExceptionBuilder> {
  factory PredictorNotMountedException(
          [void Function(PredictorNotMountedExceptionBuilder) updates]) =
      _$PredictorNotMountedException;

  const PredictorNotMountedException._();

  factory PredictorNotMountedException.fromResponse(
          PredictorNotMountedException payload,
          _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _PredictorNotMountedExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PredictorNotMountedExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i1.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [message];
}

class _PredictorNotMountedExceptionAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PredictorNotMountedException> {
  const _PredictorNotMountedExceptionAwsJson11Serializer()
      : super('PredictorNotMountedException');

  @override
  Iterable<Type> get types =>
      const [PredictorNotMountedException, _$PredictorNotMountedException];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  PredictorNotMountedException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PredictorNotMountedExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as PredictorNotMountedException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(payload.message,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}

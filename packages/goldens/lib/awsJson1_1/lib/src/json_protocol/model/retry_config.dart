// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.retry_config;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1/src/json_protocol/model/retry_mode.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'retry_config.g.dart';

/// Configuration specific to retries.
abstract class RetryConfig
    with _i1.AWSEquatable<RetryConfig>
    implements Built<RetryConfig, RetryConfigBuilder> {
  /// Configuration specific to retries.
  factory RetryConfig([void Function(RetryConfigBuilder) updates]) =
      _$RetryConfig;

  const RetryConfig._();

  static const List<_i2.SmithySerializer> serializers = [
    _RetryConfigAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RetryConfigBuilder b) {}
  int? get maxAttempts;

  /// Controls the strategy used for retries.
  _i3.RetryMode? get mode;
  @override
  List<Object?> get props => [maxAttempts, mode];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RetryConfig');
    helper.add('maxAttempts', maxAttempts);
    helper.add('mode', mode);
    return helper.toString();
  }
}

class _RetryConfigAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RetryConfig> {
  const _RetryConfigAwsJson11Serializer() : super('RetryConfig');

  @override
  Iterable<Type> get types => const [RetryConfig, _$RetryConfig];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  RetryConfig deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RetryConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'max_attempts':
          if (value != null) {
            result.maxAttempts = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'mode':
          if (value != null) {
            result.mode = (serializers.deserialize(value,
                specifiedType: const FullType(_i3.RetryMode)) as _i3.RetryMode);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as RetryConfig);
    final result = <Object?>[];
    if (payload.maxAttempts != null) {
      result
        ..add('max_attempts')
        ..add(serializers.serialize(payload.maxAttempts!,
            specifiedType: const FullType(int)));
    }
    if (payload.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(payload.mode!,
            specifiedType: const FullType(_i3.RetryMode)));
    }
    return result;
  }
}

// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.model.environment_config;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_validation_protocol/model/retry_mode.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'environment_config.g.dart';

/// Config settings that can be set as environment variables.
abstract class EnvironmentConfig
    with _i1.AWSEquatable<EnvironmentConfig>
    implements Built<EnvironmentConfig, EnvironmentConfigBuilder> {
  factory EnvironmentConfig([void Function(EnvironmentConfigBuilder) updates]) =
      _$EnvironmentConfig;

  const EnvironmentConfig._();

  static const List<_i2.SmithySerializer> serializers = [
    _EnvironmentConfigRestJson1Serializer()
  ];

  String? get awsAccessKeyId;
  String? get awsDefaultRegion;
  String? get awsProfile;

  /// Controls the strategy used for retries.
  _i3.RetryMode? get awsRetryMode;
  String? get awsSecretAccessKey;
  String? get awsSessionToken;
  @override
  List<Object?> get props => [
        awsAccessKeyId,
        awsDefaultRegion,
        awsProfile,
        awsRetryMode,
        awsSecretAccessKey,
        awsSessionToken
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnvironmentConfig');
    helper.add('awsAccessKeyId', awsAccessKeyId);
    helper.add('awsDefaultRegion', awsDefaultRegion);
    helper.add('awsProfile', awsProfile);
    helper.add('awsRetryMode', awsRetryMode);
    helper.add('awsSecretAccessKey', awsSecretAccessKey);
    helper.add('awsSessionToken', awsSessionToken);
    return helper.toString();
  }
}

class _EnvironmentConfigRestJson1Serializer
    extends _i2.StructuredSmithySerializer<EnvironmentConfig> {
  const _EnvironmentConfigRestJson1Serializer() : super('EnvironmentConfig');

  @override
  Iterable<Type> get types => const [EnvironmentConfig, _$EnvironmentConfig];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  EnvironmentConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = EnvironmentConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AWS_ACCESS_KEY_ID':
          if (value != null) {
            result.awsAccessKeyId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'AWS_DEFAULT_REGION':
          if (value != null) {
            result.awsDefaultRegion = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'AWS_PROFILE':
          if (value != null) {
            result.awsProfile = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'AWS_RETRY_MODE':
          if (value != null) {
            result.awsRetryMode = (serializers.deserialize(value,
                specifiedType: const FullType(_i3.RetryMode)) as _i3.RetryMode);
          }
          break;
        case 'AWS_SECRET_ACCESS_KEY':
          if (value != null) {
            result.awsSecretAccessKey = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'AWS_SESSION_TOKEN':
          if (value != null) {
            result.awsSessionToken = (serializers.deserialize(value,
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
    final payload = (object as EnvironmentConfig);
    final result = <Object?>[];
    if (payload.awsAccessKeyId != null) {
      result
        ..add('AWS_ACCESS_KEY_ID')
        ..add(serializers.serialize(payload.awsAccessKeyId!,
            specifiedType: const FullType(String)));
    }
    if (payload.awsDefaultRegion != null) {
      result
        ..add('AWS_DEFAULT_REGION')
        ..add(serializers.serialize(payload.awsDefaultRegion!,
            specifiedType: const FullType(String)));
    }
    if (payload.awsProfile != null) {
      result
        ..add('AWS_PROFILE')
        ..add(serializers.serialize(payload.awsProfile!,
            specifiedType: const FullType(String)));
    }
    if (payload.awsRetryMode != null) {
      result
        ..add('AWS_RETRY_MODE')
        ..add(serializers.serialize(payload.awsRetryMode!,
            specifiedType: const FullType(_i3.RetryMode)));
    }
    if (payload.awsSecretAccessKey != null) {
      result
        ..add('AWS_SECRET_ACCESS_KEY')
        ..add(serializers.serialize(payload.awsSecretAccessKey!,
            specifiedType: const FullType(String)));
    }
    if (payload.awsSessionToken != null) {
      result
        ..add('AWS_SESSION_TOKEN')
        ..add(serializers.serialize(payload.awsSessionToken!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}

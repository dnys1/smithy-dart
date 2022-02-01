// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.model.client_config;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_0/src/json_rpc_10/model/retry_config.dart' as _i3;
import 'package:aws_json1_0/src/json_rpc_10/model/s3_config.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'client_config.g.dart';

/// Configuration that is set on the constructed client.
abstract class ClientConfig
    with _i1.AWSEquatable<ClientConfig>
    implements Built<ClientConfig, ClientConfigBuilder> {
  factory ClientConfig([void Function(ClientConfigBuilder) updates]) =
      _$ClientConfig;

  const ClientConfig._();

  static const List<_i2.SmithySerializer> serializers = [
    _ClientConfigAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientConfigBuilder b) {}
  String? get awsAccessKeyId;
  String? get awsProfile;
  String? get awsSecretAccessKey;
  String? get awsSessionToken;
  String? get region;

  /// Configuration specific to retries.
  _i3.RetryConfig? get retryConfig;

  /// Configuration specific to S3.
  _i4.S3Config? get s3;
  @override
  List<Object?> get props => [
        awsAccessKeyId,
        awsProfile,
        awsSecretAccessKey,
        awsSessionToken,
        region,
        retryConfig,
        s3
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientConfig');
    helper.add('awsAccessKeyId', awsAccessKeyId);
    helper.add('awsProfile', awsProfile);
    helper.add('awsSecretAccessKey', awsSecretAccessKey);
    helper.add('awsSessionToken', awsSessionToken);
    helper.add('region', region);
    helper.add('retryConfig', retryConfig);
    helper.add('s3', s3);
    return helper.toString();
  }
}

class _ClientConfigAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ClientConfig> {
  const _ClientConfigAwsJson10Serializer() : super('ClientConfig');

  @override
  Iterable<Type> get types => const [ClientConfig, _$ClientConfig];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  ClientConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ClientConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'aws_access_key_id':
          if (value != null) {
            result.awsAccessKeyId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'aws_profile':
          if (value != null) {
            result.awsProfile = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'aws_secret_access_key':
          if (value != null) {
            result.awsSecretAccessKey = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'aws_session_token':
          if (value != null) {
            result.awsSessionToken = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'region':
          if (value != null) {
            result.region = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'retry_config':
          if (value != null) {
            result.retryConfig.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.RetryConfig))
                as _i3.RetryConfig));
          }
          break;
        case 's3':
          if (value != null) {
            result.s3.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i4.S3Config)) as _i4.S3Config));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ClientConfig);
    final result = <Object?>[];
    if (payload.awsAccessKeyId != null) {
      result
        ..add('aws_access_key_id')
        ..add(serializers.serialize(payload.awsAccessKeyId!,
            specifiedType: const FullType(String)));
    }
    if (payload.awsProfile != null) {
      result
        ..add('aws_profile')
        ..add(serializers.serialize(payload.awsProfile!,
            specifiedType: const FullType(String)));
    }
    if (payload.awsSecretAccessKey != null) {
      result
        ..add('aws_secret_access_key')
        ..add(serializers.serialize(payload.awsSecretAccessKey!,
            specifiedType: const FullType(String)));
    }
    if (payload.awsSessionToken != null) {
      result
        ..add('aws_session_token')
        ..add(serializers.serialize(payload.awsSessionToken!,
            specifiedType: const FullType(String)));
    }
    if (payload.region != null) {
      result
        ..add('region')
        ..add(serializers.serialize(payload.region!,
            specifiedType: const FullType(String)));
    }
    if (payload.retryConfig != null) {
      result
        ..add('retry_config')
        ..add(serializers.serialize(payload.retryConfig!,
            specifiedType: const FullType(_i3.RetryConfig)));
    }
    if (payload.s3 != null) {
      result
        ..add('s3')
        ..add(serializers.serialize(payload.s3!,
            specifiedType: const FullType(_i4.S3Config)));
    }
    return result;
  }
}
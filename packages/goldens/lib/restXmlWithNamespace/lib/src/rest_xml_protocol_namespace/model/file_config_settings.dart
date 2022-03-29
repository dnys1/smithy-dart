// Generated code. DO NOT MODIFY.

library rest_xml_with_namespace.rest_xml_protocol_namespace.model.file_config_settings;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/retry_mode.dart'
    as _i3;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/s3_config.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'file_config_settings.g.dart';

/// Config settings that can be set in the AWS config / credentials file as
/// part of a profile.
abstract class FileConfigSettings
    with _i1.AWSEquatable<FileConfigSettings>
    implements Built<FileConfigSettings, FileConfigSettingsBuilder> {
  /// Config settings that can be set in the AWS config / credentials file as
  /// part of a profile.
  factory FileConfigSettings(
          [void Function(FileConfigSettingsBuilder) updates]) =
      _$FileConfigSettings;

  const FileConfigSettings._();

  static const List<_i2.SmithySerializer> serializers = [
    _FileConfigSettingsRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FileConfigSettingsBuilder b) {}
  String? get awsAccessKeyId;
  String? get awsSecretAccessKey;
  String? get awsSessionToken;
  int? get maxAttempts;
  String? get region;

  /// Controls the strategy used for retries.
  _i3.RetryMode? get retryMode;

  /// Configuration specific to S3.
  _i4.S3Config? get s3;
  @override
  List<Object?> get props => [
        awsAccessKeyId,
        awsSecretAccessKey,
        awsSessionToken,
        maxAttempts,
        region,
        retryMode,
        s3
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FileConfigSettings');
    helper.add('awsAccessKeyId', awsAccessKeyId);
    helper.add('awsSecretAccessKey', awsSecretAccessKey);
    helper.add('awsSessionToken', awsSessionToken);
    helper.add('maxAttempts', maxAttempts);
    helper.add('region', region);
    helper.add('retryMode', retryMode);
    helper.add('s3', s3);
    return helper.toString();
  }
}

class _FileConfigSettingsRestXmlSerializer
    extends _i2.StructuredSmithySerializer<FileConfigSettings> {
  const _FileConfigSettingsRestXmlSerializer() : super('FileConfigSettings');

  @override
  Iterable<Type> get types => const [FileConfigSettings, _$FileConfigSettings];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  FileConfigSettings deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = FileConfigSettingsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'aws_access_key_id':
          if (value != null) {
            result.awsAccessKeyId = (serializers.deserialize(value,
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
        case 'max_attempts':
          if (value != null) {
            result.maxAttempts = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'region':
          if (value != null) {
            result.region = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'retry_mode':
          if (value != null) {
            result.retryMode = (serializers.deserialize(value,
                specifiedType: const FullType(_i3.RetryMode)) as _i3.RetryMode);
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
    final payload = (object as FileConfigSettings);
    final result = <Object?>[
      _i2.XmlElementName(
          'FileConfigSettings', const _i2.XmlNamespace('https://example.com'))
    ];
    if (payload.awsAccessKeyId != null) {
      result
        ..add(const _i2.XmlElementName('aws_access_key_id'))
        ..add(serializers.serialize(payload.awsAccessKeyId!,
            specifiedType: const FullType(String)));
    }
    if (payload.awsSecretAccessKey != null) {
      result
        ..add(const _i2.XmlElementName('aws_secret_access_key'))
        ..add(serializers.serialize(payload.awsSecretAccessKey!,
            specifiedType: const FullType(String)));
    }
    if (payload.awsSessionToken != null) {
      result
        ..add(const _i2.XmlElementName('aws_session_token'))
        ..add(serializers.serialize(payload.awsSessionToken!,
            specifiedType: const FullType(String)));
    }
    if (payload.maxAttempts != null) {
      result
        ..add(const _i2.XmlElementName('max_attempts'))
        ..add(serializers.serialize(payload.maxAttempts!,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.region != null) {
      result
        ..add(const _i2.XmlElementName('region'))
        ..add(serializers.serialize(payload.region!,
            specifiedType: const FullType(String)));
    }
    if (payload.retryMode != null) {
      result
        ..add(const _i2.XmlElementName('retry_mode'))
        ..add(serializers.serialize(payload.retryMode!,
            specifiedType: const FullType.nullable(_i3.RetryMode)));
    }
    if (payload.s3 != null) {
      result
        ..add(const _i2.XmlElementName('s3'))
        ..add(serializers.serialize(payload.s3!,
            specifiedType: const FullType(_i4.S3Config)));
    }
    return result;
  }
}

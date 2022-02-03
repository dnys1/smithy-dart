// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.scoped_config;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/client_config.dart'
    as _i3;
import 'package:rest_json1/src/rest_json_protocol/model/environment_config.dart'
    as _i6;
import 'package:rest_json1/src/rest_json_protocol/model/file_config_settings.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/model/operation_config.dart'
    as _i7;
import 'package:smithy/smithy.dart' as _i2;

part 'scoped_config.g.dart';

/// Config settings that are scoped to different sources, such as environment
/// variables or the AWS config file.
abstract class ScopedConfig
    with _i1.AWSEquatable<ScopedConfig>
    implements Built<ScopedConfig, ScopedConfigBuilder> {
  factory ScopedConfig([void Function(ScopedConfigBuilder) updates]) =
      _$ScopedConfig;

  const ScopedConfig._();

  static const List<_i2.SmithySerializer> serializers = [
    _ScopedConfigRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScopedConfigBuilder b) {}

  /// Configuration that is set on the constructed client.
  _i3.ClientConfig? get client;

  /// A shape representing a parsed config file, which is a map of profile names
  /// to configuration sets.
  _i4.BuiltMap<String, _i5.FileConfigSettings>? get configFile;

  /// A shape representing a parsed config file, which is a map of profile names
  /// to configuration sets.
  _i4.BuiltMap<String, _i5.FileConfigSettings>? get credentialsFile;

  /// Config settings that can be set as environment variables.
  _i6.EnvironmentConfig? get environment;

  /// Configuration that is set for the scope of a single operation.
  _i7.OperationConfig? get operation;
  @override
  List<Object?> get props =>
      [client, configFile, credentialsFile, environment, operation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScopedConfig');
    helper.add('client', client);
    helper.add('configFile', configFile);
    helper.add('credentialsFile', credentialsFile);
    helper.add('environment', environment);
    helper.add('operation', operation);
    return helper.toString();
  }
}

class _ScopedConfigRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ScopedConfig> {
  const _ScopedConfigRestJson1Serializer() : super('ScopedConfig');

  @override
  Iterable<Type> get types => const [ScopedConfig, _$ScopedConfig];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  ScopedConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ScopedConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'client':
          if (value != null) {
            result.client.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ClientConfig))
                as _i3.ClientConfig));
          }
          break;
        case 'configFile':
          if (value != null) {
            result.configFile.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i4.BuiltMap, [
                  FullType(String),
                  FullType(_i5.FileConfigSettings)
                ])) as _i4.BuiltMap<String, _i5.FileConfigSettings>));
          }
          break;
        case 'credentialsFile':
          if (value != null) {
            result.credentialsFile.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i4.BuiltMap, [
                  FullType(String),
                  FullType(_i5.FileConfigSettings)
                ])) as _i4.BuiltMap<String, _i5.FileConfigSettings>));
          }
          break;
        case 'environment':
          if (value != null) {
            result.environment.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i6.EnvironmentConfig))
                as _i6.EnvironmentConfig));
          }
          break;
        case 'operation':
          if (value != null) {
            result.operation.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i7.OperationConfig))
                as _i7.OperationConfig));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ScopedConfig);
    final result = <Object?>[];
    if (payload.client != null) {
      result
        ..add('client')
        ..add(serializers.serialize(payload.client!,
            specifiedType: const FullType(_i3.ClientConfig)));
    }
    if (payload.configFile != null) {
      result
        ..add('configFile')
        ..add(serializers.serialize(payload.configFile!,
            specifiedType: const FullType(_i4.BuiltMap,
                [FullType(String), FullType(_i5.FileConfigSettings)])));
    }
    if (payload.credentialsFile != null) {
      result
        ..add('credentialsFile')
        ..add(serializers.serialize(payload.credentialsFile!,
            specifiedType: const FullType(_i4.BuiltMap,
                [FullType(String), FullType(_i5.FileConfigSettings)])));
    }
    if (payload.environment != null) {
      result
        ..add('environment')
        ..add(serializers.serialize(payload.environment!,
            specifiedType: const FullType(_i6.EnvironmentConfig)));
    }
    if (payload.operation != null) {
      result
        ..add('operation')
        ..add(serializers.serialize(payload.operation!,
            specifiedType: const FullType(_i7.OperationConfig)));
    }
    return result;
  }
}

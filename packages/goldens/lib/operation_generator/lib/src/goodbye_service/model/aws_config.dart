// Generated code. DO NOT MODIFY.

library operation_generator.goodbye_service.model.aws_config;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:operation_generator/src/goodbye_service/model/scoped_config.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'aws_config.g.dart';

abstract class AwsConfig
    with _i1.AWSEquatable<AwsConfig>
    implements Built<AwsConfig, AwsConfigBuilder> {
  factory AwsConfig([void Function(AwsConfigBuilder) updates]) = _$AwsConfig;

  const AwsConfig._();

  static const List<_i2.SmithySerializer> serializers = [
    _AwsConfigAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AwsConfigBuilder b) {}

  /// This is the time that should be set during the course of the test.
  /// This is important for things like signing where the clock time impacts
  /// the result.
  DateTime? get clockTime;

  /// Config settings that are scoped to different sources, such as environment
  /// variables or the AWS config file.
  _i3.ScopedConfig? get scopedConfig;
  @override
  List<Object?> get props => [clockTime, scopedConfig];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AwsConfig');
    helper.add('clockTime', clockTime);
    helper.add('scopedConfig', scopedConfig);
    return helper.toString();
  }
}

class _AwsConfigAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<AwsConfig> {
  const _AwsConfigAwsJson11Serializer() : super('AwsConfig');

  @override
  Iterable<Type> get types => const [AwsConfig, _$AwsConfig];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  AwsConfig deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = AwsConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'clockTime':
          if (value != null) {
            result.clockTime = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
        case 'scopedConfig':
          if (value != null) {
            result.scopedConfig.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ScopedConfig))
                as _i3.ScopedConfig));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as AwsConfig);
    final result = <Object?>[];
    if (payload.clockTime != null) {
      result
        ..add('clockTime')
        ..add(serializers.serialize(payload.clockTime!,
            specifiedType: const FullType(DateTime)));
    }
    if (payload.scopedConfig != null) {
      result
        ..add('scopedConfig')
        ..add(serializers.serialize(payload.scopedConfig!,
            specifiedType: const FullType(_i3.ScopedConfig)));
    }
    return result;
  }
}

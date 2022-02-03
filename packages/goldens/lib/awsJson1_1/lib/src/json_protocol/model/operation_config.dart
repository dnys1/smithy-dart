// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.operation_config;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1/src/json_protocol/model/s3_config.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'operation_config.g.dart';

/// Configuration that is set for the scope of a single operation.
abstract class OperationConfig
    with _i1.AWSEquatable<OperationConfig>
    implements Built<OperationConfig, OperationConfigBuilder> {
  factory OperationConfig([void Function(OperationConfigBuilder) updates]) =
      _$OperationConfig;

  const OperationConfig._();

  static const List<_i2.SmithySerializer> serializers = [
    _OperationConfigAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationConfigBuilder b) {}

  /// Configuration specific to S3.
  _i3.S3Config? get s3;
  @override
  List<Object?> get props => [s3];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OperationConfig');
    helper.add('s3', s3);
    return helper.toString();
  }
}

class _OperationConfigAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<OperationConfig> {
  const _OperationConfigAwsJson11Serializer() : super('OperationConfig');

  @override
  Iterable<Type> get types => const [OperationConfig, _$OperationConfig];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  OperationConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = OperationConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 's3':
          if (value != null) {
            result.s3.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.S3Config)) as _i3.S3Config));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as OperationConfig);
    final result = <Object?>[];
    if (payload.s3 != null) {
      result
        ..add('s3')
        ..add(serializers.serialize(payload.s3!,
            specifiedType: const FullType(_i3.S3Config)));
    }
    return result;
  }
}

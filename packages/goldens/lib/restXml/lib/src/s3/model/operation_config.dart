// Generated code. DO NOT MODIFY.

library rest_xml.s3.model.operation_config;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/s3/model/s3_config.dart' as _i3;
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
    _OperationConfigRestXmlSerializer()
  ];

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

class _OperationConfigRestXmlSerializer
    extends _i2.StructuredSmithySerializer<OperationConfig> {
  const _OperationConfigRestXmlSerializer() : super('OperationConfig');

  @override
  Iterable<Type> get types => const [OperationConfig, _$OperationConfig];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  OperationConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = OperationConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
    final result = <Object?>[
      _i2.XmlElementName('OperationConfig',
          const _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload.s3 != null) {
      result
        ..add(const _i2.XmlElementName('s3'))
        ..add(serializers.serialize(payload.s3!,
            specifiedType: const FullType(_i3.S3Config)));
    }
    return result;
  }
}

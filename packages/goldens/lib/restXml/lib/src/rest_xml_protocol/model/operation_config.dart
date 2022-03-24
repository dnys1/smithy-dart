// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.operation_config;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/rest_xml_protocol/model/s3_config.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'operation_config.g.dart';

/// Configuration that is set for the scope of a single operation.
abstract class OperationConfig
    with _i1.AWSEquatable<OperationConfig>
    implements Built<OperationConfig, OperationConfigBuilder> {
  factory OperationConfig({_i2.S3Config? s3}) {
    return _$OperationConfig._(s3: s3);
  }

  const OperationConfig._();

  static const List<_i3.SmithySerializer> serializers = [
    _OperationConfigRestXmlSerializer()
  ];

  /// Configuration specific to S3.
  _i2.S3Config? get s3;
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
    extends _i3.StructuredSmithySerializer<OperationConfig> {
  const _OperationConfigRestXmlSerializer() : super('OperationConfig');

  @override
  Iterable<Type> get types => const [OperationConfig, _$OperationConfig];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
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
                specifiedType: const FullType(_i2.S3Config)) as _i2.S3Config));
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
    final result = <Object?>[_i3.XmlElementName('OperationConfig')];
    if (payload.s3 != null) {
      result
        ..add(const _i3.XmlElementName('s3'))
        ..add(serializers.serialize(payload.s3!,
            specifiedType: const FullType(_i2.S3Config)));
    }
    return result;
  }
}

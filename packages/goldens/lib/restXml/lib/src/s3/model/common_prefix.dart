// Generated code. DO NOT MODIFY.

library rest_xml.s3.model.common_prefix;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'common_prefix.g.dart';

abstract class CommonPrefix
    with _i1.AWSEquatable<CommonPrefix>
    implements Built<CommonPrefix, CommonPrefixBuilder> {
  factory CommonPrefix({String? prefix}) {
    return _$CommonPrefix._(prefix: prefix);
  }

  const CommonPrefix._();

  static const List<_i2.SmithySerializer> serializers = [
    _CommonPrefixRestXmlSerializer()
  ];

  String? get prefix;
  @override
  List<Object?> get props => [prefix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CommonPrefix');
    helper.add('prefix', prefix);
    return helper.toString();
  }
}

class _CommonPrefixRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CommonPrefix> {
  const _CommonPrefixRestXmlSerializer() : super('CommonPrefix');

  @override
  Iterable<Type> get types => const [CommonPrefix, _$CommonPrefix];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  CommonPrefix deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = CommonPrefixBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(value,
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
    final payload = (object as CommonPrefix);
    final result = <Object?>[
      _i2.XmlElementName('CommonPrefix',
          const _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload.prefix != null) {
      result
        ..add(const _i2.XmlElementName('Prefix'))
        ..add(serializers.serialize(payload.prefix!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}

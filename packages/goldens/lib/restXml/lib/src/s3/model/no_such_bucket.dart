// Generated code. DO NOT MODIFY.

library rest_xml.s3.model.no_such_bucket;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_bucket.g.dart';

abstract class NoSuchBucket
    with _i1.AWSEquatable<NoSuchBucket>
    implements
        Built<NoSuchBucket, NoSuchBucketBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyException {
  factory NoSuchBucket([void Function(NoSuchBucketBuilder) updates]) =
      _$NoSuchBucket;

  const NoSuchBucket._();

  factory NoSuchBucket.fromResponse(
          NoSuchBucket payload, _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _NoSuchBucketRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchBucketBuilder b) {}
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NoSuchBucket');
    return helper.toString();
  }
}

class _NoSuchBucketRestXmlSerializer
    extends _i2.StructuredSmithySerializer<NoSuchBucket> {
  const _NoSuchBucketRestXmlSerializer() : super('NoSuchBucket');

  @override
  Iterable<Type> get types => const [NoSuchBucket, _$NoSuchBucket];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  NoSuchBucket deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return NoSuchBucketBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as NoSuchBucket);
    final result = <Object?>[
      _i2.XmlElementName('NoSuchBucket',
          const _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    return result;
  }
}

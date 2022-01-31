// Generated code. DO NOT MODIFY.

library rest_xml.s3.model.get_bucket_location_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/s3/model/bucket_location_constraint.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'get_bucket_location_output.g.dart';

abstract class GetBucketLocationOutput
    with _i1.AWSEquatable<GetBucketLocationOutput>
    implements Built<GetBucketLocationOutput, GetBucketLocationOutputBuilder> {
  factory GetBucketLocationOutput(
          [void Function(GetBucketLocationOutputBuilder) updates]) =
      _$GetBucketLocationOutput;

  const GetBucketLocationOutput._();

  factory GetBucketLocationOutput.fromResponse(
          _i2.BucketLocationConstraint? payload,
          _i1.AWSStreamedHttpResponse response) =>
      GetBucketLocationOutput((b) {
        b.locationConstraint = payload;
      });

  static const List<_i3.SmithySerializer> serializers = [
    _GetBucketLocationOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketLocationOutputBuilder b) {}
  _i2.BucketLocationConstraint? get locationConstraint;
  @override
  List<Object?> get props => [locationConstraint];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketLocationOutput');
    helper.add('locationConstraint', locationConstraint);
    return helper.toString();
  }
}

class _GetBucketLocationOutputRestXmlSerializer
    extends _i3.PrimitiveSmithySerializer<Object> {
  const _GetBucketLocationOutputRestXmlSerializer()
      : super('GetBucketLocationOutput');

  @override
  Iterable<Type> get types =>
      const [GetBucketLocationOutput, _$GetBucketLocationOutput];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i2.BucketLocationConstraint deserialize(
      Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i2.BucketLocationConstraint))
        as _i2.BucketLocationConstraint);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GetBucketLocationOutput);
    final result = <Object?>[
      _i3.XmlElementName('BucketLocationConstraint',
          const _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload == null) {
      return result;
    }
    return result;
  }
}

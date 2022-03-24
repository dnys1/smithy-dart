// Generated code. DO NOT MODIFY.

library rest_xml.s3.model.get_bucket_location_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_bucket_location_request.g.dart';

abstract class GetBucketLocationRequest
    with
        _i1.HttpInput<GetBucketLocationRequestPayload>,
        _i2.AWSEquatable<GetBucketLocationRequest>
    implements
        Built<GetBucketLocationRequest, GetBucketLocationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBucketLocationRequestPayload> {
  factory GetBucketLocationRequest({required String bucket}) {
    return _$GetBucketLocationRequest._(bucket: bucket);
  }

  const GetBucketLocationRequest._();

  factory GetBucketLocationRequest.fromRequest(
      GetBucketLocationRequestPayload payload, _i2.AWSBaseHttpRequest request,
      {Map<String, String> labels = const {}}) {
    final builder = GetBucketLocationRequestBuilder();
    if (labels['bucket'] != null) {
      builder.bucket = labels['bucket']!;
    }
    return builder.build();
  }

  static const List<_i1.SmithySerializer> serializers = [
    _GetBucketLocationRequestRestXmlSerializer()
  ];

  String get bucket;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  GetBucketLocationRequestPayload getPayload() =>
      GetBucketLocationRequestPayload();
  @override
  List<Object?> get props => [bucket];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketLocationRequest');
    helper.add('bucket', bucket);
    return helper.toString();
  }
}

@_i3.internal
abstract class GetBucketLocationRequestPayload
    with
        _i2.AWSEquatable<GetBucketLocationRequestPayload>
    implements
        Built<GetBucketLocationRequestPayload,
            GetBucketLocationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBucketLocationRequestPayload(
          [void Function(GetBucketLocationRequestPayloadBuilder) updates]) =
      _$GetBucketLocationRequestPayload;

  const GetBucketLocationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketLocationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketLocationRequestPayload');
    return helper.toString();
  }
}

class _GetBucketLocationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<GetBucketLocationRequestPayload> {
  const _GetBucketLocationRequestRestXmlSerializer()
      : super('GetBucketLocationRequest');

  @override
  Iterable<Type> get types => const [
        GetBucketLocationRequest,
        _$GetBucketLocationRequest,
        GetBucketLocationRequestPayload,
        _$GetBucketLocationRequestPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  GetBucketLocationRequestPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GetBucketLocationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      _i1.XmlElementName('GetBucketLocationRequest',
          const _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    return result;
  }
}

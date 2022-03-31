// Generated code. DO NOT MODIFY.

library rest_xml.s3.model.object;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/s3/model/object_storage_class.dart' as _i4;
import 'package:rest_xml/src/s3/model/owner.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'object.g.dart';

abstract class S3Object
    with _i1.AWSEquatable<S3Object>
    implements Built<S3Object, S3ObjectBuilder> {
  factory S3Object([void Function(S3ObjectBuilder) updates]) = _$S3Object;

  const S3Object._();

  static const List<_i2.SmithySerializer> serializers = [
    _ObjectRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(S3ObjectBuilder b) {}
  String? get eTag;
  String? get key;
  DateTime? get lastModified;
  _i3.Owner? get owner;
  int? get size;
  _i4.ObjectStorageClass? get storageClass;
  @override
  List<Object?> get props =>
      [eTag, key, lastModified, owner, size, storageClass];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3Object');
    helper.add('eTag', eTag);
    helper.add('key', key);
    helper.add('lastModified', lastModified);
    helper.add('owner', owner);
    helper.add('size', size);
    helper.add('storageClass', storageClass);
    return helper.toString();
  }
}

class _ObjectRestXmlSerializer
    extends _i2.StructuredSmithySerializer<S3Object> {
  const _ObjectRestXmlSerializer() : super('Object');

  @override
  Iterable<Type> get types => const [S3Object, _$S3Object];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  S3Object deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = S3ObjectBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ETag':
          if (value != null) {
            result.eTag = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'LastModified':
          if (value != null) {
            result.lastModified = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
        case 'Owner':
          if (value != null) {
            result.owner.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.Owner)) as _i3.Owner));
          }
          break;
        case 'Size':
          if (value != null) {
            result.size = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(value,
                    specifiedType: const FullType(_i4.ObjectStorageClass))
                as _i4.ObjectStorageClass);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as S3Object);
    final result = <Object?>[
      _i2.XmlElementName('Object',
          const _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload.eTag != null) {
      result
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(payload.eTag!,
            specifiedType: const FullType(String)));
    }
    if (payload.key != null) {
      result
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(payload.key!,
            specifiedType: const FullType(String)));
    }
    if (payload.lastModified != null) {
      result
        ..add(const _i2.XmlElementName('LastModified'))
        ..add(serializers.serialize(payload.lastModified!,
            specifiedType: const FullType.nullable(DateTime)));
    }
    if (payload.owner != null) {
      result
        ..add(const _i2.XmlElementName('Owner'))
        ..add(serializers.serialize(payload.owner!,
            specifiedType: const FullType(_i3.Owner)));
    }
    if (payload.size != null) {
      result
        ..add(const _i2.XmlElementName('Size'))
        ..add(serializers.serialize(payload.size!,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.storageClass != null) {
      result
        ..add(const _i2.XmlElementName('StorageClass'))
        ..add(serializers.serialize(payload.storageClass!,
            specifiedType: const FullType.nullable(_i4.ObjectStorageClass)));
    }
    return result;
  }
}

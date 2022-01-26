// Generated code. DO NOT MODIFY.

library rest_json1.glacier.model.upload_multipart_part_input;

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'upload_multipart_part_input.g.dart';

abstract class UploadMultipartPartInput
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<UploadMultipartPartInput>
    implements
        Built<UploadMultipartPartInput, UploadMultipartPartInputBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory UploadMultipartPartInput(
          [void Function(UploadMultipartPartInputBuilder) updates]) =
      _$UploadMultipartPartInput;

  const UploadMultipartPartInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _UploadMultipartPartInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadMultipartPartInputBuilder b) {}
  String get accountId;
  _i2.Stream<List<int>>? get body;
  String? get checksum;
  String? get range;
  String get uploadId;
  String get vaultName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'accountId':
        return accountId;
      case 'vaultName':
        return vaultName;
      case 'uploadId':
        return uploadId;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  _i2.Stream<List<int>>? getPayload() => body;
  @override
  List<Object?> get props =>
      [accountId, body, checksum, range, uploadId, vaultName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'UploadMultipartPartInput');
    helper.add(r'accountId', accountId);
    helper.add(r'body', body);
    helper.add(r'checksum', checksum);
    helper.add(r'range', range);
    helper.add(r'uploadId', uploadId);
    helper.add(r'vaultName', vaultName);
    return helper.toString();
  }
}

class _UploadMultipartPartInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _UploadMultipartPartInputRestJson1Serializer()
      : super('UploadMultipartPartInput');

  @override
  Iterable<Type> get types =>
      const [UploadMultipartPartInput, _$UploadMultipartPartInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.Stream<List<int>> deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as _i2.Stream<List<int>>);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is UploadMultipartPartInput
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    return (serializers.serialize(payload,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as Object);
  }
}

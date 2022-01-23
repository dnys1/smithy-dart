// Generated code. DO NOT MODIFY.

library rest_json1.glacier.model.upload_archive_input;

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'upload_archive_input.g.dart';

abstract class UploadArchiveInput
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<UploadArchiveInput>
    implements
        Built<UploadArchiveInput, UploadArchiveInputBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory UploadArchiveInput(
          [void Function(UploadArchiveInputBuilder) updates]) =
      _$UploadArchiveInput;

  const UploadArchiveInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _UploadArchiveInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadArchiveInputBuilder b) {}
  String get accountId;
  String? get archiveDescription;
  _i2.Stream<List<int>>? get body;
  String? get checksum;
  String get vaultName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'vaultName':
        return vaultName;
      case 'accountId':
        return accountId;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  _i2.Stream<List<int>>? getPayload() => body;
  @override
  List<Object?> get props =>
      [accountId, archiveDescription, body, checksum, vaultName];
}

class _UploadArchiveInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _UploadArchiveInputRestJson1Serializer() : super('UploadArchiveInput');

  @override
  Iterable<Type> get types => const [UploadArchiveInput, _$UploadArchiveInput];
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
    final payload = object is UploadArchiveInput
        ? object.getPayload()
        : (object as _i2.Stream<List<int>>?);
    return (serializers.serialize(payload,
        specifiedType: const FullType(_i2.Stream, [
          FullType(List, [FullType(int)])
        ])) as Object);
  }
}

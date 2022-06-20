// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_set_input;

import 'dart:typed_data' as _i4;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_set_input.g.dart';

abstract class MalformedSetInput
    with _i1.HttpInput<MalformedSetInput>, _i2.AWSEquatable<MalformedSetInput>
    implements Built<MalformedSetInput, MalformedSetInputBuilder> {
  factory MalformedSetInput(
      {_i3.BuiltSet<_i4.Uint8List>? blobSet, _i3.BuiltSet<String>? set}) {
    return _$MalformedSetInput._(blobSet: blobSet, set: set);
  }

  factory MalformedSetInput.build(
      [void Function(MalformedSetInputBuilder) updates]) = _$MalformedSetInput;

  const MalformedSetInput._();

  factory MalformedSetInput.fromRequest(
          MalformedSetInput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedSetInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedSetInputBuilder b) {}
  _i3.BuiltSet<_i4.Uint8List>? get blobSet;
  _i3.BuiltSet<String>? get set;
  @override
  MalformedSetInput getPayload() => this;
  @override
  List<Object?> get props => [blobSet, set];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedSetInput');
    helper.add('blobSet', blobSet);
    helper.add('set', set);
    return helper.toString();
  }
}

class _MalformedSetInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedSetInput> {
  const _MalformedSetInputRestJson1Serializer() : super('MalformedSetInput');

  @override
  Iterable<Type> get types => const [MalformedSetInput, _$MalformedSetInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedSetInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedSetInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'blobSet':
          if (value != null) {
            result.blobSet.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltSet, [FullType(_i4.Uint8List)]))
                as _i3.BuiltSet<_i4.Uint8List>));
          }
          break;
        case 'set':
          if (value != null) {
            result.set.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltSet, [FullType(String)]))
                as _i3.BuiltSet<String>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedSetInput);
    final result = <Object?>[];
    if (payload.blobSet != null) {
      result
        ..add('blobSet')
        ..add(serializers.serialize(payload.blobSet!,
            specifiedType:
                const FullType(_i3.BuiltSet, [FullType(_i4.Uint8List)])));
    }
    if (payload.set != null) {
      result
        ..add('set')
        ..add(serializers.serialize(payload.set!,
            specifiedType: const FullType(_i3.BuiltSet, [FullType(String)])));
    }
    return result;
  }
}

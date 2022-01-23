// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_map_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_map_input.g.dart';

abstract class MalformedMapInput
    with _i1.HttpInput<MalformedMapInput>, _i2.AWSEquatable<MalformedMapInput>
    implements Built<MalformedMapInput, MalformedMapInputBuilder> {
  factory MalformedMapInput([void Function(MalformedMapInputBuilder) updates]) =
      _$MalformedMapInput;

  const MalformedMapInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedMapInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedMapInputBuilder b) {}
  _i3.BuiltMap<String, String>? get bodyMap;
  @override
  MalformedMapInput getPayload() => this;
  @override
  List<Object?> get props => [bodyMap];
}

class _MalformedMapInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedMapInput> {
  const _MalformedMapInputRestJson1Serializer() : super('MalformedMapInput');

  @override
  Iterable<Type> get types => const [MalformedMapInput, _$MalformedMapInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedMapInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedMapInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'bodyMap':
          if (value != null) {
            result.bodyMap.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i3.BuiltMap, [FullType(String), FullType(String)]))
                as _i3.BuiltMap<String, String>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedMapInput);
    final result = <Object?>[];
    if (payload.bodyMap != null) {
      result
        ..add('bodyMap')
        ..add(serializers.serialize(payload.bodyMap,
            specifiedType: const FullType.nullable(
                _i3.BuiltMap, [FullType(String), FullType(String)])));
    }
    return result;
  }
}

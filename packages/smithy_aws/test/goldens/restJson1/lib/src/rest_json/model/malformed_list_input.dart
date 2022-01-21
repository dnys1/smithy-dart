// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_list_input;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_list_input.g.dart';

abstract class MalformedListInput
    with _i1.HttpInput<MalformedListInputPayload>
    implements
        Built<MalformedListInput, MalformedListInputBuilder>,
        _i1.HasPayload<MalformedListInputPayload> {
  factory MalformedListInput(
          [void Function(MalformedListInputBuilder) updates]) =
      _$MalformedListInput;

  const MalformedListInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedListInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedListInputBuilder b) {}
  _i2.BuiltList<String>? get bodyList;
  @override
  MalformedListInputPayload getPayload() =>
      MalformedListInputPayload((b) => b..bodyList = bodyList);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedListInputPayload
    implements
        Built<MalformedListInputPayload, MalformedListInputPayloadBuilder> {
  factory MalformedListInputPayload(
          [void Function(MalformedListInputPayloadBuilder) updates]) =
      _$MalformedListInputPayload;

  const MalformedListInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedListInputPayloadBuilder b) {}
  _i2.BuiltList<String>? get bodyList;
}

class _MalformedListInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedListInputPayload> {
  const _MalformedListInputRestJson1Serializer() : super('MalformedListInput');

  @override
  Iterable<Type> get types => const [
        MalformedListInput,
        _$MalformedListInput,
        MalformedListInputPayload,
        _$MalformedListInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedListInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedListInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'bodyList':
          if (value != null) {
            result.bodyList = (serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i2.BuiltList, [FullType(String)]))
                as _i2.BuiltList<String>);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedListInput
        ? object.getPayload()
        : (object as MalformedListInputPayload);
    final result = <Object?>[];
    if (payload.bodyList != null) {
      result
        ..add('bodyList')
        ..add(serializers.serialize(payload.bodyList,
            specifiedType:
                const FullType.nullable(_i2.BuiltList, [FullType(String)])));
    }
    return result;
  }
}

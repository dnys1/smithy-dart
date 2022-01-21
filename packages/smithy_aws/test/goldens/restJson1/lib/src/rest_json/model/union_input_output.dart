// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.union_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:rest_json1/src/rest_json/model/my_union.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'union_input_output.g.dart';

/// A shared structure that contains a single union member.
abstract class UnionInputOutput
    with _i1.HttpInput<UnionInputOutputPayload>
    implements
        Built<UnionInputOutput, UnionInputOutputBuilder>,
        _i1.HasPayload<UnionInputOutputPayload> {
  factory UnionInputOutput([void Function(UnionInputOutputBuilder) updates]) =
      _$UnionInputOutput;

  const UnionInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _UnionInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnionInputOutputBuilder b) {}
  _i2.MyUnion? get contents;
  @override
  UnionInputOutputPayload getPayload() =>
      UnionInputOutputPayload((b) => b..contents = contents);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class UnionInputOutputPayload
    implements Built<UnionInputOutputPayload, UnionInputOutputPayloadBuilder> {
  factory UnionInputOutputPayload(
          [void Function(UnionInputOutputPayloadBuilder) updates]) =
      _$UnionInputOutputPayload;

  const UnionInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnionInputOutputPayloadBuilder b) {}
  _i2.MyUnion? get contents;
}

class _UnionInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UnionInputOutputPayload> {
  const _UnionInputOutputRestJson1Serializer() : super('UnionInputOutput');

  @override
  Iterable<Type> get types => const [
        UnionInputOutput,
        _$UnionInputOutput,
        UnionInputOutputPayload,
        _$UnionInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UnionInputOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UnionInputOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'contents':
          if (value != null) {
            result.contents = (serializers.deserialize(value,
                specifiedType: const FullType(_i2.MyUnion)) as _i2.MyUnion);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is UnionInputOutput
        ? object.getPayload()
        : (object as UnionInputOutputPayload);
    final result = <Object?>[];
    if (payload.contents != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(payload.contents,
            specifiedType: const FullType.nullable(_i2.MyUnion)));
    }
    return result;
  }
}

// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.union_input_output;

import 'package:aws_json1_1/src/json_protocol/model/my_union.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
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
    _UnionInputOutputAwsJson11Serializer()
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

class _UnionInputOutputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<UnionInputOutput> {
  const _UnionInputOutputAwsJson11Serializer() : super('UnionInputOutput');

  @override
  Iterable<Type> get types => const [
        UnionInputOutput,
        _$UnionInputOutput,
        UnionInputOutputPayload,
        _$UnionInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  UnionInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UnionInputOutputBuilder();
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
    final payload = (object as UnionInputOutput);
    final result = <Object?>[];
    if (payload.contents != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(payload.contents,
            specifiedType: FullType.nullable(_i2.MyUnion)));
    }
    return result;
  }
}

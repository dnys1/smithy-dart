// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.union_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/my_union.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'union_input_output.g.dart';

/// A shared structure that contains a single union member.
abstract class UnionInputOutput
    with _i1.HttpInput<UnionInputOutput>, _i2.AWSEquatable<UnionInputOutput>
    implements Built<UnionInputOutput, UnionInputOutputBuilder> {
  factory UnionInputOutput([void Function(UnionInputOutputBuilder) updates]) =
      _$UnionInputOutput;

  const UnionInputOutput._();

  factory UnionInputOutput.fromResponse(
          UnionInputOutput payload, _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _UnionInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnionInputOutputBuilder b) {}
  _i3.MyUnion? get contents;
  @override
  UnionInputOutput getPayload() => this;
  @override
  List<Object?> get props => [contents];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'UnionInputOutput');
    helper.add(r'contents', contents);
    return helper.toString();
  }
}

class _UnionInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UnionInputOutput> {
  const _UnionInputOutputRestJson1Serializer() : super('UnionInputOutput');

  @override
  Iterable<Type> get types => const [UnionInputOutput, _$UnionInputOutput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
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
                specifiedType: const FullType(_i3.MyUnion)) as _i3.MyUnion);
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
            specifiedType: const FullType.nullable(_i3.MyUnion)));
    }
    return result;
  }
}

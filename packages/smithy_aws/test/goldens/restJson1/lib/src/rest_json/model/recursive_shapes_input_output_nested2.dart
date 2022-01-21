// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.recursive_shapes_input_output_nested2;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/recursive_shapes_input_output_nested1.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'recursive_shapes_input_output_nested2.g.dart';

abstract class RecursiveShapesInputOutputNested2
    implements
        Built<RecursiveShapesInputOutputNested2,
            RecursiveShapesInputOutputNested2Builder> {
  factory RecursiveShapesInputOutputNested2(
          [void Function(RecursiveShapesInputOutputNested2Builder) updates]) =
      _$RecursiveShapesInputOutputNested2;

  const RecursiveShapesInputOutputNested2._();

  static const List<_i1.SmithySerializer> serializers = [
    _RecursiveShapesInputOutputNested2RestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecursiveShapesInputOutputNested2Builder b) {}
  String? get bar;
  _i2.RecursiveShapesInputOutputNested1? get recursiveMember;
}

class _RecursiveShapesInputOutputNested2RestJson1Serializer
    extends _i1.StructuredSmithySerializer<RecursiveShapesInputOutputNested2> {
  const _RecursiveShapesInputOutputNested2RestJson1Serializer()
      : super('RecursiveShapesInputOutputNested2');

  @override
  Iterable<Type> get types => const [
        RecursiveShapesInputOutputNested2,
        _$RecursiveShapesInputOutputNested2
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  RecursiveShapesInputOutputNested2 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RecursiveShapesInputOutputNested2Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'bar':
          if (value != null) {
            result.bar = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'recursiveMember':
          if (value != null) {
            result.recursiveMember.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i2.RecursiveShapesInputOutputNested1))
                as _i2.RecursiveShapesInputOutputNested1));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as RecursiveShapesInputOutputNested2);
    final result = <Object?>[];
    if (payload.bar != null) {
      result
        ..add('bar')
        ..add(serializers.serialize(payload.bar,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.recursiveMember != null) {
      result
        ..add('recursiveMember')
        ..add(serializers.serialize(payload.recursiveMember,
            specifiedType: const FullType.nullable(
                _i2.RecursiveShapesInputOutputNested1)));
    }
    return result;
  }
}

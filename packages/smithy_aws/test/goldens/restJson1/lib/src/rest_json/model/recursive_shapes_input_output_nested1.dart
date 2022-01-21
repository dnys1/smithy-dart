// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.recursive_shapes_input_output_nested1;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json/model/recursive_shapes_input_output_nested2.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'recursive_shapes_input_output_nested1.g.dart';

abstract class RecursiveShapesInputOutputNested1
    implements
        Built<RecursiveShapesInputOutputNested1,
            RecursiveShapesInputOutputNested1Builder> {
  factory RecursiveShapesInputOutputNested1(
          [void Function(RecursiveShapesInputOutputNested1Builder) updates]) =
      _$RecursiveShapesInputOutputNested1;

  const RecursiveShapesInputOutputNested1._();

  static const List<_i1.SmithySerializer> serializers = [
    _RecursiveShapesInputOutputNested1RestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecursiveShapesInputOutputNested1Builder b) {}
  String? get foo;
  _i2.RecursiveShapesInputOutputNested2? get nested;
}

class _RecursiveShapesInputOutputNested1RestJson1Serializer
    extends _i1.StructuredSmithySerializer<RecursiveShapesInputOutputNested1> {
  const _RecursiveShapesInputOutputNested1RestJson1Serializer()
      : super('RecursiveShapesInputOutputNested1');

  @override
  Iterable<Type> get types => const [
        RecursiveShapesInputOutputNested1,
        _$RecursiveShapesInputOutputNested1
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  RecursiveShapesInputOutputNested1 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RecursiveShapesInputOutputNested1Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i2.RecursiveShapesInputOutputNested2))
                as _i2.RecursiveShapesInputOutputNested2));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as RecursiveShapesInputOutputNested1);
    final result = <Object?>[];
    if (payload.foo != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(payload.foo,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.nested != null) {
      result
        ..add('nested')
        ..add(serializers.serialize(payload.nested,
            specifiedType: const FullType.nullable(
                _i2.RecursiveShapesInputOutputNested2)));
    }
    return result;
  }
}

// Generated code. DO NOT MODIFY.

library documentation.test.model.get_foo_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

abstract class GetFooInput
    with _i1.HttpInput<GetFooInput>, _i2.AWSEquatable<GetFooInput>
    implements Built<GetFooInput, GetFooInputBuilder> {
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _GetFooInputSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFooInputBuilder b) {}

  /// Shape documentation
  String? get bar;

  /// Member documentation
  String? get baz;
  String? get qux;
  @override
  GetFooInput getPayload() => this;
  @override
  List<Object?> get props => [bar, baz, qux];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'GetFooInput');
    helper.add(r'bar', bar);
    helper.add(r'baz', baz);
    helper.add(r'qux', qux);
    return helper.toString();
  }
}

class _GetFooInputSerializer
    extends _i1.StructuredSmithySerializer<GetFooInput> {
  const _GetFooInputSerializer() : super('GetFooInput');

  @override
  Iterable<Type> get types => const [GetFooInput, _$GetFooInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [];
  @override
  GetFooInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GetFooInputBuilder();
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
        case 'baz':
          if (value != null) {
            result.baz = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'qux':
          if (value != null) {
            result.qux = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GetFooInput);
    final result = <Object?>[];
    if (payload.bar != null) {
      result
        ..add('bar')
        ..add(serializers.serialize(payload.bar,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.baz != null) {
      result
        ..add('baz')
        ..add(serializers.serialize(payload.baz,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.qux != null) {
      result
        ..add('qux')
        ..add(serializers.serialize(payload.qux,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}

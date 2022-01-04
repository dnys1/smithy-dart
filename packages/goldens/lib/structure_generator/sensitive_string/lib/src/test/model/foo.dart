// Generated code. DO NOT MODIFY.

library sensitive_string.test.model.foo;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'foo.g.dart';

abstract class Foo implements Built<Foo, FooBuilder> {
  factory Foo([void Function(FooBuilder) updates]) = _$Foo;

  const Foo._();

  static const List<_i1.SmithySerializer<Foo>> serializers = [_FooSerializer()];

  String? get bar;

  /// Member documentation
  String? get baz;
  String? get qux;
}

class _FooSerializer extends _i1.SmithySerializer<Foo> {
  const _FooSerializer() : super('Foo');

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => [];
  @override
  Foo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = FooBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bar':
          result.bar = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'baz':
          result.baz = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
        case 'qux':
          result.qux = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Foo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.bar != null) {
      result
        ..add('bar')
        ..add(serializers.serialize(object.bar,
            specifiedType: const FullType(String)));
    }
    if (object.baz != null) {
      result
        ..add('baz')
        ..add(serializers.serialize(object.baz,
            specifiedType: const FullType(String)));
    }
    if (object.qux != null) {
      result
        ..add('qux')
        ..add(serializers.serialize(object.qux,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}

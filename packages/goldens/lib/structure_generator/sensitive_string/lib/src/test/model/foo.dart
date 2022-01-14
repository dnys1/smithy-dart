// Generated code. DO NOT MODIFY.

library sensitive_string.test.model.foo;

import 'package:built_value/built_value.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'foo.g.dart';

abstract class Foo with _i1.HttpInput<Foo> implements Built<Foo, FooBuilder> {
  factory Foo([void Function(FooBuilder) updates]) = _$Foo;

  const Foo._();

  static const List<_i1.SmithySerializer<Foo>> serializers = [];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FooBuilder b) {}
  String? get bar;

  /// Member documentation
  String? get baz;
  String? get qux;
  @override
  Foo getPayload() => this;
  @override
  bool get isStreaming => false;
}

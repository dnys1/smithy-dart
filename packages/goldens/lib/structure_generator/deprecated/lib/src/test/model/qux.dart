// Generated code. DO NOT MODIFY.

library deprecated.test.model.qux;

import 'package:built_value/built_value.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'qux.g.dart';

abstract class Qux with _i1.HttpInput<Qux> implements Built<Qux, QuxBuilder> {
  factory Qux([void Function(QuxBuilder) updates]) = _$Qux;

  const Qux._();

  static const List<_i1.SmithySerializer<Qux>> serializers = [];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QuxBuilder b) {}
  @override
  Qux getPayload() => this;
  @override
  bool get isStreaming => false;
}

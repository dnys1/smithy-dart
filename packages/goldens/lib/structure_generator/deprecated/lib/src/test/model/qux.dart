// Generated code. DO NOT MODIFY.

library deprecated.test.model.qux;

import 'dart:core';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'qux.g.dart';

abstract class Qux implements Built<Qux, QuxBuilder> {
  const Qux._();

  factory Qux([void Function(QuxBuilder) updates]) = _$Qux;

  static const List<_i1.SmithySerializer<Qux>> serializers = [_QuxSerializer()];
}

class _QuxSerializer extends _i1.SmithySerializer<Qux> {
  const _QuxSerializer() : super('Qux');

  @override
  Iterable<String> get supportedProtocols => [];
  @override
  Qux deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    throw UnimplementedError();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Qux object,
      {FullType specifiedType = FullType.unspecified}) {
    throw UnimplementedError();
  }
}

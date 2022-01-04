// Generated code. DO NOT MODIFY.

library goldens.test.model.get_foo_input;

import 'dart:core';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:deprecated/src/test/model/qux.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

abstract class GetFooInput implements Built<GetFooInput, GetFooInputBuilder> {
  const GetFooInput._();

  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  static const List<_i1.SmithySerializer<GetFooInput>> serializers = [
    _GetFooInputSerializer()
  ];

  String? get bar;
  String? get foo;
  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  _i2.Qux? get qux;
}

class _GetFooInputSerializer extends _i1.SmithySerializer<GetFooInput> {
  const _GetFooInputSerializer() : super('GetFooInput');

  @override
  Iterable<String> get supportedProtocols => [];
  @override
  GetFooInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    throw UnimplementedError();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, GetFooInput object,
      {FullType specifiedType = FullType.unspecified}) {
    throw UnimplementedError();
  }
}

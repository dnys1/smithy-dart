// Generated code. DO NOT MODIFY.

library goldens.test.model.get_foo_input;

import 'dart:async';

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:goldens/src/test/model/qux.dart' as _i2;
import 'package:built_value/serializer.dart';

import 'package:built_value/built_value.dart';
import 'package:smithy/smithy.dart';

part 'get_foo_input.g.dart';

@Deprecated(
    'No longer recommended for use. See API documentation for more details.')
abstract class GetFooInput implements Built<GetFooInput, GetFooInputBuilder> {
  const GetFooInput._();
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  String? get bar;
  String? get foo;
  _i2.Qux? get qux;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(GetFooInput.serializer, this);
  }

  static GetFooInput fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(GetFooInput.serializer, json);
  }

  static const List<SmithySerializer<GetFooInput>> serializers = [
    _GetFooInputJsonSerializer(),
    _GetFooInputXmlSerializer(),
  ];
}

class _GetFooInputJsonSerializer extends SmithySerializer<GetFooInput> {
  const _GetFooInputJsonSerializer() : super('GetFooInput');

  @override
  List<String> get supportedProtocols => [];

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

class _GetFooInputXmlSerializer extends SmithySerializer<GetFooInput> {
  const _GetFooInputXmlSerializer() : super('GetFooInput');

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

// ignore_for_file: implementation_imports

import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:built_value/src/bool_serializer.dart';
import 'package:built_value/src/built_map_serializer.dart';
import 'package:built_value/src/built_set_serializer.dart';
import 'package:built_value/src/built_list_serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

final testSerializers = (Serializers().toBuilder()
      ..addPlugin(SmithyJsonPlugin())
      ..addAll(_testSerializers))
    .build();

final _testSerializers = <Serializer>[
  _BinaryTestSerializer(),
  _Int64Serializer(),
  BigIntSerializer.asString,
  DoubleSerializer(),
  TimestampSerializer.epochSeconds,
  UnitSerializer(),
  BoolSerializer(),
  BuiltMapSerializer(),
  BuiltListSerializer(),
  BuiltSetSerializer(),
];

Serializers buildSerializers(
  Serializers protocol,
  List<Serializer>? userSerializers,
) {
  final serializersBuilder = testSerializers.toBuilder()
    ..addAll([
      ...protocol.serializers,
      ..._testSerializers,
      ...?userSerializers,
    ]);
  for (final builderFactory in protocol.builderFactories.entries) {
    serializersBuilder.addBuilderFactory(
      builderFactory.key,
      builderFactory.value,
    );
  }
  return serializersBuilder.build();
}

/// Parameter values that contain binary data MUST be defined using values that
/// can be represented in plain text (for example, use "foo" and not "Zm9vCg==").
/// While this limits the kinds of binary values that can be tested in protocol
/// tests, it allows protocol tests to demonstrate the requirement of many
/// protocols that binary data is automatically base64 encoded and decoded.
class _BinaryTestSerializer implements PrimitiveSerializer<Uint8List> {
  const _BinaryTestSerializer();

  @override
  Uint8List deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    serialized as String;
    return Uint8List.fromList(utf8.encode(serialized));
  }

  @override
  Object serialize(Serializers serializers, Uint8List object,
      {FullType specifiedType = FullType.unspecified}) {
    throw UnimplementedError();
  }

  @override
  Iterable<Type> get types => [Uint8List, Uint8List(0).runtimeType];

  @override
  String get wireName => 'Blob';
}

class _Int64Serializer implements PrimitiveSerializer<Int64> {
  const _Int64Serializer();

  @override
  final Iterable<Type> types = const [Int64];

  @override
  final String wireName = 'Long';

  @override
  Object serialize(Serializers serializers, Int64 int64,
      {FullType specifiedType = FullType.unspecified}) {
    return int64.toInt();
  }

  @override
  Int64 deserialize(Serializers serializers, Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return serialized is num
        ? Int64(serialized.toInt())
        : Int64.parseInt(serialized as String);
  }
}

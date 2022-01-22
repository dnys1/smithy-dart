// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_byte_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_byte_input.g.dart';

abstract class MalformedByteInput
    with _i1.HttpInput<MalformedByteInputPayload>
    implements Built<MalformedByteInput, MalformedByteInputBuilder> {
  factory MalformedByteInput(
          [void Function(MalformedByteInputBuilder) updates]) =
      _$MalformedByteInput;

  const MalformedByteInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedByteInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedByteInputBuilder b) {}
  int? get byteInBody;
  int? get byteInHeader;
  int get byteInPath;
  int? get byteInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'byteInPath':
        return byteInPath.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  MalformedByteInputPayload getPayload() =>
      MalformedByteInputPayload((b) => b..byteInBody = byteInBody);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedByteInputPayload
    implements
        Built<MalformedByteInputPayload, MalformedByteInputPayloadBuilder> {
  factory MalformedByteInputPayload(
          [void Function(MalformedByteInputPayloadBuilder) updates]) =
      _$MalformedByteInputPayload;

  const MalformedByteInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedByteInputPayloadBuilder b) {}
  int? get byteInBody;
}

class _MalformedByteInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedByteInputPayload> {
  const _MalformedByteInputRestJson1Serializer() : super('MalformedByteInput');

  @override
  Iterable<Type> get types => const [
        MalformedByteInput,
        _$MalformedByteInput,
        MalformedByteInputPayload,
        _$MalformedByteInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedByteInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedByteInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'byteInBody':
          if (value != null) {
            result.byteInBody = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedByteInput
        ? object.getPayload()
        : (object as MalformedByteInputPayload);
    final result = <Object?>[];
    if (payload.byteInBody != null) {
      result
        ..add('byteInBody')
        ..add(serializers.serialize(payload.byteInBody,
            specifiedType: const FullType.nullable(int)));
    }
    return result;
  }
}

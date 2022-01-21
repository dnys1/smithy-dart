// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_float_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_float_input.g.dart';

abstract class MalformedFloatInput
    with _i1.HttpInput<MalformedFloatInputPayload>
    implements
        Built<MalformedFloatInput, MalformedFloatInputBuilder>,
        _i1.HasPayload<MalformedFloatInputPayload> {
  factory MalformedFloatInput(
          [void Function(MalformedFloatInputBuilder) updates]) =
      _$MalformedFloatInput;

  const MalformedFloatInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedFloatInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedFloatInputBuilder b) {}
  double? get floatInBody;
  double? get floatInHeader;
  double get floatInPath;
  double? get floatInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'floatInPath':
        return floatInPath.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedFloatInputPayload getPayload() =>
      MalformedFloatInputPayload((b) => b..floatInBody = floatInBody);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedFloatInputPayload
    implements
        Built<MalformedFloatInputPayload, MalformedFloatInputPayloadBuilder> {
  factory MalformedFloatInputPayload(
          [void Function(MalformedFloatInputPayloadBuilder) updates]) =
      _$MalformedFloatInputPayload;

  const MalformedFloatInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedFloatInputPayloadBuilder b) {}
  double? get floatInBody;
}

class _MalformedFloatInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedFloatInputPayload> {
  const _MalformedFloatInputRestJson1Serializer()
      : super('MalformedFloatInput');

  @override
  Iterable<Type> get types => const [
        MalformedFloatInput,
        _$MalformedFloatInput,
        MalformedFloatInputPayload,
        _$MalformedFloatInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedFloatInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedFloatInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'floatInBody':
          if (value != null) {
            result.floatInBody = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedFloatInput
        ? object.getPayload()
        : (object as MalformedFloatInputPayload);
    final result = <Object?>[];
    if (payload.floatInBody != null) {
      result
        ..add('floatInBody')
        ..add(serializers.serialize(payload.floatInBody,
            specifiedType: const FullType.nullable(double)));
    }
    return result;
  }
}

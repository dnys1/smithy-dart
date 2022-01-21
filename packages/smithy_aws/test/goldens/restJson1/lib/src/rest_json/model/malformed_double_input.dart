// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_double_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_double_input.g.dart';

abstract class MalformedDoubleInput
    with _i1.HttpInput<MalformedDoubleInputPayload>
    implements
        Built<MalformedDoubleInput, MalformedDoubleInputBuilder>,
        _i1.HasPayload<MalformedDoubleInputPayload> {
  factory MalformedDoubleInput(
          [void Function(MalformedDoubleInputBuilder) updates]) =
      _$MalformedDoubleInput;

  const MalformedDoubleInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedDoubleInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedDoubleInputBuilder b) {}
  double? get doubleInBody;
  double? get doubleInHeader;
  double get doubleInPath;
  double? get doubleInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'doubleInPath':
        return doubleInPath.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedDoubleInputPayload getPayload() =>
      MalformedDoubleInputPayload((b) => b..doubleInBody = doubleInBody);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedDoubleInputPayload
    implements
        Built<MalformedDoubleInputPayload, MalformedDoubleInputPayloadBuilder> {
  factory MalformedDoubleInputPayload(
          [void Function(MalformedDoubleInputPayloadBuilder) updates]) =
      _$MalformedDoubleInputPayload;

  const MalformedDoubleInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedDoubleInputPayloadBuilder b) {}
  double? get doubleInBody;
}

class _MalformedDoubleInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedDoubleInputPayload> {
  const _MalformedDoubleInputRestJson1Serializer()
      : super('MalformedDoubleInput');

  @override
  Iterable<Type> get types => const [
        MalformedDoubleInput,
        _$MalformedDoubleInput,
        MalformedDoubleInputPayload,
        _$MalformedDoubleInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedDoubleInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedDoubleInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'doubleInBody':
          if (value != null) {
            result.doubleInBody = (serializers.deserialize(value,
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
    final payload = object is MalformedDoubleInput
        ? object.getPayload()
        : (object as MalformedDoubleInputPayload);
    final result = <Object?>[];
    if (payload.doubleInBody != null) {
      result
        ..add('doubleInBody')
        ..add(serializers.serialize(payload.doubleInBody,
            specifiedType: const FullType.nullable(double)));
    }
    return result;
  }
}

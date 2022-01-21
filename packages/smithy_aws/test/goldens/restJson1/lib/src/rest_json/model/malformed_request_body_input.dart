// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_request_body_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_request_body_input.g.dart';

abstract class MalformedRequestBodyInput
    with _i1.HttpInput<MalformedRequestBodyInputPayload>
    implements
        Built<MalformedRequestBodyInput, MalformedRequestBodyInputBuilder>,
        _i1.HasPayload<MalformedRequestBodyInputPayload> {
  factory MalformedRequestBodyInput(
          [void Function(MalformedRequestBodyInputBuilder) updates]) =
      _$MalformedRequestBodyInput;

  const MalformedRequestBodyInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedRequestBodyInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRequestBodyInputBuilder b) {}
  double? get float;
  int? get int$;
  @override
  MalformedRequestBodyInputPayload getPayload() =>
      MalformedRequestBodyInputPayload((b) => b
        ..float = float
        ..int$ = int$);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedRequestBodyInputPayload
    implements
        Built<MalformedRequestBodyInputPayload,
            MalformedRequestBodyInputPayloadBuilder> {
  factory MalformedRequestBodyInputPayload(
          [void Function(MalformedRequestBodyInputPayloadBuilder) updates]) =
      _$MalformedRequestBodyInputPayload;

  const MalformedRequestBodyInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRequestBodyInputPayloadBuilder b) {}
  double? get float;
  int? get int$;
}

class _MalformedRequestBodyInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRequestBodyInputPayload> {
  const _MalformedRequestBodyInputRestJson1Serializer()
      : super('MalformedRequestBodyInput');

  @override
  Iterable<Type> get types => const [
        MalformedRequestBodyInput,
        _$MalformedRequestBodyInput,
        MalformedRequestBodyInputPayload,
        _$MalformedRequestBodyInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedRequestBodyInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedRequestBodyInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'float':
          if (value != null) {
            result.float = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'int':
          if (value != null) {
            result.int$ = (serializers.deserialize(value,
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
    final payload = object is MalformedRequestBodyInput
        ? object.getPayload()
        : (object as MalformedRequestBodyInputPayload);
    final result = <Object?>[];
    if (payload.float != null) {
      result
        ..add('float')
        ..add(serializers.serialize(payload.float,
            specifiedType: const FullType.nullable(double)));
    }
    if (payload.int$ != null) {
      result
        ..add('int')
        ..add(serializers.serialize(payload.int$,
            specifiedType: const FullType.nullable(int)));
    }
    return result;
  }
}

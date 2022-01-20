// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.model.map_input_error;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'map_input_error.g.dart';

abstract class MapInputError
    with _i1.SmithyHttpException
    implements
        Built<MapInputError, MapInputErrorBuilder>,
        _i1.HasPayload<MapInputErrorPayload> {
  factory MapInputError([void Function(MapInputErrorBuilder) updates]) =
      _$MapInputError;

  const MapInputError._();

  static const List<_i1.SmithySerializer> serializers = [
    _MapInputErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapInputErrorBuilder b) {}
  @override
  MapInputErrorPayload getPayload() => MapInputErrorPayload();
  @override
  _i1.ErrorKind get kind => _i1.ErrorKind.client;
  @override
  int? get statusCode => 429;
  @override
  String? get message => null;
  @override
  bool get isRetryable => true;
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class MapInputErrorPayload
    implements Built<MapInputErrorPayload, MapInputErrorPayloadBuilder> {
  factory MapInputErrorPayload(
          [void Function(MapInputErrorPayloadBuilder) updates]) =
      _$MapInputErrorPayload;

  const MapInputErrorPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapInputErrorPayloadBuilder b) {}
}

class _MapInputErrorAwsJson11Serializer
    extends _i1.SmithySerializer<MapInputErrorPayload> {
  const _MapInputErrorAwsJson11Serializer() : super('MapInputError');

  @override
  Iterable<Type> get types => const [MapInputError, _$MapInputError];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  MapInputErrorPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MapInputErrorPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

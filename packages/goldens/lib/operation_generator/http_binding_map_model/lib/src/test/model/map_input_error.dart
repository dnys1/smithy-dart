// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.model.map_input_error;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'map_input_error.g.dart';

abstract class MapInputError
    with _i1.SmithyHttpException
    implements Built<MapInputError, MapInputErrorBuilder> {
  factory MapInputError([void Function(MapInputErrorBuilder) updates]) =
      _$MapInputError;

  const MapInputError._();

  static const List<_i1.SmithySerializer<MapInputError>> serializers = [
    _MapInputErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapInputErrorBuilder b) {}
  @override
  _i1.ErrorKind get kind => _i1.ErrorKind.client;
  @override
  int? get statusCode => 429;
  @override
  String? get message => null;
  @override
  bool get isRetryable => true;
}

class _MapInputErrorAwsJson11Serializer
    extends _i1.SmithySerializer<MapInputError> {
  const _MapInputErrorAwsJson11Serializer() : super('MapInputError');

  @override
  Iterable<Type> get types => const [MapInputError, _$MapInputError];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  MapInputError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MapInputErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, MapInputError object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

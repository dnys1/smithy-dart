// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.model.map_input_error;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'map_input_error.g.dart';

abstract class MapInputError
    with _i1.AWSEquatable<MapInputError>
    implements
        Built<MapInputError, MapInputErrorBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyException {
  factory MapInputError([void Function(MapInputErrorBuilder) updates]) =
      _$MapInputError;

  const MapInputError._();

  factory MapInputError.fromResponse(
          MapInputError payload, _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _MapInputErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapInputErrorBuilder b) {}
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig =>
      const _i2.RetryConfig(isThrottlingError: false);
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'MapInputError');
    return helper.toString();
  }
}

class _MapInputErrorAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<MapInputError> {
  const _MapInputErrorAwsJson11Serializer() : super('MapInputError');

  @override
  Iterable<Type> get types => const [MapInputError, _$MapInputError];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  MapInputError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return MapInputErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

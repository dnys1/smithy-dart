// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.model.map_input_request;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'map_input_request.g.dart';

abstract class MapInputRequest
    with _i1.HttpInput<MapInputRequestPayload>
    implements
        Built<MapInputRequest, MapInputRequestBuilder>,
        _i1.HasPayload<MapInputRequestPayload> {
  factory MapInputRequest([void Function(MapInputRequestBuilder) updates]) =
      _$MapInputRequest;

  const MapInputRequest._();

  static const List<_i1.SmithySerializer> serializers = [
    _MapInputRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapInputRequestBuilder b) {}
  _i2.BuiltListMultimap<String, int?>? get mapOfLists;
  @override
  MapInputRequestPayload getPayload() =>
      MapInputRequestPayload((b) => b..mapOfLists = mapOfLists);
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MapInputRequestPayload
    implements Built<MapInputRequestPayload, MapInputRequestPayloadBuilder> {
  factory MapInputRequestPayload(
          [void Function(MapInputRequestPayloadBuilder) updates]) =
      _$MapInputRequestPayload;

  const MapInputRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapInputRequestPayloadBuilder b) {}
  _i2.BuiltListMultimap<String, int?>? get mapOfLists;
}

class _MapInputRequestAwsJson11Serializer
    extends _i1.SmithySerializer<MapInputRequestPayload> {
  const _MapInputRequestAwsJson11Serializer() : super('MapInputRequest');

  @override
  Iterable<Type> get types => const [
        MapInputRequest,
        _$MapInputRequest,
        MapInputRequestPayload,
        _$MapInputRequestPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  MapInputRequestPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MapInputRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mapOfLists':
          result.mapOfLists = (serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i2.BuiltListMultimap, [FullType(String), FullType(int)]))
              as _i2.BuiltListMultimap<String, int?>?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final MapInputRequestPayload payload = object is MapInputRequest
        ? object.getPayload()
        : (object as MapInputRequestPayload);
    final result = <Object?>[];
    if (payload.mapOfLists != null) {
      result
        ..add('mapOfLists')
        ..add(serializers.serialize(payload.mapOfLists,
            specifiedType: const FullType(
                _i2.BuiltListMultimap, [FullType(String), FullType(int)])));
    }
    return result;
  }
}

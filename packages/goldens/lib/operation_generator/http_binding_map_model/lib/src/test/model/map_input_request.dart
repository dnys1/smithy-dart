// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.model.map_input_request;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'map_input_request.g.dart';

abstract class MapInputRequest
    with _i1.HttpInput<MapInputRequest>
    implements Built<MapInputRequest, MapInputRequestBuilder> {
  factory MapInputRequest([void Function(MapInputRequestBuilder) updates]) =
      _$MapInputRequest;

  const MapInputRequest._();

  static const List<_i1.SmithySerializer<MapInputRequest>> serializers = [
    _MapInputRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapInputRequestBuilder b) {}
  _i2.BuiltListMultimap<String, int?>? get mapOfLists;
  @override
  MapInputRequest getPayload() => this;
  @override
  bool get isStreaming => false;
}

class _MapInputRequestAwsJson11Serializer
    extends _i1.SmithySerializer<MapInputRequest> {
  const _MapInputRequestAwsJson11Serializer() : super('MapInputRequest');

  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      [const _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  MapInputRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MapInputRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mapOfLists':
          result.mapOfLists.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i2.BuiltListMultimap, [FullType(String), FullType(int)]))
              as _i2.BuiltListMultimap<String, int?>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, MapInputRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.mapOfLists != null) {
      result
        ..add('mapOfLists')
        ..add(serializers.serialize(object.mapOfLists,
            specifiedType: const FullType(
                _i2.BuiltListMultimap, [FullType(String), FullType(int)])));
    }
    return result;
  }
}

// Generated code. DO NOT MODIFY.

library operation_generator.test.model.map_input_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'map_input_request.g.dart';

abstract class MapInputRequest
    with _i1.HttpInput<MapInputRequest>, _i2.AWSEquatable<MapInputRequest>
    implements Built<MapInputRequest, MapInputRequestBuilder> {
  factory MapInputRequest([void Function(MapInputRequestBuilder) updates]) =
      _$MapInputRequest;

  const MapInputRequest._();

  factory MapInputRequest.fromRequest(
          MapInputRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _MapInputRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MapInputRequestBuilder b) {}
  _i3.BuiltListMultimap<String, int>? get mapOfLists;
  @override
  MapInputRequest getPayload() => this;
  @override
  List<Object?> get props => [mapOfLists];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MapInputRequest');
    helper.add('mapOfLists', mapOfLists);
    return helper.toString();
  }
}

class _MapInputRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<MapInputRequest> {
  const _MapInputRequestAwsJson11Serializer() : super('MapInputRequest');

  @override
  Iterable<Type> get types => const [MapInputRequest, _$MapInputRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  MapInputRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MapInputRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'mapOfLists':
          if (value != null) {
            result.mapOfLists.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.BuiltListMultimap, [
                  FullType(String),
                  FullType(int)
                ])) as _i3.BuiltListMultimap<String, int>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MapInputRequest);
    final result = <Object?>[];
    if (payload.mapOfLists != null) {
      result
        ..add('mapOfLists')
        ..add(serializers.serialize(payload.mapOfLists!,
            specifiedType: const FullType(
                _i3.BuiltListMultimap, [FullType(String), FullType(int)])));
    }
    return result;
  }
}

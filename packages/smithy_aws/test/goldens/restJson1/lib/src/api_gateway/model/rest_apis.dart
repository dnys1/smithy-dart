// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.model.rest_apis;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/api_gateway/model/rest_api.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'rest_apis.g.dart';

abstract class RestApis
    with _i1.AWSEquatable<RestApis>
    implements Built<RestApis, RestApisBuilder> {
  factory RestApis([void Function(RestApisBuilder) updates]) = _$RestApis;

  const RestApis._();

  factory RestApis.fromResponse(
          RestApis payload, _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _RestApisRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestApisBuilder b) {}
  _i3.BuiltList<_i4.RestApi>? get items;
  String? get position;
  @override
  List<Object?> get props => [items, position];
}

class _RestApisRestJson1Serializer
    extends _i2.StructuredSmithySerializer<RestApis> {
  const _RestApisRestJson1Serializer() : super('RestApis');

  @override
  Iterable<Type> get types => const [RestApis, _$RestApis];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  RestApis deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RestApisBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'item':
          if (value != null) {
            result.items.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(_i4.RestApi)]))
                as _i3.BuiltList<_i4.RestApi>));
          }
          break;
        case 'position':
          if (value != null) {
            result.position = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as RestApis);
    final result = <Object?>[];
    if (payload.items != null) {
      result
        ..add('item')
        ..add(serializers.serialize(payload.items,
            specifiedType: const FullType.nullable(
                _i3.BuiltList, [FullType(_i4.RestApi)])));
    }
    if (payload.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(payload.position,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}

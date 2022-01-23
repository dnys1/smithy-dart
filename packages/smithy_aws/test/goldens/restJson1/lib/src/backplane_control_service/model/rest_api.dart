// Generated code. DO NOT MODIFY.

library rest_json1.backplane_control_service.model.rest_api;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/backplane_control_service/model/api_key_source_type.dart'
    as _i3;
import 'package:rest_json1/src/backplane_control_service/model/endpoint_configuration.dart'
    as _i5;
import 'package:smithy/smithy.dart' as _i2;

part 'rest_api.g.dart';

abstract class RestApi
    with _i1.AWSEquatable<RestApi>
    implements Built<RestApi, RestApiBuilder> {
  factory RestApi([void Function(RestApiBuilder) updates]) = _$RestApi;

  const RestApi._();

  static const List<_i2.SmithySerializer> serializers = [
    _RestApiRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestApiBuilder b) {}
  _i3.ApiKeySourceType? get apiKeySource;
  _i4.BuiltList<String>? get binaryMediaTypes;
  DateTime? get createdDate;
  String? get description;
  bool? get disableExecuteApiEndpoint;
  _i5.EndpointConfiguration? get endpointConfiguration;
  String? get id;
  int? get minimumCompressionSize;
  String? get name;
  String? get policy;
  _i4.BuiltMap<String, String>? get tags;
  String? get version;
  _i4.BuiltList<String>? get warnings;
  @override
  List<Object?> get props => [
        apiKeySource,
        binaryMediaTypes,
        createdDate,
        description,
        disableExecuteApiEndpoint,
        endpointConfiguration,
        id,
        minimumCompressionSize,
        name,
        policy,
        tags,
        version,
        warnings
      ];
}

class _RestApiRestJson1Serializer
    extends _i2.StructuredSmithySerializer<RestApi> {
  const _RestApiRestJson1Serializer() : super('RestApi');

  @override
  Iterable<Type> get types => const [RestApi, _$RestApi];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  RestApi deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RestApiBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'apiKeySource':
          if (value != null) {
            result.apiKeySource = (serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ApiKeySourceType))
                as _i3.ApiKeySourceType);
          }
          break;
        case 'binaryMediaTypes':
          if (value != null) {
            result.binaryMediaTypes.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i4.BuiltList, [FullType(String)]))
                as _i4.BuiltList<String>));
          }
          break;
        case 'createdDate':
          if (value != null) {
            result.createdDate = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'disableExecuteApiEndpoint':
          if (value != null) {
            result.disableExecuteApiEndpoint = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
        case 'endpointConfiguration':
          if (value != null) {
            result.endpointConfiguration.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i5.EndpointConfiguration))
                as _i5.EndpointConfiguration));
          }
          break;
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'minimumCompressionSize':
          if (value != null) {
            result.minimumCompressionSize = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'policy':
          if (value != null) {
            result.policy = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i4.BuiltMap, [FullType(String), FullType(String)]))
                as _i4.BuiltMap<String, String>));
          }
          break;
        case 'version':
          if (value != null) {
            result.version = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'warnings':
          if (value != null) {
            result.warnings.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i4.BuiltList, [FullType(String)]))
                as _i4.BuiltList<String>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as RestApi);
    final result = <Object?>[];
    if (payload.apiKeySource != null) {
      result
        ..add('apiKeySource')
        ..add(serializers.serialize(payload.apiKeySource,
            specifiedType: const FullType.nullable(_i3.ApiKeySourceType)));
    }
    if (payload.binaryMediaTypes != null) {
      result
        ..add('binaryMediaTypes')
        ..add(serializers.serialize(payload.binaryMediaTypes,
            specifiedType:
                const FullType.nullable(_i4.BuiltList, [FullType(String)])));
    }
    if (payload.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(payload.createdDate,
            specifiedType: const FullType.nullable(DateTime)));
    }
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(payload.description,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.disableExecuteApiEndpoint != null) {
      result
        ..add('disableExecuteApiEndpoint')
        ..add(serializers.serialize(payload.disableExecuteApiEndpoint,
            specifiedType: const FullType.nullable(bool)));
    }
    if (payload.endpointConfiguration != null) {
      result
        ..add('endpointConfiguration')
        ..add(serializers.serialize(payload.endpointConfiguration,
            specifiedType: const FullType.nullable(_i5.EndpointConfiguration)));
    }
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(payload.id,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.minimumCompressionSize != null) {
      result
        ..add('minimumCompressionSize')
        ..add(serializers.serialize(payload.minimumCompressionSize,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(payload.name,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.policy != null) {
      result
        ..add('policy')
        ..add(serializers.serialize(payload.policy,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(payload.tags,
            specifiedType: const FullType.nullable(
                _i4.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(payload.version,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.warnings != null) {
      result
        ..add('warnings')
        ..add(serializers.serialize(payload.warnings,
            specifiedType:
                const FullType.nullable(_i4.BuiltList, [FullType(String)])));
    }
    return result;
  }
}

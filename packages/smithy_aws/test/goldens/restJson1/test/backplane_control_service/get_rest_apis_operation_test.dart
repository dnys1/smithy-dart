// Generated code. DO NOT MODIFY.

library rest_json1.backplane_control_service.operation.get_rest_apis_test;

import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/backplane_control_service/model/api_key_source_type.dart'
    as _i9;
import 'package:rest_json1/src/backplane_control_service/model/bad_request_exception.dart'
    as _i11;
import 'package:rest_json1/src/backplane_control_service/model/endpoint_configuration.dart'
    as _i10;
import 'package:rest_json1/src/backplane_control_service/model/get_rest_apis_request.dart'
    as _i5;
import 'package:rest_json1/src/backplane_control_service/model/rest_api.dart'
    as _i8;
import 'package:rest_json1/src/backplane_control_service/model/rest_apis.dart'
    as _i6;
import 'package:rest_json1/src/backplane_control_service/model/too_many_requests_exception.dart'
    as _i12;
import 'package:rest_json1/src/backplane_control_service/model/unauthorized_exception.dart'
    as _i13;
import 'package:rest_json1/src/backplane_control_service/operation/get_rest_apis.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'ApiGatewayAccept (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.GetRestApisOperation(),
          testCase: const _i2.HttpRequestTestCase(
              id: 'ApiGatewayAccept',
              documentation:
                  'API Gateway requires that this Accept header is set on all requests.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Accept': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'GET',
              uri: '/restapis',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [_GetRestApisRequestRestJson1Serializer()]);
    },
  );
}

class _GetRestApisRequestRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.GetRestApisRequest> {
  const _GetRestApisRequestRestJson1Serializer() : super('GetRestApisRequest');

  @override
  Iterable<Type> get types => const [_i5.GetRestApisRequest];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.GetRestApisRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.GetRestApisRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'limit':
          if (value != null) {
            result.limit = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
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
    throw StateError('Not supported for tests');
  }
}

class _RestApisRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i6.RestApis> {
  const _RestApisRestJson1Serializer() : super('RestApis');

  @override
  Iterable<Type> get types => const [_i6.RestApis];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i6.RestApis deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.RestApisBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'items':
          if (value != null) {
            result.items.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i7.BuiltList, [FullType(_i8.RestApi)]))
                as _i7.BuiltList<_i8.RestApi>));
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
    throw StateError('Not supported for tests');
  }
}

class _RestApiRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i8.RestApi> {
  const _RestApiRestJson1Serializer() : super('RestApi');

  @override
  Iterable<Type> get types => const [_i8.RestApi];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i8.RestApi deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i8.RestApiBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'apiKeySource':
          if (value != null) {
            result.apiKeySource = (serializers.deserialize(value,
                    specifiedType: const FullType(_i9.ApiKeySourceType))
                as _i9.ApiKeySourceType);
          }
          break;
        case 'binaryMediaTypes':
          if (value != null) {
            result.binaryMediaTypes.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i7.BuiltList, [FullType(String)]))
                as _i7.BuiltList<String>));
          }
          break;
        case 'createdDate':
          if (value != null) {
            result.createdDate = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
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
                    specifiedType: const FullType(_i10.EndpointConfiguration))
                as _i10.EndpointConfiguration));
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
                        _i7.BuiltMap, [FullType(String), FullType(String)]))
                as _i7.BuiltMap<String, String>));
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
                        const FullType(_i7.BuiltList, [FullType(String)]))
                as _i7.BuiltList<String>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class _BadRequestExceptionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i11.BadRequestException> {
  const _BadRequestExceptionRestJson1Serializer()
      : super('BadRequestException');

  @override
  Iterable<Type> get types => const [_i11.BadRequestException];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i11.BadRequestException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i11.BadRequestExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
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
    throw StateError('Not supported for tests');
  }
}

class _TooManyRequestsExceptionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i12.TooManyRequestsException> {
  const _TooManyRequestsExceptionRestJson1Serializer()
      : super('TooManyRequestsException');

  @override
  Iterable<Type> get types => const [_i12.TooManyRequestsException];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i12.TooManyRequestsException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i12.TooManyRequestsExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'retryAfterSeconds':
          if (value != null) {
            result.retryAfterSeconds = (serializers.deserialize(value,
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
    throw StateError('Not supported for tests');
  }
}

class _UnauthorizedExceptionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i13.UnauthorizedException> {
  const _UnauthorizedExceptionRestJson1Serializer()
      : super('UnauthorizedException');

  @override
  Iterable<Type> get types => const [_i13.UnauthorizedException];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i13.UnauthorizedException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i13.UnauthorizedExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
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
    throw StateError('Not supported for tests');
  }
}

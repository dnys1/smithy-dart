// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.operation.get_rest_apis_test;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/api_gateway/model/api_key_source_type.dart'
    as _i10;
import 'package:rest_json1/src/api_gateway/model/bad_request_exception.dart'
    as _i12;
import 'package:rest_json1/src/api_gateway/model/endpoint_configuration.dart'
    as _i11;
import 'package:rest_json1/src/api_gateway/model/get_rest_apis_request.dart'
    as _i6;
import 'package:rest_json1/src/api_gateway/model/rest_api.dart' as _i9;
import 'package:rest_json1/src/api_gateway/model/rest_apis.dart' as _i7;
import 'package:rest_json1/src/api_gateway/model/too_many_requests_exception.dart'
    as _i13;
import 'package:rest_json1/src/api_gateway/model/unauthorized_exception.dart'
    as _i14;
import 'package:rest_json1/src/api_gateway/operation/get_rest_apis.dart' as _i3;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'ApiGatewayAccept (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.GetRestApisOperation(
              region: 'us-east-1',
              credentialsProvider: const _i4.AWSCredentialsProvider(
                  _i4.AWSCredentials(
                      'DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'))),
          testCase: const _i2.HttpRequestTestCase(
              id: 'ApiGatewayAccept',
              documentation:
                  'API Gateway requires that this Accept header is set on all requests.',
              protocol: _i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
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
    extends _i5.StructuredSmithySerializer<_i6.GetRestApisRequest> {
  const _GetRestApisRequestRestJson1Serializer() : super('GetRestApisRequest');

  @override
  Iterable<Type> get types => const [_i6.GetRestApisRequest];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i6.GetRestApisRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i6.GetRestApisRequestBuilder();
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
    extends _i5.StructuredSmithySerializer<_i7.RestApis> {
  const _RestApisRestJson1Serializer() : super('RestApis');

  @override
  Iterable<Type> get types => const [_i7.RestApis];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i7.RestApis deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i7.RestApisBuilder();
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
                        const FullType(_i8.BuiltList, [FullType(_i9.RestApi)]))
                as _i8.BuiltList<_i9.RestApi>));
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
    extends _i5.StructuredSmithySerializer<_i9.RestApi> {
  const _RestApiRestJson1Serializer() : super('RestApi');

  @override
  Iterable<Type> get types => const [_i9.RestApi];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i9.RestApi deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i9.RestApiBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'apiKeySource':
          if (value != null) {
            result.apiKeySource = (serializers.deserialize(value,
                    specifiedType: const FullType(_i10.ApiKeySourceType))
                as _i10.ApiKeySourceType);
          }
          break;
        case 'binaryMediaTypes':
          if (value != null) {
            result.binaryMediaTypes.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i8.BuiltList, [FullType(String)]))
                as _i8.BuiltList<String>));
          }
          break;
        case 'createdDate':
          if (value != null) {
            result.createdDate = _i5.TimestampSerializer.epochSeconds
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
                    specifiedType: const FullType(_i11.EndpointConfiguration))
                as _i11.EndpointConfiguration));
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
                        _i8.BuiltMap, [FullType(String), FullType(String)]))
                as _i8.BuiltMap<String, String>));
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
                        const FullType(_i8.BuiltList, [FullType(String)]))
                as _i8.BuiltList<String>));
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
    extends _i5.StructuredSmithySerializer<_i12.BadRequestException> {
  const _BadRequestExceptionRestJson1Serializer()
      : super('BadRequestException');

  @override
  Iterable<Type> get types => const [_i12.BadRequestException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i12.BadRequestException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i12.BadRequestExceptionBuilder();
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
    extends _i5.StructuredSmithySerializer<_i13.TooManyRequestsException> {
  const _TooManyRequestsExceptionRestJson1Serializer()
      : super('TooManyRequestsException');

  @override
  Iterable<Type> get types => const [_i13.TooManyRequestsException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i13.TooManyRequestsException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i13.TooManyRequestsExceptionBuilder();
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
    extends _i5.StructuredSmithySerializer<_i14.UnauthorizedException> {
  const _UnauthorizedExceptionRestJson1Serializer()
      : super('UnauthorizedException');

  @override
  Iterable<Type> get types => const [_i14.UnauthorizedException];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i14.UnauthorizedException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i14.UnauthorizedExceptionBuilder();
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

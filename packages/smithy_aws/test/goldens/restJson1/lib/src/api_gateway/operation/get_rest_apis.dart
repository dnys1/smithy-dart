// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.operation.get_rest_apis;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:rest_json1/src/api_gateway/common/serializers.dart' as _i8;
import 'package:rest_json1/src/api_gateway/model/bad_request_exception.dart'
    as _i10;
import 'package:rest_json1/src/api_gateway/model/get_rest_apis_request.dart'
    as _i2;
import 'package:rest_json1/src/api_gateway/model/rest_api.dart' as _i5;
import 'package:rest_json1/src/api_gateway/model/rest_apis.dart' as _i3;
import 'package:rest_json1/src/api_gateway/model/too_many_requests_exception.dart'
    as _i11;
import 'package:rest_json1/src/api_gateway/model/unauthorized_exception.dart'
    as _i12;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;

class GetRestApisOperation extends _i1.PaginatedHttpOperation<
    _i2.GetRestApisRequestPayload,
    _i2.GetRestApisRequest,
    _i3.RestApis,
    _i3.RestApis,
    String,
    int,
    _i4.BuiltList<_i5.RestApi>> {
  GetRestApisOperation(
      {required this.region,
      this.credentialsProvider =
          const _i6.AWSCredentialsProvider.dartEnvironment()});

  @override
  late final List<
      _i1.HttpProtocol<_i2.GetRestApisRequestPayload, _i2.GetRestApisRequest,
          _i3.RestApis, _i3.RestApis>> protocols = [
    _i7.RestJson1Protocol(
        serializers: _i8.serializers,
        builderFactories: _i8.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type'),
          _i7.WithSigV4(
              region: region,
              serviceName: 'apigateway',
              credentialsProvider: credentialsProvider),
          _i7.WithEndpointResolver(
              'API Gateway', region, _i7.AWSEndpointResolver(_partitions)),
          const _i1.WithHeader('Accept', 'application/json')
        ])
  ];

  final String region;

  static final _partitions = [
    _i7.Partition(
        id: 'aws',
        regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i7.EndpointDefinition(
            hostname: 'apigateway.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i7.CredentialScope()),
        endpoints: const {
          'af-south-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'ap-east-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'ap-northeast-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'ap-northeast-2':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'ap-northeast-3':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'ap-south-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'ap-southeast-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'ap-southeast-2':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'ca-central-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'eu-central-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'eu-north-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'eu-south-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'eu-west-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'eu-west-2':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'eu-west-3':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'me-south-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'sa-east-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'us-east-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'us-east-2':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'us-west-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'us-west-2':
              _i7.EndpointDefinition(protocols: [], signatureVersions: [])
        }),
    _i7.Partition(
        id: 'aws-cn',
        regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i7.EndpointDefinition(
            hostname: 'apigateway.{region}.amazonaws.com.cn',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i7.CredentialScope()),
        endpoints: const {
          'cn-north-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'cn-northwest-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: [])
        }),
    _i7.Partition(
        id: 'aws-iso',
        regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i7.EndpointDefinition(
            hostname: 'apigateway.{region}.c2s.ic.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i7.CredentialScope()),
        endpoints: const {
          'us-iso-east-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: [])
        }),
    _i7.Partition(
        id: 'aws-iso-b',
        regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i7.EndpointDefinition(
            hostname: 'apigateway.{region}.sc2s.sgov.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i7.CredentialScope()),
        endpoints: const {}),
    _i7.Partition(
        id: 'aws-us-gov',
        regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i7.EndpointDefinition(
            hostname: 'apigateway.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i7.CredentialScope()),
        endpoints: const {
          'us-gov-east-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: []),
          'us-gov-west-1':
              _i7.EndpointDefinition(protocols: [], signatureVersions: [])
        })
  ];

  final _i6.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.GetRestApisRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/restapis';
        if (input.position != null) {
          b.queryParameters.add('position', input.position!);
        }
        if (input.limit != null) {
          b.queryParameters.add('limit', input.limit!.toString());
        }
      });
  @override
  int successCode([_i3.RestApis? output]) => 200;
  @override
  _i3.RestApis buildOutput(
          _i3.RestApis payload, _i9.AWSStreamedHttpResponse response) =>
      _i3.RestApis.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.apigateway',
                shape: 'BadRequestException'),
            _i1.ErrorKind.client,
            _i10.BadRequestException,
            statusCode: 400,
            builder: _i10.BadRequestException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.apigateway',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i11.TooManyRequestsException,
            statusCode: 429,
            builder: _i11.TooManyRequestsException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.apigateway',
                shape: 'UnauthorizedException'),
            _i1.ErrorKind.client,
            _i12.UnauthorizedException,
            statusCode: 401,
            builder: _i12.UnauthorizedException.fromResponse)
      ];
  @override
  String? getToken(_i3.RestApis output) => output.position;
  @override
  _i4.BuiltList<_i5.RestApi> getItems(_i3.RestApis output) =>
      output.items ?? _i4.BuiltList();
  @override
  _i2.GetRestApisRequest rebuildInput(
          _i2.GetRestApisRequest input, String token, int? pageSize) =>
      input.rebuild((b) {
        if (input.position != null) {
          b.position = input.position!;
        }
        if (input.limit != null) {
          b.limit = input.limit!;
        }
      });
}

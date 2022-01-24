// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.api_gateway_client;

import 'dart:async' as _i2;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:rest_json1/src/api_gateway/model/get_rest_apis_request.dart'
    as _i6;
import 'package:rest_json1/src/api_gateway/model/rest_api.dart' as _i5;
import 'package:rest_json1/src/api_gateway/operation/get_rest_apis.dart' as _i7;
import 'package:smithy/smithy.dart' as _i3;

class ApiGatewayClient {
  const ApiGatewayClient(
      {Uri? baseUri,
      required this.region,
      this.credentialsProvider =
          const _i1.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  final String region;

  final Uri? _baseUri;

  final _i1.AWSCredentialsProvider credentialsProvider;

  _i2.Future<_i3.PaginatedResult<_i4.BuiltList<_i5.RestApi>, int>> getRestApis(
      _i6.GetRestApisRequest input) {
    return _i7.GetRestApisOperation(
            region: region,
            baseUri: _baseUri,
            credentialsProvider: credentialsProvider)
        .runPaginated(input);
  }
}

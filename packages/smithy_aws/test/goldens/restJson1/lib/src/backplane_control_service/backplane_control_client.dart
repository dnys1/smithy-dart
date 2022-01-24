// Generated code. DO NOT MODIFY.

library rest_json1.backplane_control_service.backplane_control_client;

import 'dart:async' as _i2;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:rest_json1/src/backplane_control_service/model/get_rest_apis_request.dart'
    as _i6;
import 'package:rest_json1/src/backplane_control_service/model/rest_api.dart'
    as _i5;
import 'package:rest_json1/src/backplane_control_service/operation/get_rest_apis.dart'
    as _i7;
import 'package:smithy/smithy.dart' as _i3;

class BackplaneControlClient {
  BackplaneControlClient(
      {required this.region,
      this.credentialsProvider =
          const _i1.AWSCredentialsProvider.dartEnvironment()});

  final String region;

  final _i1.AWSCredentialsProvider credentialsProvider;

  _i2.Future<_i3.PaginatedResult<_i4.BuiltList<_i5.RestApi>, int>> getRestApis(
      _i6.GetRestApisRequest input) {
    return _i7.GetRestApisOperation(
            region: region, credentialsProvider: credentialsProvider)
        .runPaginated(input);
  }
}

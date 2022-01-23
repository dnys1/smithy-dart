// Generated code. DO NOT MODIFY.

library rest_json1.backplane_control_service.backplane_control_client;

import 'dart:async' as _i1;

import 'package:built_collection/built_collection.dart' as _i3;
import 'package:rest_json1/src/backplane_control_service/model/get_rest_apis_request.dart'
    as _i5;
import 'package:rest_json1/src/backplane_control_service/model/rest_api.dart'
    as _i4;
import 'package:rest_json1/src/backplane_control_service/operation/get_rest_apis.dart'
    as _i6;
import 'package:smithy/smithy.dart' as _i2;

class BackplaneControlClient {
  BackplaneControlClient();

  _i1.Future<_i2.PaginatedResult<_i3.BuiltList<_i4.RestApi>, int>> getRestApis(
      _i5.GetRestApisRequest input) {
    return _i6.GetRestApisOperation().runPaginated(input);
  }
}

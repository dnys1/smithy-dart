///
//  Generated code. Do not modify.
//  source: codegen.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'codegen.pb.dart' as $0;
export 'codegen.pb.dart';

class RemoteCodegenClient extends $grpc.Client {
  static final _$codegenService =
      $grpc.ClientMethod<$0.ServiceRequest, $0.ServiceResult>(
          '/RemoteCodegen/CodegenService',
          ($0.ServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ServiceResult.fromBuffer(value));

  RemoteCodegenClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ServiceResult> codegenService(
      $0.ServiceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$codegenService, request, options: options);
  }
}

abstract class RemoteCodegenServiceBase extends $grpc.Service {
  $core.String get $name => 'RemoteCodegen';

  RemoteCodegenServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ServiceRequest, $0.ServiceResult>(
        'CodegenService',
        codegenService_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ServiceRequest.fromBuffer(value),
        ($0.ServiceResult value) => value.writeToBuffer()));
  }

  $async.Future<$0.ServiceResult> codegenService_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ServiceRequest> request) async {
    return codegenService(call, await request);
  }

  $async.Future<$0.ServiceResult> codegenService(
      $grpc.ServiceCall call, $0.ServiceRequest request);
}

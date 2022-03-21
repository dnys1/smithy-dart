// Generated code. DO NOT MODIFY.

library operation_generator.test.test_client;

import 'dart:async' as _i4;

import 'package:built_value/serializer.dart';
import 'package:operation_generator/src/test/common/serializers.dart' as _i3;
import 'package:operation_generator/src/test/model/map_input_error.dart' as _i7;
import 'package:operation_generator/src/test/model/map_input_request.dart'
    as _i5;
import 'package:shelf/shelf.dart' as _i6;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

part 'test_server.g.dart';

abstract class TestServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i2.AwsJson1_1Protocol(
      serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  _i4.Future<_i1.Unit> mapInput(_i5.MapInputRequest input, _i1.Context context);
  _i4.Future<_i6.Response> call(_i6.Request request) =>
      _$_TestServerRouter(_TestServer(this))(request);
}

class _TestServer extends _i1.HttpServer<TestServerBase> {
  _TestServer(this.service);

  @override
  final TestServerBase service;

  late final _i1.HttpProtocol<_i5.MapInputRequest, _i5.MapInputRequest,
          _i1.Unit, _i1.Unit> _mapInputProtocol =
      _i2.AwsJson1_1Protocol(
          serializers: _i3.serializers, builderFactories: _i3.builderFactories);

  @Route.post('/input/map')
  _i4.Future<_i6.Response> mapInput(_i6.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] = _mapInputProtocol.contentType;
    try {
      final payload = (await _mapInputProtocol.deserialize(awsRequest.split(),
              specifiedType: const FullType(_i5.MapInputRequest))
          as _i5.MapInputRequest);
      final input =
          _i5.MapInputRequest.fromRequest(payload, awsRequest, labels: {});
      final output = await service.mapInput(input, context);
      const statusCode = 200;
      final body = _mapInputProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit));
      return _i6.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on _i7.MapInputError catch (e) {
      final body = _mapInputProtocol.serialize(e,
          specifiedType: const FullType(_i7.MapInputError));
      const statusCode = 429;
      return _i6.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }
}

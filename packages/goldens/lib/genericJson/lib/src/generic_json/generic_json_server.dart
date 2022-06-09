// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library generic_json.generic_json.generic_json_client;

import 'dart:async' as _i3;

import 'package:built_value/serializer.dart';
import 'package:generic_json/src/generic_json/common/serializers.dart' as _i2;
import 'package:shelf/shelf.dart' as _i4;
import 'package:shelf_router/shelf_router.dart';
import 'package:smithy/smithy.dart' as _i1;

abstract class GenericJsonServerBase extends _i1.HttpServerBase {
  @override
  late final _i1.HttpProtocol protocol = _i1.GenericJsonProtocol(
      serializers: _i2.serializers, builderFactories: _i2.builderFactories);

  late final Router _router = () {
    final service = _GenericJsonServer(this);
    final router = Router();
    router.add('POST', r'/UnitInputAndOutput', service.unitInputAndOutput);
    return router;
  }();

  _i3.Future<_i1.Unit> unitInputAndOutput(_i1.Unit input, _i1.Context context);
  _i3.Future<_i4.Response> call(_i4.Request request) => _router(request);
}

class _GenericJsonServer extends _i1.HttpServer<GenericJsonServerBase> {
  _GenericJsonServer(this.service);

  @override
  final GenericJsonServerBase service;

  late final _i1.HttpProtocol<_i1.Unit, _i1.Unit, _i1.Unit, _i1.Unit>
      _unitInputAndOutputProtocol = _i1.GenericJsonProtocol(
          serializers: _i2.serializers, builderFactories: _i2.builderFactories);

  _i3.Future<_i4.Response> unitInputAndOutput(_i4.Request request) async {
    final awsRequest = request.awsRequest;
    final context = _i1.Context(awsRequest);
    context.response.headers['Content-Type'] =
        _unitInputAndOutputProtocol.contentType;
    try {
      final payload = (await _unitInputAndOutputProtocol.deserialize(
          awsRequest.split(),
          specifiedType: const FullType(_i1.Unit)) as _i1.Unit);
      final input = payload;
      final output = await service.unitInputAndOutput(input, context);
      const statusCode = 200;
      final body = _unitInputAndOutputProtocol.serialize(output,
          specifiedType: const FullType(_i1.Unit, [FullType(_i1.Unit)]));
      return _i4.Response(statusCode,
          body: body, headers: context.response.build().headers.toMap());
    } on Object catch (e, st) {
      return service.handleUncaughtError(e, st);
    }
  }
}

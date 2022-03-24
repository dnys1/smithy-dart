import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:shelf/shelf.dart';
import 'package:smithy/smithy.dart';

/// {@template smithy.http_server}
/// Interface for Smithy HTTP servers conforming to a [Service] interface.
/// {@endtemplate}
abstract class HttpServer<Service extends HttpServerBase>
    implements FullSerializer<Stream<List<int>>> {
  /// {@macro smithy.http_server}
  const HttpServer();

  Service get service;

  @override
  Stream<List<int>> serialize(Object? input, {FullType? specifiedType}) =>
      service.serialize(input, specifiedType: specifiedType);

  @override
  Object? deserialize(Stream<List<int>> input, {FullType? specifiedType}) =>
      service.deserialize(input, specifiedType: specifiedType);
}

abstract class HttpServerBase implements FullSerializer<Stream<List<int>>> {
  HttpProtocol get protocol;

  @override
  Stream<List<int>> serialize(Object? input, {FullType? specifiedType}) =>
      protocol.serialize(input, specifiedType: specifiedType);

  @override
  Object? deserialize(Stream<List<int>> input, {FullType? specifiedType}) =>
      protocol.deserialize(input, specifiedType: specifiedType);

  Future<Response> handleUncaughtError(Object error, StackTrace st);
}

class Context {
  Context(this.request, [HttpResponseBuilder? response])
      : response = response ?? HttpResponseBuilder();

  final AWSStreamedHttpRequest request;
  final HttpResponseBuilder response;
}

extension ShelfAwsRequest on Request {
  AWSStreamedHttpRequest get awsRequest => AWSStreamedHttpRequest(
        method: HttpMethodX.fromString(method),
        host: requestedUri.host,
        path: requestedUri.path,
        headers: headers,
        queryParameters: requestedUri.queryParametersAll,
        body: read(),
      );
}
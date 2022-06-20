import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy/src/http/http_operation.dart';

import 'web_socket_stub.dart'
    if (dart.library.io) 'web_socket_io.dart'
    if (dart.library.html) 'web_socket_html.dart';

abstract class WebSocketOperation<InputPayload, Input, OutputPayload, Output>
    extends HttpOperationBase<InputPayload, Input, OutputPayload, Output,
        WebSocketConnection<Input, Output>> {
  @override
  WebSocketConnection<Input, Output> run(
    Input input, {
    HttpClient? client,
    ShapeId? useProtocol,
  }) {
    assert(
      baseUri.scheme == 'ws' || baseUri.scheme == 'wss',
      'WebSockets require connection on ws:// or wss:// URI.',
    );
    final protocol = resolveProtocol(useProtocol: useProtocol);
    final streamCompleter = StreamCompleter<Output>();
    final sinkCompleter = StreamSinkCompleter<Input>();

    unawaited(_init(
      protocol,
      input,
      streamCompleter,
      sinkCompleter,
    ));

    return WebSocketConnection<Input, Output>(
      streamCompleter.stream,
      sinkCompleter.sink,
    );
  }

  Future<void> _init(
    HttpProtocol<InputPayload, Input, OutputPayload, Output> protocol,
    Input input,
    StreamCompleter<Output> streamCompleter,
    StreamSinkCompleter<Input> sinkCompleter,
  ) async {
    final StreamController<Output> controller = StreamController(
      sync: true,
    );
    streamCompleter.setSourceStream(controller.stream);
    await runZonedGuarded(
      () async {
        final request = await createRequest(
          buildRequest(input),
          protocol,
          input,
        );
        final channel = wsConnect(request.uri, headers: request.headers);
        sinkCompleter.setDestinationSink(channel.sink.transform(
          StreamSinkTransformer<Input, Object?>.fromHandlers(),
        ));
        await for (final Object? /*String|List<int>*/ buffer
            in channel.stream) {
          final List<int> data;
          if (buffer is String) {
            data = utf8.encode(buffer);
          } else if (buffer is List<int>) {
            data = buffer;
          } else {
            throw Exception(
              'Unknown WebSocket payload type (${buffer.runtimeType}): $buffer',
            );
          }
          final stream = Stream.value(data);
          final response = AWSStreamedHttpResponse(
            statusCode: 200,
            body: stream,
          );

          try {
            final output = await deserializeOutput(
              protocol: protocol,
              response: response,
            );
            controller.add(output);
            continue;
          } on Object catch (e, st) {
            controller.addError(e, st);
            break;
          }
        }

        controller.close();
      },
      (Object error, StackTrace stackTrace) {
        controller.addError(error, stackTrace);
        controller.close();
      },
    );
  }
}

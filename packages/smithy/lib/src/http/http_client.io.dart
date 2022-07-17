import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:http2/http2.dart';
import 'package:smithy/smithy.dart';

class Http2Client implements HttpClient {
  @override
  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request) async {
    final secureSocket = await SecureSocket.connect(
      request.uri.host,
      request.uri.port,
      supportedProtocols: ['h2'],
    );

    if (secureSocket.selectedProtocol != 'h2') {
      throw Exception('Failed to negogiate http/2 via alpn. Maybe server '
          "doesn't support http/2.");
    }
    final transport = ClientTransportConnection.viaSocket(secureSocket);
    final stream = transport.makeRequest(
      [
        Header.ascii(':method', request.method.value),
        Header.ascii(':path', request.path),
        Header.ascii(':scheme', request.uri.scheme),
        Header.ascii(':authority', request.uri.host),
        for (final entry in request.headers.entries)
          Header.ascii(entry.key, entry.value),
      ],
      endStream: true,
    );

    final Completer<void> gotHeaders = Completer();
    final Map<String, String> headers = {};
    final StreamController<List<int>> bodyController =
        StreamController(sync: true);
    stream.incomingMessages.listen(
      (message) {
        if (message is HeadersStreamMessage) {
          headers.addEntries(message.headers.map((header) {
            return MapEntry(
              utf8.decode(header.name),
              utf8.decode(header.value),
            );
          }));
        } else if (message is DataStreamMessage) {
          bodyController.add(message.bytes);
        }
        gotHeaders.complete();
      },
      onError: (Object error, StackTrace stackTrace) {
        bodyController.addError(error, stackTrace);
        bodyController.close();
      },
      onDone: () async {
        await bodyController.close();
        await transport.finish();
        await secureSocket.close();
      },
    );

    await gotHeaders.future;
    final statusCode = int.parse(headers.remove(':status')!);
    return AWSStreamedHttpResponse(
      statusCode: statusCode,
      body: bodyController.stream,
      headers: headers,
    );
  }

  @override
  AlpnProtocol get protocol => AlpnProtocol.http2;
}

import 'package:aws_common/aws_common.dart';
import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';

import 'http_client.stub.dart' if (dart.library.io) 'http_client.io.dart';

abstract class HttpClient implements Client {
  /// Creates an HTTP/1.1 client.
  factory HttpClient.v1({http.Client? baseClient}) = _Http1_1Client;

  /// Creates an HTTP/2 client.
  factory HttpClient.v2() = Http2Client;

  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request);

  /// The ALPN protocol for this client.
  AlpnProtocol get protocol;
}

class _Http1_1Client implements HttpClient {
  _Http1_1Client({
    http.Client? baseClient,
  }) : baseClient = baseClient ?? http.Client();

  final http.Client baseClient;

  @override
  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request) async {
    final response = await request.send(baseClient);
    return AWSStreamedHttpResponse(
      statusCode: response.statusCode,
      headers: response.headers,
      body: response.stream,
    );
  }

  @override
  AlpnProtocol get protocol => AlpnProtocol.http1_1;
}

// ignore_for_file: camel_case_types

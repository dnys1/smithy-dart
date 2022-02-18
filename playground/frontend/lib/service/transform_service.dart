import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:smithy_playground/model/dart_services.pbserver.dart';

class TransformException implements Exception {
  const TransformException(this.message);

  final String message;

  @override
  String toString() => 'TransformException{$message}';
}

class TransformerService {
  static final _client = http.Client();
  static final _transformUrl = Uri.parse(const String.fromEnvironment(
    'API_URL',
    defaultValue: 'http://localhost:8000',
  ));
  static final _dartServicesUrl = Uri.parse(const String.fromEnvironment(
    'DART_SERVICES_URL',
    defaultValue: 'http://localhost:8082',
  ));

  Future<String> transform(String idl) async {
    final resp = await _client.post(_transformUrl, body: idl);
    if (resp.statusCode != 200) {
      throw TransformException(resp.body);
    }
    return resp.body;
  }

  Future<String> format(String library) async {
    try {
      final request = SourceRequest(source: library);
      final requestJson = jsonEncode(request.toProto3Json());
      final resp = await _client.post(
        _dartServicesUrl.resolve('/api/dartservices/v1/format'),
        body: requestJson,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      final formatResponse = FormatResponse.create()
        ..mergeFromProto3Json(jsonDecode(resp.body));
      if (resp.statusCode != 200) {
        throw TransformException(formatResponse.error.message);
      }
      return formatResponse.newString;
    } catch (e) {
      return library;
    }
  }
}

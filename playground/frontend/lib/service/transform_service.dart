import 'dart:convert';

import 'package:http/http.dart' as http;

class TransformException implements Exception {
  const TransformException(this.message);

  final String message;
}

class TransformerService {
  static final _client = http.Client();
  static final _baseUrl = Uri.parse(const String.fromEnvironment('API_URL'));

  Future<String> transform(String idl) async {
    final resp = await _client.post(_baseUrl, body: idl);
    if (resp.statusCode != 200) {
      throw TransformException(resp.body);
    }
    return resp.body;
  }
}

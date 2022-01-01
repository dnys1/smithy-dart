import 'dart:convert';

import 'package:smithy_playground/model/transform_response.dart';
import 'package:http/http.dart' as http;

class TransformException implements Exception {
  const TransformException(this.message);

  final String message;
}

class TransformerService {
  static final _client = http.Client();
  static final _baseUrl = Uri.parse(
    // const String.fromEnvironment('API_URL')
    'https://8kfdofbpn1.execute-api.us-west-2.amazonaws.com/prod/',
  );

  Future<TransformResponse> transform(String idl) async {
    final resp = await _client.post(_baseUrl, body: idl);
    if (resp.statusCode != 200) {
      throw TransformException(resp.body);
    }
    final body = resp.body;
    return TransformResponse.fromJson(jsonDecode(body));
  }
}

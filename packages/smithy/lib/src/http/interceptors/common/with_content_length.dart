import 'dart:async';

import 'package:smithy/smithy.dart';

class WithContentLength extends HttpInterceptor {
  const WithContentLength();

  static const _key = 'Content-Length';

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
    HttpRequestContextBuilder context,
  ) async {
    if (!request.headers.containsKey(_key)) {
      request.headers[_key] = (await request.contentLength).toString();
    }
    return request;
  }
}

import 'dart:async';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'package:smithy/smithy.dart';

/// Intercepts HTTP operations to include an MD5 content hash in the header.
///
/// See: https://awslabs.github.io/smithy/1.0/spec/core/behavior-traits.html#httpchecksumrequired-trait
class ChecksumInterceptor extends HttpInterceptor {
  const ChecksumInterceptor();

  @override
  Future<void> intercept(AWSStreamedHttpRequest request) async {
    final bytes = await ByteStream(request.split()).toBytes();
    request.headers['Content-MD5'] = hex.encode(md5.convert(bytes).bytes);
  }
}

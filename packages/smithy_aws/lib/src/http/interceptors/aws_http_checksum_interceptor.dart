import 'dart:async';

import 'package:convert/convert.dart';
import 'package:crclib/catalog.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'package:smithy/smithy.dart';

extension on ChecksumAlgorithm {
  String get headerKey => 'x-amz-checksum-${name.toLowerCase()}';
}

/// Handles the checksum required by the `aws.protocols#httpChecksum` trait.
///
/// https://awslabs.github.io/smithy/1.0/spec/aws/aws-core.html#aws-protocols-httpchecksum-trait
class AWSHttpChecksumInterceptor extends HttpRequestInterceptor {
  const AWSHttpChecksumInterceptor([
    this.headerKey = 'Content-MD5',
    this.alg = ChecksumAlgorithm.md5,
  ]);

  final String headerKey;
  final ChecksumAlgorithm alg;

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    final body = await ByteStream(request.split()).toBytes();
    final String checksum;
    switch (alg) {
      case ChecksumAlgorithm.crc32c:
        final crc = Crc32C().convert(body);
        checksum = crc.toRadixString(16);
        break;
      case ChecksumAlgorithm.crc32:
        final crc = Crc32().convert(body);
        checksum = crc.toRadixString(16);
        break;
      case ChecksumAlgorithm.sha1:
        checksum = hex.encode(sha1.convert(body).bytes);
        break;
      case ChecksumAlgorithm.sha256:
        checksum = hex.encode(sha256.convert(body).bytes);
        break;
      case ChecksumAlgorithm.md5:
        checksum = hex.encode(md5.convert(body).bytes);
        break;
    }
    request.headers[headerKey] = checksum;
    return request;
  }
}

class AWSHttpChecksumResponseInterceptor extends HttpResponseInterceptor {
  const AWSHttpChecksumResponseInterceptor({
    required this.responseAlgorithms,
  });

  final List<ChecksumAlgorithm> responseAlgorithms;

  @override
  Future<void> intercept(AWSStreamedHttpResponse response) async {
    for (final alg in responseAlgorithms) {
      final checksum = response.headers[alg];
      if (checksum == null) {
        continue;
      }
    }
  }
}

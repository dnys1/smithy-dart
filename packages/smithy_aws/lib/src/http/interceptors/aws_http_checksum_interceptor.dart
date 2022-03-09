import 'dart:async';
import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crclib/catalog.dart';
import 'package:crypto/crypto.dart';
import 'package:smithy/smithy.dart';

extension ChecksumAlgorithmUtils on ChecksumAlgorithm {
  /// The key to use in the request/response headers.
  String get headerKey {
    switch (this) {
      case ChecksumAlgorithm.md5:
        return 'Content-MD5';
      default:
        return 'x-amz-checksum-${name.toLowerCase()}';
    }
  }

  /// Computes the digest hash for [body].
  Future<String> computeFor(Stream<List<int>> body) async {
    switch (this) {
      case ChecksumAlgorithm.crc32c:
        final crc = await Crc32C().bind(body).last;
        return base64Encode(hex.decode(crc.toRadixString(16)));
      case ChecksumAlgorithm.crc32:
        final crc = await Crc32().bind(body).last;
        return base64Encode(hex.decode(crc.toRadixString(16)));
      case ChecksumAlgorithm.sha1:
        final digest = await sha1.bind(body).last;
        return base64Encode(digest.bytes);
      case ChecksumAlgorithm.sha256:
        final digest = await sha256.bind(body).last;
        return base64Encode(digest.bytes);
      case ChecksumAlgorithm.md5:
        final digest = await md5.bind(body).last;
        return base64Encode(digest.bytes);
    }
  }
}

/// {@template smithy_aws.aws_htto_checksum_request_interceptor}
/// Handles the checksum required by the `aws.protocols#httpChecksum` trait.
///
/// https://awslabs.github.io/smithy/1.0/spec/aws/aws-core.html#aws-protocols-httpchecksum-trait
/// {@endtemplate}
class AWSHttpChecksumRequestInterceptor extends HttpRequestInterceptor {
  /// {@macro smithy_aws.aws_htto_checksum_request_interceptor}
  const AWSHttpChecksumRequestInterceptor([
    this.alg = ChecksumAlgorithm.md5,
  ]);

  final ChecksumAlgorithm alg;

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    if (request.headers.containsKey(alg.headerKey)) {
      return request;
    }
    final checksum = await alg.computeFor(request.split());
    request.headers[alg.headerKey] = checksum;
    return request;
  }
}

/// {@template smithy_aws.aws_htto_checksum_response_interceptor}
/// Handles the checksum required by the `aws.protocols#httpChecksum` trait.
///
/// https://awslabs.github.io/smithy/1.0/spec/aws/aws-core.html#aws-protocols-httpchecksum-trait
/// {@endtemplate}
class AWSHttpChecksumResponseInterceptor extends HttpResponseInterceptor {
  /// {@macro smithy_aws.aws_htto_checksum_response_interceptor}
  const AWSHttpChecksumResponseInterceptor(this.responseAlgorithms);

  final List<ChecksumAlgorithm> responseAlgorithms;

  @override
  Future<void> intercept(AWSStreamedHttpResponse response) async {
    for (final alg in responseAlgorithms) {
      final checksum = response.headers[alg.headerKey];
      if (checksum == null) {
        continue;
      }
      final computed = await alg.computeFor(response.split());
      if (checksum != computed) {
        throw ChecksumValidationException('Expected: $checksum\nGot:$computed');
      }
    }
  }
}

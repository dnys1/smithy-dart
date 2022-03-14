import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:smithy/smithy.dart';

class WithSigV4 extends HttpRequestInterceptor {
  const WithSigV4({
    required this.region,
    required this.serviceName,
    required this.credentialsProvider,
    this.serviceConfiguration = const BaseServiceConfiguration(),
    this.algorithm = AWSAlgorithm.hmacSha256,
    this.isOptional = false,
  });

  /// Do close to last, since it depends on all added headers and resolved
  /// endpoints, etc.
  @override
  int get order => 100;

  final bool isOptional;
  final String region;
  final String serviceName;
  final AWSAlgorithm algorithm;
  final AWSCredentialsProvider credentialsProvider;
  final ServiceConfiguration serviceConfiguration;

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
  ) async {
    // Try to retrieve credentials. If it fails, continue without authentication
    // for optional auth requests only.
    try {
      await credentialsProvider.retrieve();
    } on Exception {
      if (isOptional) {
        return request;
      }
      rethrow;
    }
    final AWSSigV4Signer signer = AWSSigV4Signer(
      credentialsProvider: credentialsProvider,
      algorithm: algorithm,
    );
    return signer.sign(
      request,
      credentialScope: AWSCredentialScope(
        region: region,
        service: serviceName,
      ),
      serviceConfiguration: serviceConfiguration,
    );
  }
}

import 'dart:async';

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:smithy/smithy.dart';

class WithSigV4 extends HttpInterceptor {
  const WithSigV4({
    required this.region,
    required this.serviceName,
    required this.credentialsProvider,
    this.serviceConfiguration = const BaseServiceConfiguration(),
    this.algorithm = AWSAlgorithm.hmacSha256,
  });

  /// Do close to last, since it depends on all added headers and resolved
  /// endpoints, etc.
  @override
  int get order => 100;

  final String region;
  final String serviceName;
  final AWSAlgorithm algorithm;
  final AWSCredentialsProvider credentialsProvider;
  final ServiceConfiguration serviceConfiguration;

  @override
  Future<AWSStreamedHttpRequest> intercept(
    AWSStreamedHttpRequest request,
    HttpRequestContextBuilder context,
  ) async {
    final AWSSigV4Signer signer = AWSSigV4Signer(
      credentialsProvider: credentialsProvider,
      algorithm: algorithm,
    );
    return signer.sign(
      request,
      credentialScope: AWSCredentialScope(
        region: context.awsSigningRegion ?? region,
        service: context.awsSigningService ?? serviceName,
      ),
      serviceConfiguration: serviceConfiguration,
    );
  }
}

import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';

class WithEndpointResolver extends HttpInterceptor {
  const WithEndpointResolver(
    this.serviceId,
    this.region,
    this.endpointResolver,
  );

  final String serviceId;
  final String region;
  final AWSEndpointResolver endpointResolver;

  @override
  AWSStreamedHttpRequest intercept(
    AWSStreamedHttpRequest request,
    HttpRequestContextBuilder context,
  ) {
    final AWSEndpoint endpoint = endpointResolver.resolve(serviceId, region);

    final signingService = endpoint.credentialScope?.service;
    if (signingService != null) {
      context.awsSigningService = signingService;
    }
    final signingRegion = endpoint.credentialScope?.region;
    if (signingRegion != null) {
      context.awsSigningRegion = signingRegion;
    }

    // TODO: Update URI
    return request;
  }
}

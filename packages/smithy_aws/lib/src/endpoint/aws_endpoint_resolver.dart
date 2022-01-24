import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';

abstract class AWSEndpointResolver {
  const factory AWSEndpointResolver(List<Partition> partitions) =
      _DefaultEndpointResolver;

  AWSEndpoint resolve(String service, String region);

  AWSEndpoint resolveWithContext(
    String serviceId,
    String region,
    HttpRequestContextBuilder context,
  );
}

class _DefaultEndpointResolver implements AWSEndpointResolver {
  const _DefaultEndpointResolver(this.partitions);

  final List<Partition> partitions;

  @override
  AWSEndpoint resolve(String service, String region) {
    return resolveEndpoint(partitions, region);
  }

  @override
  AWSEndpoint resolveWithContext(
    String serviceId,
    String region,
    HttpRequestContextBuilder context,
  ) {
    final AWSEndpoint endpoint = resolve(serviceId, region);

    final signingService = endpoint.credentialScope?.service;
    if (signingService != null) {
      context.awsSigningService = signingService;
    }
    final signingRegion = endpoint.credentialScope?.region;
    if (signingRegion != null) {
      context.awsSigningRegion = signingRegion;
    }

    return endpoint;
  }
}

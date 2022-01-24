import 'package:smithy_aws/src/endpoint/aws_endpoint.dart';
import 'package:smithy_aws/src/endpoint/partition.dart';

abstract class EndpointResolver {
  const factory EndpointResolver() = _DefaultEndpointResolver;

  AWSEndpoint resolve(String service, String region);
}

class _DefaultEndpointResolver implements EndpointResolver {
  const _DefaultEndpointResolver();

  @override
  AWSEndpoint resolve(String service, String region) {
    return resolveEndpoint(region);
  }
}

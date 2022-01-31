import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';

abstract class AWSEndpointResolver {
  const factory AWSEndpointResolver(List<Partition> partitions) =
      _DefaultEndpointResolver;

  AWSEndpoint resolve(String service, String region);
}

class _DefaultEndpointResolver implements AWSEndpointResolver {
  const _DefaultEndpointResolver(this.partitions);

  final List<Partition> partitions;

  @override
  AWSEndpoint resolve(String service, String region) {
    return resolveEndpoint(partitions, region);
  }
}

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_codegen/src/aws/partition_node.dart';

part 'endpoints.g.dart';

@JsonLiteral('endpoints.json', asConst: true)
Map get _awsEndpoints => _$_awsEndpointsJsonLiteral;

late final Map<String, PartitionNode> awsPartitions = Map.fromEntries(
  (_awsEndpoints['partitions'] as List).map((el) {
    final config = PartitionNode.fromJson((el as Map).cast());
    return MapEntry(config.partition, config);
  }),
);

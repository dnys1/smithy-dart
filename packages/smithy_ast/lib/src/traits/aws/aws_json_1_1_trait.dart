import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'aws_json_1_1_trait.g.dart';

@JsonSerializable()
class AwsJson1_1Trait extends AWSProtocolTrait {
  const AwsJson1_1Trait({
    List<AlpnProtocol> http = AWSProtocolTrait.defaultHttpProtocols,
    List<AlpnProtocol>? eventStreamHttp,
  }) : super(
          id,
          http: http,
          eventStreamHttp: eventStreamHttp,
          timestampFormat: TimestampFormat.epochSeconds,
        );

  factory AwsJson1_1Trait.fromJson(Map<String, Object?> json) =>
      _$AwsJson1_1TraitFromJson(json);

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1');

  @override
  Map<String, Object?> toJson() => _$AwsJson1_1TraitToJson(this);

  @override
  List<ShapeId> get traits => const [
        CorsTrait.id,
        EndpointTrait.id,
        HostLabelTrait.id,
        JsonNameTrait.id,
        TimestampFormatTrait.id,
      ];
}

// ignore_for_file: camel_case_types
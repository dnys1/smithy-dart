import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'rest_json_1_trait.g.dart';

///
///
/// **Important**: This protocol only permits the `httpPayload` trait to be
/// applied to members that target structures, documents, strings, blobs, or
/// unions.
@JsonSerializable()
class RestJson1Trait extends AWSProtocolTrait {
  const RestJson1Trait({
    List<AlpnProtocol> http = AWSProtocolTrait.defaultHttpProtocols,
    List<AlpnProtocol>? eventStreamHttp,
  }) : super(
          id,
          http: http,
          eventStreamHttp: eventStreamHttp,
          timestampFormat: TimestampFormat.epochSeconds,
        );

  factory RestJson1Trait.fromJson(Map<String, Object?> json) =>
      _$RestJson1TraitFromJson(json);

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'restJson1');

  @override
  Map<String, Object?> toJson() => _$RestJson1TraitToJson(this);

  @override
  List<ShapeId> get traits => const [
        CorsTrait.id,
        EndpointTrait.id,
        HostLabelTrait.id,
        HttpTrait.id,
        HttpErrorTrait.id,
        HttpHeaderTrait.id,
        HttpLabelTrait.id,
        HttpPayloadTrait.id,
        HttpPrefixHeadersTrait.id,
        HttpQueryTrait.id,
        HttpQueryParamsTrait.id,
        JsonNameTrait.id,
        TimestampFormatTrait.id,
      ];
}

import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
// ignore: implementation_imports
import 'package:smithy/src/protocol/generic_json_protocol.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/types.dart';

extension ProtocolUtils on ProtocolDefinitionTrait {
  /// Whether this protocol supports [traitId].
  bool supportsTrait(ShapeId traitId) => traits.contains(traitId);

  /// The protocol class which can be instantiated.
  Reference get instantiableProtocolSymbol {
    switch (runtimeType) {
      case GenericJsonProtocolDefinitionTrait:
        return DartTypes.smithy.genericJsonProtocol;
      case AwsJson1_0Trait:
        return DartTypes.smithyAws.awsJson1_0Protocol;
      case AwsJson1_1Trait:
        return DartTypes.smithyAws.awsJson1_1Protocol;
      case RestJson1Trait:
        return DartTypes.smithyAws.restJson1Protocol;
      case RestXmlTrait:
        return DartTypes.smithyAws.restXmlProtocol;
      default:
        throw UnsupportedError(
          'No protocol found for $runtimeType ($shapeId).',
        );
    }
  }

  SerializerConfig get serializerConfig {
    switch (runtimeType) {
      case GenericJsonProtocolDefinitionTrait:
        return const SerializerConfig.genericJson();
      case AwsJson1_0Trait:
      case AwsJson1_1Trait:
        return const SerializerConfig.awsJson();
      case RestJson1Trait:
        return const SerializerConfig.restJson1();
      default:
        return const SerializerConfig();
    }
  }
}

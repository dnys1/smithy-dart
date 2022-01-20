import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';

extension ProtocolUtils on ProtocolDefinitionTrait {
  /// The protocol class which can be instantiated.
  Reference get instantiableProtocolSymbol {
    switch (runtimeType) {
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
            'No protocol found for $runtimeType ($shapeId).');
    }
  }

  SerializerConfig get serializerConfig {
    switch (runtimeType) {
      case GenericProtocolDefinitionTrait:
        return const SerializerConfig.genericJson();
      case AwsJson1_0Trait:
        return const SerializerConfig.awsJson10();
      default:
        return const SerializerConfig();
    }
  }
}

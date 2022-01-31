// Generated code. DO NOT MODIFY.

library rest_xml_with_namespace.rest_xml_protocol_namespace.rest_xml_protocol_namespace_client;

import 'dart:async' as _i1;

import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/simple_scalar_properties_input_output.dart'
    as _i2;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/operation/simple_scalar_properties.dart'
    as _i3;

/// A REST XML service that sends XML requests and responses.
///
/// This service and test case is complementary to the test cases
/// in the \`restXml\` directory, but the service under test here has
/// the \`xmlNamespace\` trait applied to it.
///
/// See https://github.com/awslabs/smithy/issues/616
class RestXmlProtocolNamespaceClient {
  /// A REST XML service that sends XML requests and responses.
  ///
  /// This service and test case is complementary to the test cases
  /// in the \`restXml\` directory, but the service under test here has
  /// the \`xmlNamespace\` trait applied to it.
  ///
  /// See https://github.com/awslabs/smithy/issues/616
  const RestXmlProtocolNamespaceClient({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  final String region;

  final Uri? _baseUri;

  _i1.Future<_i2.SimpleScalarPropertiesInputOutput> simpleScalarProperties(
      _i2.SimpleScalarPropertiesInputOutput input) {
    return _i3.SimpleScalarPropertiesOperation(
            region: region, baseUri: _baseUri)
        .run(input);
  }
}

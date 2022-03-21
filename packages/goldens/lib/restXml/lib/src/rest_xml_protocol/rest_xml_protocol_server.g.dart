// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.rest_xml_protocol.rest_xml_protocol_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_RestXmlProtocolServerRouter(_RestXmlProtocolServer service) {
  final router = Router();
  router.add('GET', r'/AllQueryStringTypesInput', service.allQueryStringTypes);
  router.add('PUT', r'/BodyWithXmlName', service.bodyWithXmlName);
  router.add('GET', r'/ConstantAndVariableQueryString?foo=bar',
      service.constantAndVariableQueryString);
  router.add('GET', r'/ConstantQueryString/<hello>?foo=bar&hello',
      service.constantQueryString);
  router.add(
      'POST', r'/EmptyInputAndEmptyOutput', service.emptyInputAndEmptyOutput);
  router.add('POST', r'/EndpointOperation', service.endpointOperation);
  router.add('POST', r'/EndpointWithHostLabelHeaderOperation',
      service.endpointWithHostLabelHeaderOperation);
  router.add('POST', r'/EndpointWithHostLabelOperation',
      service.endpointWithHostLabelOperation);
  router.add('POST', r'/FlattenedXmlMap', service.flattenedXmlMap);
  router.add('POST', r'/FlattenedXmlMapWithXmlName',
      service.flattenedXmlMapWithXmlName);
  router.add('POST', r'/FlattenedXmlMapWithXmlNamespace',
      service.flattenedXmlMapWithXmlNamespace);
  router.add('PUT', r'/GreetingWithErrors', service.greetingWithErrors);
  router.add('POST', r'/HttpPayloadTraits', service.httpPayloadTraits);
  router.add('POST', r'/HttpPayloadTraitsWithMediaType',
      service.httpPayloadTraitsWithMediaType);
  router.add('PUT', r'/HttpPayloadWithMemberXmlName',
      service.httpPayloadWithMemberXmlName);
  router.add(
      'PUT', r'/HttpPayloadWithStructure', service.httpPayloadWithStructure);
  router.add('PUT', r'/HttpPayloadWithXmlName', service.httpPayloadWithXmlName);
  router.add('PUT', r'/HttpPayloadWithXmlNamespace',
      service.httpPayloadWithXmlNamespace);
  router.add('PUT', r'/HttpPayloadWithXmlNamespaceAndPrefix',
      service.httpPayloadWithXmlNamespaceAndPrefix);
  router.add('GET', r'/HttpPrefixHeaders', service.httpPrefixHeaders);
  router.add('GET', r'/FloatHttpLabels/<float>/<double>',
      service.httpRequestWithFloatLabels);
  router.add('GET', r'/HttpRequestWithGreedyLabelInPath/foo/<foo>/baz/<baz>',
      service.httpRequestWithGreedyLabelInPath);
  router.add(
      'GET',
      r'/HttpRequestWithLabels/<string>/<short>/<integer>/<long>/<float>/<double>/<boolean>/<timestamp>',
      service.httpRequestWithLabels);
  router.add(
      'GET',
      r'/HttpRequestWithLabelsAndTimestampFormat/<memberEpochSeconds>/<memberHttpDate>/<memberDateTime>/<defaultFormat>/<targetEpochSeconds>/<targetHttpDate>/<targetDateTime>',
      service.httpRequestWithLabelsAndTimestampFormat);
  router.add('PUT', r'/HttpResponseCode', service.httpResponseCode);
  router.add('GET', r'/IgnoreQueryParamsInResponse',
      service.ignoreQueryParamsInResponse);
  router.add(
      'POST', r'/InputAndOutputWithHeaders', service.inputAndOutputWithHeaders);
  router.add('POST', r'/NestedXmlMaps', service.nestedXmlMaps);
  router.add('POST', r'/NoInputAndNoOutput', service.noInputAndNoOutput);
  router.add('POST', r'/NoInputAndOutputOutput', service.noInputAndOutput);
  router.add(
      'GET', r'/NullAndEmptyHeadersClient', service.nullAndEmptyHeadersClient);
  router.add(
      'GET', r'/NullAndEmptyHeadersServer', service.nullAndEmptyHeadersServer);
  router.add('GET', r'/OmitsNullSerializesEmptyString',
      service.omitsNullSerializesEmptyString);
  router.add('POST', r'/QueryIdempotencyTokenAutoFill',
      service.queryIdempotencyTokenAutoFill);
  router.add('POST', r'/StringListMap', service.queryParamsAsStringListMap);
  router.add('POST', r'/Precedence', service.queryPrecedence);
  router.add('PUT', r'/RecursiveShapes', service.recursiveShapes);
  router.add('PUT', r'/SimpleScalarProperties', service.simpleScalarProperties);
  router.add(
      'POST', r'/TimestampFormatHeaders', service.timestampFormatHeaders);
  router.add('PUT', r'/XmlAttributes', service.xmlAttributes);
  router.add('PUT', r'/XmlAttributesOnPayload', service.xmlAttributesOnPayload);
  router.add('POST', r'/XmlBlobs', service.xmlBlobs);
  router.add('POST', r'/XmlEmptyBlobs', service.xmlEmptyBlobs);
  router.add('PUT', r'/XmlEmptyLists', service.xmlEmptyLists);
  router.add('POST', r'/XmlEmptyMaps', service.xmlEmptyMaps);
  router.add('PUT', r'/XmlEmptyStrings', service.xmlEmptyStrings);
  router.add('PUT', r'/XmlEnums', service.xmlEnums);
  router.add('PUT', r'/XmlLists', service.xmlLists);
  router.add('POST', r'/XmlMaps', service.xmlMaps);
  router.add('POST', r'/XmlMapsXmlName', service.xmlMapsXmlName);
  router.add('POST', r'/XmlNamespaces', service.xmlNamespaces);
  router.add('POST', r'/XmlTimestamps', service.xmlTimestamps);
  router.add('PUT', r'/XmlUnions', service.xmlUnions);
  return router;
}

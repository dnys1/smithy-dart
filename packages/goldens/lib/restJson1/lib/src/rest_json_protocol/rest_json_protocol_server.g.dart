// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.rest_json_protocol_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_RestJsonProtocolServerRouter(_RestJsonProtocolServer service) {
  final router = Router();
  router.add('GET', r'/AllQueryStringTypesInput', service.allQueryStringTypes);
  router.add('GET', r'/ConstantAndVariableQueryString?foo=bar',
      service.constantAndVariableQueryString);
  router.add('GET', r'/ConstantQueryString/<hello>?foo=bar&hello',
      service.constantQueryString);
  router.add('PUT', r'/DocumentType', service.documentType);
  router.add('PUT', r'/DocumentTypeAsPayload', service.documentTypeAsPayload);
  router.add(
      'POST', r'/EmptyInputAndEmptyOutput', service.emptyInputAndEmptyOutput);
  router.add('POST', r'/EndpointOperation', service.endpointOperation);
  router.add('POST', r'/EndpointWithHostLabelOperation',
      service.endpointWithHostLabelOperation);
  router.add('PUT', r'/GreetingWithErrors', service.greetingWithErrors);
  router.add('GET', r'/HostWithPathOperation', service.hostWithPathOperation);
  router.add('POST', r'/HttpChecksumRequired', service.httpChecksumRequired);
  router.add('POST', r'/EnumPayload', service.httpEnumPayload);
  router.add('POST', r'/HttpPayloadTraits', service.httpPayloadTraits);
  router.add('POST', r'/HttpPayloadTraitsWithMediaType',
      service.httpPayloadTraitsWithMediaType);
  router.add(
      'PUT', r'/HttpPayloadWithStructure', service.httpPayloadWithStructure);
  router.add('GET', r'/HttpPrefixHeaders', service.httpPrefixHeaders);
  router.add('GET', r'/HttpPrefixHeadersResponse',
      service.httpPrefixHeadersInResponse);
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
  router.add(
      'GET', r'/ReDosLiteral/<str>/(a+)+', service.httpRequestWithRegexLiteral);
  router.add('PUT', r'/HttpResponseCode', service.httpResponseCode);
  router.add('POST', r'/StringPayload', service.httpStringPayload);
  router.add('GET', r'/IgnoreQueryParamsInResponse',
      service.ignoreQueryParamsInResponse);
  router.add(
      'POST', r'/InputAndOutputWithHeaders', service.inputAndOutputWithHeaders);
  router.add('POST', r'/JsonBlobs', service.jsonBlobs);
  router.add('PUT', r'/JsonEnums', service.jsonEnums);
  router.add('PUT', r'/JsonLists', service.jsonLists);
  router.add('POST', r'/JsonMaps', service.jsonMaps);
  router.add('POST', r'/JsonTimestamps', service.jsonTimestamps);
  router.add('PUT', r'/JsonUnions', service.jsonUnions);
  router.add(
      'POST', r'/MalformedAcceptWithBody', service.malformedAcceptWithBody);
  router.add('POST', r'/MalformedAcceptWithGenericString',
      service.malformedAcceptWithGenericString);
  router.add('POST', r'/MalformedAcceptWithPayload',
      service.malformedAcceptWithPayload);
  router.add('POST', r'/MalformedBlob', service.malformedBlob);
  router.add(
      'POST', r'/MalformedBoolean/<booleanInPath>', service.malformedBoolean);
  router.add('POST', r'/MalformedByte/<byteInPath>', service.malformedByte);
  router.add('POST', r'/MalformedContentTypeWithBody',
      service.malformedContentTypeWithBody);
  router.add('POST', r'/MalformedContentTypeWithGenericString',
      service.malformedContentTypeWithGenericString);
  router.add('POST', r'/MalformedContentTypeWithPayload',
      service.malformedContentTypeWithPayload);
  router.add('POST', r'/MalformedContentTypeWithoutBody',
      service.malformedContentTypeWithoutBody);
  router.add(
      'POST', r'/MalformedDouble/<doubleInPath>', service.malformedDouble);
  router.add('POST', r'/MalformedFloat/<floatInPath>', service.malformedFloat);
  router.add(
      'POST', r'/MalformedInteger/<integerInPath>', service.malformedInteger);
  router.add('POST', r'/MalformedList', service.malformedList);
  router.add('POST', r'/MalformedLong/<longInPath>', service.malformedLong);
  router.add('POST', r'/MalformedMap', service.malformedMap);
  router.add('POST', r'/MalformedRequestBody', service.malformedRequestBody);
  router.add('POST', r'/MalformedSet', service.malformedSet);
  router.add('POST', r'/MalformedShort/<shortInPath>', service.malformedShort);
  router.add('POST', r'/MalformedString', service.malformedString);
  router.add('POST', r'/MalformedTimestampBodyDateTime',
      service.malformedTimestampBodyDateTime);
  router.add('POST', r'/MalformedTimestampBodyDefault',
      service.malformedTimestampBodyDefault);
  router.add('POST', r'/MalformedTimestampBodyHttpDate',
      service.malformedTimestampBodyHttpDate);
  router.add('POST', r'/MalformedTimestampHeaderDateTime',
      service.malformedTimestampHeaderDateTime);
  router.add('POST', r'/MalformedTimestampHeaderDefault',
      service.malformedTimestampHeaderDefault);
  router.add('POST', r'/MalformedTimestampHeaderEpoch',
      service.malformedTimestampHeaderEpoch);
  router.add('POST', r'/MalformedTimestampPathDefault/<timestamp>',
      service.malformedTimestampPathDefault);
  router.add('POST', r'/MalformedTimestampPathEpoch/<timestamp>',
      service.malformedTimestampPathEpoch);
  router.add('POST', r'/MalformedTimestampPathHttpDate/<timestamp>',
      service.malformedTimestampPathHttpDate);
  router.add('POST', r'/MalformedTimestampQueryDefault',
      service.malformedTimestampQueryDefault);
  router.add('POST', r'/MalformedTimestampQueryEpoch',
      service.malformedTimestampQueryEpoch);
  router.add('POST', r'/MalformedTimestampQueryHttpDate',
      service.malformedTimestampQueryHttpDate);
  router.add('POST', r'/MalformedUnion', service.malformedUnion);
  router.add('GET', r'/MediaTypeHeader', service.mediaTypeHeader);
  router.add('POST', r'/NoInputAndNoOutput', service.noInputAndNoOutput);
  router.add('POST', r'/NoInputAndOutputOutput', service.noInputAndOutput);
  router.add(
      'GET', r'/NullAndEmptyHeadersClient', service.nullAndEmptyHeadersClient);
  router.add(
      'GET', r'/NullAndEmptyHeadersServer', service.nullAndEmptyHeadersServer);
  router.add('GET', r'/OmitsNullSerializesEmptyString',
      service.omitsNullSerializesEmptyString);
  router.add('POST', r'/PostPlayerAction', service.postPlayerAction);
  router.add('POST', r'/QueryIdempotencyTokenAutoFill',
      service.queryIdempotencyTokenAutoFill);
  router.add('POST', r'/StringListMap', service.queryParamsAsStringListMap);
  router.add('POST', r'/Precedence', service.queryPrecedence);
  router.add('PUT', r'/RecursiveShapes', service.recursiveShapes);
  router.add('PUT', r'/SimpleScalarProperties', service.simpleScalarProperties);
  router.add('POST', r'/StreamingTraits', service.streamingTraits);
  router.add('POST', r'/StreamingTraitsRequireLength',
      service.streamingTraitsRequireLength);
  router.add('POST', r'/StreamingTraitsWithMediaType',
      service.streamingTraitsWithMediaType);
  router.add('POST', r'/body', service.testBodyStructure);
  router.add('GET', r'/no_payload', service.testNoPayload);
  router.add('POST', r'/blob_payload', service.testPayloadBlob);
  router.add('POST', r'/payload', service.testPayloadStructure);
  router.add(
      'POST', r'/TimestampFormatHeaders', service.timestampFormatHeaders);
  router.add('POST', r'/UnitInputAndOutput', service.unitInputAndOutput);
  return router;
}

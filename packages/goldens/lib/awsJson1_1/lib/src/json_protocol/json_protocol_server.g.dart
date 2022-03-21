// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.json_protocol.json_protocol_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_JsonProtocolServerRouter(_JsonProtocolServer service) {
  final router = Router();
  router.add('POST', r'/', service.emptyOperation);
  router.add('POST', r'/', service.endpointOperation);
  router.add('POST', r'/', service.endpointWithHostLabelOperation);
  router.add('POST', r'/', service.greetingWithErrors);
  router.add('POST', r'/', service.hostWithPathOperation);
  router.add('POST', r'/', service.jsonEnums);
  router.add('POST', r'/', service.jsonUnions);
  router.add('POST', r'/', service.kitchenSinkOperation);
  router.add('POST', r'/', service.nullOperation);
  router.add('POST', r'/', service.operationWithOptionalInputOutput);
  router.add('POST', r'/', service.putAndGetInlineDocuments);
  router.add('POST', r'/', service.simpleScalarProperties);
  return router;
}

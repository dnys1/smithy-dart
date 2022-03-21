// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0.json_rpc_10.json_rpc10_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_JsonRpc10ServerRouter(_JsonRpc10Server service) {
  final router = Router();
  router.add('POST', r'/', service.emptyInputAndEmptyOutput);
  router.add('POST', r'/', service.endpointOperation);
  router.add('POST', r'/', service.endpointWithHostLabelOperation);
  router.add('POST', r'/', service.greetingWithErrors);
  router.add('POST', r'/', service.hostWithPathOperation);
  router.add('POST', r'/', service.jsonUnions);
  router.add('POST', r'/', service.noInputAndNoOutput);
  router.add('POST', r'/', service.noInputAndOutput);
  router.add('POST', r'/', service.simpleScalarProperties);
  return router;
}

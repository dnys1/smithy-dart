// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.api_gateway.api_gateway_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_ApiGatewayServerRouter(_ApiGatewayServer service) {
  final router = Router();
  router.add('GET', r'/restapis', service.getRestApis);
  return router;
}

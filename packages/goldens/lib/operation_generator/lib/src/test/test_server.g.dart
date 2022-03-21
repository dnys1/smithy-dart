// GENERATED CODE - DO NOT MODIFY BY HAND

part of operation_generator.test.test_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_TestServerRouter(_TestServer service) {
  final router = Router();
  router.add('POST', r'/input/map', service.mapInput);
  return router;
}

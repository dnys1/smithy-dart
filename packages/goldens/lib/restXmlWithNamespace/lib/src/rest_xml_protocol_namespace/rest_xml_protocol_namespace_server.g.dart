// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_with_namespace.rest_xml_protocol_namespace.rest_xml_protocol_namespace_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_RestXmlProtocolNamespaceServerRouter(
    _RestXmlProtocolNamespaceServer service) {
  final router = Router();
  router.add('PUT', r'/SimpleScalarProperties', service.simpleScalarProperties);
  return router;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_validation_protocol.rest_json_validation_protocol_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_RestJsonValidationProtocolServerRouter(
    _RestJsonValidationProtocolServer service) {
  final router = Router();
  router.add('POST', r'/MalformedEnum', service.malformedEnum);
  router.add('POST', r'/MalformedLength', service.malformedLength);
  router.add(
      'POST', r'/MalformedLengthOverride', service.malformedLengthOverride);
  router.add('POST', r'/MalformedLengthQueryString',
      service.malformedLengthQueryString);
  router.add('POST', r'/MalformedPattern', service.malformedPattern);
  router.add(
      'POST', r'/MalformedPatternOverride', service.malformedPatternOverride);
  router.add('POST', r'/MalformedRange', service.malformedRange);
  router.add(
      'POST', r'/MalformedRangeOverride', service.malformedRangeOverride);
  router.add('POST', r'/MalformedRequired', service.malformedRequired);
  router.add('POST', r'/RecursiveStructures', service.recursiveStructures);
  router.add('POST', r'/SensitiveValidation', service.sensitiveValidation);
  return router;
}

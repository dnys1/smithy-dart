// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.glacier.glacier_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_GlacierServerRouter(_GlacierServer service) {
  final router = Router();
  router.add('POST', r'/<accountId>/vaults/<vaultName>/archives',
      service.uploadArchive);
  router.add(
      'PUT',
      r'/<accountId>/vaults/<vaultName>/multipart-uploads/<uploadId>',
      service.uploadMultipartPart);
  return router;
}

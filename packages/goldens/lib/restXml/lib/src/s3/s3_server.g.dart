// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.s3.s3_client;

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$_S3ServerRouter(_S3Server service) {
  final router = Router();
  router.add('GET', r'/<Bucket>?location', service.getBucketLocation);
  router.add('GET', r'/<Bucket>?list-type=2', service.listObjectsV2);
  return router;
}

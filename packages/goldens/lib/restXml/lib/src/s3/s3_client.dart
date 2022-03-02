// Generated code. DO NOT MODIFY.

library rest_xml.s3.s3_client;

import 'dart:async' as _i3;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:rest_xml/src/s3/model/get_bucket_location_output.dart' as _i4;
import 'package:rest_xml/src/s3/model/get_bucket_location_request.dart' as _i5;
import 'package:rest_xml/src/s3/model/list_objects_v2_request.dart' as _i8;
import 'package:rest_xml/src/s3/operation/get_bucket_location_operation.dart'
    as _i6;
import 'package:rest_xml/src/s3/operation/list_objects_v2_operation.dart'
    as _i9;
import 'package:smithy/smithy.dart' as _i7;
import 'package:smithy_aws/smithy_aws.dart' as _i1;

class S3Client {
  const S3Client(
      {Uri? baseUri,
      required this.region,
      this.s3ClientConfig = const _i1.S3ClientConfig(),
      this.credentialsProvider =
          const _i2.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  final String region;

  final Uri? _baseUri;

  final _i1.S3ClientConfig s3ClientConfig;

  final _i2.AWSCredentialsProvider credentialsProvider;

  _i3.Future<_i4.GetBucketLocationOutput> getBucketLocation(
      _i5.GetBucketLocationRequest input) {
    return _i6.GetBucketLocationOperation(
            region: region,
            baseUri: _baseUri,
            s3ClientConfig: s3ClientConfig,
            credentialsProvider: credentialsProvider)
        .run(input);
  }

  _i3.Future<_i7.PaginatedResult<void, int>> listObjectsV2(
      _i8.ListObjectsV2Request input) {
    return _i9.ListObjectsV2Operation(
            region: region,
            baseUri: _baseUri,
            s3ClientConfig: s3ClientConfig,
            credentialsProvider: credentialsProvider)
        .runPaginated(input);
  }
}

// Generated code. DO NOT MODIFY.

library rest_json1.glacier.glacier_client;

import 'dart:async' as _i2;

import 'package:aws_signature_v4/aws_signature_v4.dart' as _i1;
import 'package:rest_json1/src/glacier/model/archive_creation_output.dart'
    as _i3;
import 'package:rest_json1/src/glacier/model/upload_archive_input.dart' as _i4;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_input.dart'
    as _i7;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_output.dart'
    as _i6;
import 'package:rest_json1/src/glacier/operation/upload_archive_operation.dart'
    as _i5;
import 'package:rest_json1/src/glacier/operation/upload_multipart_part_operation.dart'
    as _i8;

class GlacierClient {
  const GlacierClient(
      {Uri? baseUri,
      required this.region,
      this.credentialsProvider =
          const _i1.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  final String region;

  final Uri? _baseUri;

  final _i1.AWSCredentialsProvider credentialsProvider;

  _i2.Future<_i3.ArchiveCreationOutput> uploadArchive(
      _i4.UploadArchiveInput input) {
    return _i5.UploadArchiveOperation(
            region: region,
            baseUri: _baseUri,
            credentialsProvider: credentialsProvider)
        .run(input);
  }

  _i2.Future<_i6.UploadMultipartPartOutput> uploadMultipartPart(
      _i7.UploadMultipartPartInput input) {
    return _i8.UploadMultipartPartOperation(
            region: region,
            baseUri: _baseUri,
            credentialsProvider: credentialsProvider)
        .run(input);
  }
}

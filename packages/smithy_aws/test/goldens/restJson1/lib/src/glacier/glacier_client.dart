// Generated code. DO NOT MODIFY.

library rest_json1.glacier.glacier_client;

import 'dart:async' as _i1;

import 'package:rest_json1/src/glacier/model/archive_creation_output.dart'
    as _i2;
import 'package:rest_json1/src/glacier/model/upload_archive_input.dart' as _i3;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_input.dart'
    as _i6;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_output.dart'
    as _i5;
import 'package:rest_json1/src/glacier/operation/upload_archive.dart' as _i4;
import 'package:rest_json1/src/glacier/operation/upload_multipart_part.dart'
    as _i7;

class GlacierClient {
  GlacierClient();

  _i1.Future<_i2.ArchiveCreationOutput> uploadArchive(
      _i3.UploadArchiveInput input) {
    return _i4.UploadArchiveOperation().run(input);
  }

  _i1.Future<_i5.UploadMultipartPartOutput> uploadMultipartPart(
      _i6.UploadMultipartPartInput input) {
    return _i7.UploadMultipartPartOperation().run(input);
  }
}

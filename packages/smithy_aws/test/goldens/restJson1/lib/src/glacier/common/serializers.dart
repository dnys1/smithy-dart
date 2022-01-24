// Generated code. DO NOT MODIFY.

library rest_json1.glacier.common.serializers;

import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/glacier/model/archive_creation_output.dart'
    as _i2;
import 'package:rest_json1/src/glacier/model/invalid_parameter_value_exception.dart'
    as _i3;
import 'package:rest_json1/src/glacier/model/missing_parameter_value_exception.dart'
    as _i4;
import 'package:rest_json1/src/glacier/model/request_timeout_exception.dart'
    as _i5;
import 'package:rest_json1/src/glacier/model/resource_not_found_exception.dart'
    as _i6;
import 'package:rest_json1/src/glacier/model/service_unavailable_exception.dart'
    as _i7;
import 'package:rest_json1/src/glacier/model/upload_archive_input.dart' as _i8;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_input.dart'
    as _i9;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_output.dart'
    as _i10;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ArchiveCreationOutput.serializers,
  ..._i3.InvalidParameterValueException.serializers,
  ..._i4.MissingParameterValueException.serializers,
  ..._i5.RequestTimeoutException.serializers,
  ..._i6.ResourceNotFoundException.serializers,
  ..._i7.ServiceUnavailableException.serializers,
  ..._i8.UploadArchiveInput.serializers,
  ..._i9.UploadMultipartPartInput.serializers,
  ..._i10.UploadMultipartPartOutput.serializers
];
final Map<FullType, Function> builderFactories = {};

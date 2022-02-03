// Generated code. DO NOT MODIFY.

library rest_json1.glacier.common.serializers;

import 'package:built_collection/built_collection.dart' as _i21;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/glacier/model/archive_creation_output.dart'
    as _i2;
import 'package:rest_json1/src/glacier/model/aws_config.dart' as _i12;
import 'package:rest_json1/src/glacier/model/client_config.dart' as _i9;
import 'package:rest_json1/src/glacier/model/environment_config.dart' as _i4;
import 'package:rest_json1/src/glacier/model/file_config_settings.dart' as _i7;
import 'package:rest_json1/src/glacier/model/invalid_parameter_value_exception.dart'
    as _i13;
import 'package:rest_json1/src/glacier/model/missing_parameter_value_exception.dart'
    as _i14;
import 'package:rest_json1/src/glacier/model/operation_config.dart' as _i10;
import 'package:rest_json1/src/glacier/model/request_timeout_exception.dart'
    as _i15;
import 'package:rest_json1/src/glacier/model/resource_not_found_exception.dart'
    as _i16;
import 'package:rest_json1/src/glacier/model/retry_config.dart' as _i8;
import 'package:rest_json1/src/glacier/model/retry_mode.dart' as _i3;
import 'package:rest_json1/src/glacier/model/s3_addressing_style.dart' as _i5;
import 'package:rest_json1/src/glacier/model/s3_config.dart' as _i6;
import 'package:rest_json1/src/glacier/model/scoped_config.dart' as _i11;
import 'package:rest_json1/src/glacier/model/service_unavailable_exception.dart'
    as _i17;
import 'package:rest_json1/src/glacier/model/upload_archive_input.dart' as _i18;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_input.dart'
    as _i19;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_output.dart'
    as _i20;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ArchiveCreationOutput.serializers,
  ..._i3.RetryMode.serializers,
  ..._i4.EnvironmentConfig.serializers,
  ..._i5.S3AddressingStyle.serializers,
  ..._i6.S3Config.serializers,
  ..._i7.FileConfigSettings.serializers,
  ..._i8.RetryConfig.serializers,
  ..._i9.ClientConfig.serializers,
  ..._i10.OperationConfig.serializers,
  ..._i11.ScopedConfig.serializers,
  ..._i12.AwsConfig.serializers,
  ..._i13.InvalidParameterValueException.serializers,
  ..._i14.MissingParameterValueException.serializers,
  ..._i15.RequestTimeoutException.serializers,
  ..._i16.ResourceNotFoundException.serializers,
  ..._i17.ServiceUnavailableException.serializers,
  ..._i18.UploadArchiveInput.serializers,
  ..._i19.UploadMultipartPartInput.serializers,
  ..._i20.UploadMultipartPartOutput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i21.BuiltMap, [FullType(String), FullType(_i7.FileConfigSettings)]):
      _i21.MapBuilder<String, _i7.FileConfigSettings>.new
};

// Generated code. DO NOT MODIFY.

library rest_xml.s3.common.serializers;

import 'package:built_collection/built_collection.dart' as _i24;
import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/s3/model/aws_config.dart' as _i11;
import 'package:rest_xml/src/s3/model/bucket_location_constraint.dart' as _i12;
import 'package:rest_xml/src/s3/model/client_config.dart' as _i8;
import 'package:rest_xml/src/s3/model/common_prefix.dart' as _i13;
import 'package:rest_xml/src/s3/model/encoding_type.dart' as _i14;
import 'package:rest_xml/src/s3/model/environment_config.dart' as _i3;
import 'package:rest_xml/src/s3/model/file_config_settings.dart' as _i6;
import 'package:rest_xml/src/s3/model/get_bucket_location_output.dart' as _i15;
import 'package:rest_xml/src/s3/model/get_bucket_location_request.dart' as _i16;
import 'package:rest_xml/src/s3/model/list_objects_v2_output.dart' as _i18;
import 'package:rest_xml/src/s3/model/list_objects_v2_request.dart' as _i17;
import 'package:rest_xml/src/s3/model/no_such_bucket.dart' as _i21;
import 'package:rest_xml/src/s3/model/object.dart' as _i19;
import 'package:rest_xml/src/s3/model/object_storage_class.dart' as _i22;
import 'package:rest_xml/src/s3/model/operation_config.dart' as _i9;
import 'package:rest_xml/src/s3/model/owner.dart' as _i20;
import 'package:rest_xml/src/s3/model/request_payer.dart' as _i23;
import 'package:rest_xml/src/s3/model/retry_config.dart' as _i7;
import 'package:rest_xml/src/s3/model/retry_mode.dart' as _i2;
import 'package:rest_xml/src/s3/model/s3_addressing_style.dart' as _i4;
import 'package:rest_xml/src/s3/model/s3_config.dart' as _i5;
import 'package:rest_xml/src/s3/model/scoped_config.dart' as _i10;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.RetryMode.serializers,
  ..._i3.EnvironmentConfig.serializers,
  ..._i4.S3AddressingStyle.serializers,
  ..._i5.S3Config.serializers,
  ..._i6.FileConfigSettings.serializers,
  ..._i7.RetryConfig.serializers,
  ..._i8.ClientConfig.serializers,
  ..._i9.OperationConfig.serializers,
  ..._i10.ScopedConfig.serializers,
  ..._i11.AwsConfig.serializers,
  ..._i12.BucketLocationConstraint.serializers,
  ..._i13.CommonPrefix.serializers,
  ..._i14.EncodingType.serializers,
  ..._i15.GetBucketLocationOutput.serializers,
  ..._i16.GetBucketLocationRequest.serializers,
  ..._i17.ListObjectsV2Request.serializers,
  ..._i18.ListObjectsV2Output.serializers,
  ..._i19.S3Object.serializers,
  ..._i20.Owner.serializers,
  ..._i21.NoSuchBucket.serializers,
  ..._i22.ObjectStorageClass.serializers,
  ..._i23.RequestPayer.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i24.BuiltMap, [FullType(String), FullType(_i6.FileConfigSettings)]):
      _i24.MapBuilder<String, _i6.FileConfigSettings>.new,
  const FullType(_i24.BuiltList, [FullType(_i13.CommonPrefix)]):
      _i24.ListBuilder<_i13.CommonPrefix>.new,
  const FullType(_i24.BuiltList, [FullType(_i19.S3Object)]):
      _i24.ListBuilder<_i19.S3Object>.new
};

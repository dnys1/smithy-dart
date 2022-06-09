// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library generic_json.generic_json.common.serializers;

import 'package:built_collection/built_collection.dart' as _i12;
import 'package:built_value/serializer.dart';
import 'package:generic_json/src/generic_json/model/aws_config.dart' as _i11;
import 'package:generic_json/src/generic_json/model/client_config.dart' as _i8;
import 'package:generic_json/src/generic_json/model/environment_config.dart'
    as _i3;
import 'package:generic_json/src/generic_json/model/file_config_settings.dart'
    as _i6;
import 'package:generic_json/src/generic_json/model/operation_config.dart'
    as _i9;
import 'package:generic_json/src/generic_json/model/retry_config.dart' as _i7;
import 'package:generic_json/src/generic_json/model/retry_mode.dart' as _i2;
import 'package:generic_json/src/generic_json/model/s3_addressing_style.dart'
    as _i4;
import 'package:generic_json/src/generic_json/model/s3_config.dart' as _i5;
import 'package:generic_json/src/generic_json/model/scoped_config.dart' as _i10;
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
  ..._i11.AwsConfig.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i12.BuiltMap, [FullType(String), FullType(_i6.FileConfigSettings)]):
      _i12.MapBuilder<String, _i6.FileConfigSettings>.new
};

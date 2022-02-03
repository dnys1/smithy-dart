// Generated code. DO NOT MODIFY.

library structure_generator.test.common.serializers;

import 'package:built_collection/built_collection.dart' as _i14;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:structure_generator/src/test/model/aws_config.dart' as _i11;
import 'package:structure_generator/src/test/model/client_config.dart' as _i8;
import 'package:structure_generator/src/test/model/environment_config.dart'
    as _i3;
import 'package:structure_generator/src/test/model/file_config_settings.dart'
    as _i6;
import 'package:structure_generator/src/test/model/foo.dart' as _i12;
import 'package:structure_generator/src/test/model/get_foo_input.dart' as _i13;
import 'package:structure_generator/src/test/model/operation_config.dart'
    as _i9;
import 'package:structure_generator/src/test/model/retry_config.dart' as _i7;
import 'package:structure_generator/src/test/model/retry_mode.dart' as _i2;
import 'package:structure_generator/src/test/model/s3_addressing_style.dart'
    as _i4;
import 'package:structure_generator/src/test/model/s3_config.dart' as _i5;
import 'package:structure_generator/src/test/model/scoped_config.dart' as _i10;

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
  ..._i12.Foo.serializers,
  ..._i13.GetFooInput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i14.BuiltMap, [FullType(String), FullType(_i6.FileConfigSettings)]):
      _i14.MapBuilder<String, _i6.FileConfigSettings>.new
};

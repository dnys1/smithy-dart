// Generated code. DO NOT MODIFY.

library operation_generator.hello_service.common.serializers;

import 'package:built_collection/built_collection.dart' as _i16;
import 'package:built_value/serializer.dart';
import 'package:operation_generator/src/hello_service/model/aws_config.dart'
    as _i11;
import 'package:operation_generator/src/hello_service/model/client_config.dart'
    as _i8;
import 'package:operation_generator/src/hello_service/model/environment_config.dart'
    as _i3;
import 'package:operation_generator/src/hello_service/model/file_config_settings.dart'
    as _i6;
import 'package:operation_generator/src/hello_service/model/invalid_greeting.dart'
    as _i12;
import 'package:operation_generator/src/hello_service/model/operation_config.dart'
    as _i9;
import 'package:operation_generator/src/hello_service/model/retry_config.dart'
    as _i7;
import 'package:operation_generator/src/hello_service/model/retry_mode.dart'
    as _i2;
import 'package:operation_generator/src/hello_service/model/s3_addressing_style.dart'
    as _i4;
import 'package:operation_generator/src/hello_service/model/s3_config.dart'
    as _i5;
import 'package:operation_generator/src/hello_service/model/say_goodbye_input.dart'
    as _i14;
import 'package:operation_generator/src/hello_service/model/say_goodbye_output.dart'
    as _i13;
import 'package:operation_generator/src/hello_service/model/say_hello_input.dart'
    as _i15;
import 'package:operation_generator/src/hello_service/model/scoped_config.dart'
    as _i10;
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
  ..._i12.InvalidGreeting.serializers,
  ..._i13.SayGoodbyeOutput.serializers,
  ..._i14.SayGoodbyeInput.serializers,
  ..._i15.SayHelloInput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i16.BuiltMap, [FullType(String), FullType(_i6.FileConfigSettings)]):
      _i16.MapBuilder<String, _i6.FileConfigSettings>.new
};

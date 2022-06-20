// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library generic_json.generic_json.common.serializers;

import 'package:built_collection/built_collection.dart' as _i15;
import 'package:built_value/serializer.dart';
import 'package:generic_json/src/generic_json/model/aws_config.dart' as _i14;
import 'package:generic_json/src/generic_json/model/client_config.dart' as _i11;
import 'package:generic_json/src/generic_json/model/environment_config.dart'
    as _i6;
import 'package:generic_json/src/generic_json/model/event.dart' as _i3;
import 'package:generic_json/src/generic_json/model/event_message.dart' as _i2;
import 'package:generic_json/src/generic_json/model/event_stream_input_output.dart'
    as _i4;
import 'package:generic_json/src/generic_json/model/file_config_settings.dart'
    as _i9;
import 'package:generic_json/src/generic_json/model/operation_config.dart'
    as _i12;
import 'package:generic_json/src/generic_json/model/retry_config.dart' as _i10;
import 'package:generic_json/src/generic_json/model/retry_mode.dart' as _i5;
import 'package:generic_json/src/generic_json/model/s3_addressing_style.dart'
    as _i7;
import 'package:generic_json/src/generic_json/model/s3_config.dart' as _i8;
import 'package:generic_json/src/generic_json/model/scoped_config.dart' as _i13;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.EventMessage.serializers,
  ..._i3.Event.serializers,
  ..._i4.EventStreamInputOutput.serializers,
  ..._i5.RetryMode.serializers,
  ..._i6.EnvironmentConfig.serializers,
  ..._i7.S3AddressingStyle.serializers,
  ..._i8.S3Config.serializers,
  ..._i9.FileConfigSettings.serializers,
  ..._i10.RetryConfig.serializers,
  ..._i11.ClientConfig.serializers,
  ..._i12.OperationConfig.serializers,
  ..._i13.ScopedConfig.serializers,
  ..._i14.AwsConfig.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i15.BuiltMap, [FullType(String), FullType(_i9.FileConfigSettings)]):
      _i15.MapBuilder<String, _i9.FileConfigSettings>.new
};

// Generated code. DO NOT MODIFY.

library rest_xml_with_namespace.rest_xml_protocol_namespace.common.serializers;

import 'package:built_collection/built_collection.dart' as _i14;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/aws_config.dart'
    as _i11;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/client_config.dart'
    as _i8;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/environment_config.dart'
    as _i3;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/file_config_settings.dart'
    as _i6;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/nested_with_namespace.dart'
    as _i12;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/operation_config.dart'
    as _i9;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/retry_config.dart'
    as _i7;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/retry_mode.dart'
    as _i2;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/s3_addressing_style.dart'
    as _i4;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/s3_config.dart'
    as _i5;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/scoped_config.dart'
    as _i10;
import 'package:rest_xml_with_namespace/src/rest_xml_protocol_namespace/model/simple_scalar_properties_input_output.dart'
    as _i13;
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
  ..._i12.NestedWithNamespace.serializers,
  ..._i13.SimpleScalarPropertiesInputOutput.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i14.BuiltMap, [FullType(String), FullType(_i6.FileConfigSettings)]):
      _i14.MapBuilder<String, _i6.FileConfigSettings>.new
};

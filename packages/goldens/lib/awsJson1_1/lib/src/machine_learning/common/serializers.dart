// Generated code. DO NOT MODIFY.

library aws_json1_1.machine_learning.common.serializers;

import 'package:aws_json1_1/src/machine_learning/model/aws_config.dart' as _i11;
import 'package:aws_json1_1/src/machine_learning/model/client_config.dart'
    as _i8;
import 'package:aws_json1_1/src/machine_learning/model/details_attributes.dart'
    as _i12;
import 'package:aws_json1_1/src/machine_learning/model/environment_config.dart'
    as _i3;
import 'package:aws_json1_1/src/machine_learning/model/file_config_settings.dart'
    as _i6;
import 'package:aws_json1_1/src/machine_learning/model/internal_server_exception.dart'
    as _i13;
import 'package:aws_json1_1/src/machine_learning/model/invalid_input_exception.dart'
    as _i14;
import 'package:aws_json1_1/src/machine_learning/model/limit_exceeded_exception.dart'
    as _i15;
import 'package:aws_json1_1/src/machine_learning/model/operation_config.dart'
    as _i9;
import 'package:aws_json1_1/src/machine_learning/model/predict_input.dart'
    as _i16;
import 'package:aws_json1_1/src/machine_learning/model/predict_output.dart'
    as _i17;
import 'package:aws_json1_1/src/machine_learning/model/prediction.dart' as _i18;
import 'package:aws_json1_1/src/machine_learning/model/predictor_not_mounted_exception.dart'
    as _i19;
import 'package:aws_json1_1/src/machine_learning/model/resource_not_found_exception.dart'
    as _i20;
import 'package:aws_json1_1/src/machine_learning/model/retry_config.dart'
    as _i7;
import 'package:aws_json1_1/src/machine_learning/model/retry_mode.dart' as _i2;
import 'package:aws_json1_1/src/machine_learning/model/s3_addressing_style.dart'
    as _i4;
import 'package:aws_json1_1/src/machine_learning/model/s3_config.dart' as _i5;
import 'package:aws_json1_1/src/machine_learning/model/scoped_config.dart'
    as _i10;
import 'package:built_collection/built_collection.dart' as _i21;
import 'package:built_value/serializer.dart';
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
  ..._i12.DetailsAttributes.serializers,
  ..._i13.InternalServerException.serializers,
  ..._i14.InvalidInputException.serializers,
  ..._i15.LimitExceededException.serializers,
  ..._i16.PredictInput.serializers,
  ..._i17.PredictOutput.serializers,
  ..._i18.Prediction.serializers,
  ..._i19.PredictorNotMountedException.serializers,
  ..._i20.ResourceNotFoundException.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i21.BuiltMap, [FullType(String), FullType(_i6.FileConfigSettings)]):
      _i21.MapBuilder<String, _i6.FileConfigSettings>.new,
  const FullType(_i21.BuiltMap, [FullType(String), FullType(String)]):
      _i21.MapBuilder<String, String>.new,
  const FullType(
          _i21.BuiltMap, [FullType(_i12.DetailsAttributes), FullType(String)]):
      _i21.MapBuilder<_i12.DetailsAttributes, String>.new,
  const FullType(_i21.BuiltMap, [FullType(String), FullType(double)]):
      _i21.MapBuilder<String, double>.new
};

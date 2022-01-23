// Generated code. DO NOT MODIFY.

library aws_json1_1.amazon_ml_20141212.serializers;

import 'package:aws_json1_1/src/amazon_ml_20141212/model/details_attributes.dart'
    as _i2;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/internal_server_exception.dart'
    as _i3;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/invalid_input_exception.dart'
    as _i4;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/limit_exceeded_exception.dart'
    as _i5;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/predict_input.dart'
    as _i6;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/predict_output.dart'
    as _i7;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/prediction.dart'
    as _i8;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/predictor_not_mounted_exception.dart'
    as _i9;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/resource_not_found_exception.dart'
    as _i10;
import 'package:built_collection/built_collection.dart' as _i11;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.DetailsAttributes.serializers,
  ..._i3.InternalServerException.serializers,
  ..._i4.InvalidInputException.serializers,
  ..._i5.LimitExceededException.serializers,
  ..._i6.PredictInput.serializers,
  ..._i7.PredictOutput.serializers,
  ..._i8.Prediction.serializers,
  ..._i9.PredictorNotMountedException.serializers,
  ..._i10.ResourceNotFoundException.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i11.BuiltMap, [FullType(String), FullType(String)]):
      _i11.MapBuilder<String, String>.new,
  const FullType(
          _i11.BuiltMap, [FullType(_i2.DetailsAttributes), FullType(String)]):
      _i11.MapBuilder<_i2.DetailsAttributes, String>.new,
  const FullType(_i11.BuiltMap, [FullType(String), FullType(double)]):
      _i11.MapBuilder<String, double>.new
};

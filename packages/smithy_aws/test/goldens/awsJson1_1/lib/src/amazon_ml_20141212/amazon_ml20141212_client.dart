// Generated code. DO NOT MODIFY.

library aws_json1_1.amazon_ml_20141212.amazon_ml20141212_client;

import 'dart:async' as _i1;

import 'package:aws_json1_1/src/amazon_ml_20141212/model/predict_input.dart'
    as _i3;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/predict_output.dart'
    as _i2;
import 'package:aws_json1_1/src/amazon_ml_20141212/operation/predict.dart'
    as _i4;

class AmazonMl20141212Client {
  AmazonMl20141212Client();

  _i1.Future<_i2.PredictOutput> predict(_i3.PredictInput input) {
    return _i4.PredictOperation().run(input);
  }
}

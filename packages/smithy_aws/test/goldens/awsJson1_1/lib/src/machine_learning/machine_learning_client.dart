// Generated code. DO NOT MODIFY.

library aws_json1_1.machine_learning.machine_learning_client;

import 'dart:async' as _i2;

import 'package:aws_json1_1/src/machine_learning/model/predict_input.dart'
    as _i4;
import 'package:aws_json1_1/src/machine_learning/model/predict_output.dart'
    as _i3;
import 'package:aws_json1_1/src/machine_learning/operation/predict.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i1;

class MachineLearningClient {
  const MachineLearningClient(
      {Uri? baseUri,
      required this.region,
      this.credentialsProvider =
          const _i1.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  final String region;

  final Uri? _baseUri;

  final _i1.AWSCredentialsProvider credentialsProvider;

  _i2.Future<_i3.PredictOutput> predict(_i4.PredictInput input) {
    return _i5.PredictOperation(
            region: region,
            baseUri: _baseUri,
            credentialsProvider: credentialsProvider)
        .run(input);
  }
}

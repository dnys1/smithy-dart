// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library aws_json1_1.machine_learning.machine_learning_client;

import 'dart:async' as _i2;

import 'package:aws_json1_1/src/machine_learning/model/predict_input.dart'
    as _i4;
import 'package:aws_json1_1/src/machine_learning/model/predict_output.dart'
    as _i3;
import 'package:aws_json1_1/src/machine_learning/operation/predict_operation.dart'
    as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i1;
import 'package:smithy/smithy.dart' as _i5;

class MachineLearningClient {
  const MachineLearningClient(
      {required String region,
      Uri? baseUri,
      required _i1.AWSCredentialsProvider credentialsProvider})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final String _region;

  final Uri? _baseUri;

  final _i1.AWSCredentialsProvider _credentialsProvider;

  _i2.Future<_i3.PredictOutput> predict(_i4.PredictInput input,
      {_i5.HttpClient? client}) {
    return _i6.PredictOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }
}

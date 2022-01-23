// Generated code. DO NOT MODIFY.

library aws_json1_1.amazon_ml_20141212.operation.predict;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/internal_server_exception.dart'
    as _i7;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/invalid_input_exception.dart'
    as _i8;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/limit_exceeded_exception.dart'
    as _i9;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/predict_input.dart'
    as _i2;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/predict_output.dart'
    as _i3;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/predictor_not_mounted_exception.dart'
    as _i10;
import 'package:aws_json1_1/src/amazon_ml_20141212/model/resource_not_found_exception.dart'
    as _i11;
import 'package:aws_json1_1/src/amazon_ml_20141212/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class PredictOperation extends _i1.HttpOperation<_i2.PredictInput,
    _i2.PredictInput, _i3.PredictOutput, _i3.PredictOutput> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.PredictInput, _i2.PredictInput, _i3.PredictOutput,
          _i3.PredictOutput>> protocols = [
    _i4.AwsJson1_1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'AmazonML_20141212.Predict')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.PredictInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
      });
  @override
  int successCode([_i3.PredictOutput? output]) => 200;
  @override
  _i3.PredictOutput buildOutput(
          _i3.PredictOutput payload, _i6.AWSStreamedHttpResponse response) =>
      _i3.PredictOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'InternalServerException'),
            _i1.ErrorKind.server,
            _i7.InternalServerException,
            statusCode: 500,
            builder: _i7.InternalServerException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'InvalidInputException'),
            _i1.ErrorKind.client,
            _i8.InvalidInputException,
            statusCode: 400,
            builder: _i8.InvalidInputException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'LimitExceededException'),
            _i1.ErrorKind.client,
            _i9.LimitExceededException,
            statusCode: 417,
            builder: _i9.LimitExceededException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'PredictorNotMountedException'),
            _i1.ErrorKind.client,
            _i10.PredictorNotMountedException,
            statusCode: 400,
            builder: _i10.PredictorNotMountedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i11.ResourceNotFoundException,
            statusCode: 404,
            builder: _i11.ResourceNotFoundException.fromResponse)
      ];
}

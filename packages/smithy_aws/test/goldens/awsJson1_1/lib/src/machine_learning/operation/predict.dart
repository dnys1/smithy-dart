// Generated code. DO NOT MODIFY.

library aws_json1_1.machine_learning.operation.predict;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_json1_1/src/machine_learning/common/endpoint_resolver.dart'
    as _i13;
import 'package:aws_json1_1/src/machine_learning/common/serializers.dart'
    as _i6;
import 'package:aws_json1_1/src/machine_learning/model/internal_server_exception.dart'
    as _i8;
import 'package:aws_json1_1/src/machine_learning/model/invalid_input_exception.dart'
    as _i9;
import 'package:aws_json1_1/src/machine_learning/model/limit_exceeded_exception.dart'
    as _i10;
import 'package:aws_json1_1/src/machine_learning/model/predict_input.dart'
    as _i2;
import 'package:aws_json1_1/src/machine_learning/model/predict_output.dart'
    as _i3;
import 'package:aws_json1_1/src/machine_learning/model/predictor_not_mounted_exception.dart'
    as _i11;
import 'package:aws_json1_1/src/machine_learning/model/resource_not_found_exception.dart'
    as _i12;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

class PredictOperation extends _i1.HttpOperation<_i2.PredictInput,
    _i2.PredictInput, _i3.PredictOutput, _i3.PredictOutput> {
  PredictOperation(
      {Uri? baseUri,
      required this.region,
      this.credentialsProvider =
          const _i4.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PredictInput, _i2.PredictInput, _i3.PredictOutput,
          _i3.PredictOutput>> protocols = [
    _i5.AwsJson1_1Protocol(
        serializers: _i6.serializers,
        builderFactories: _i6.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithHeader('X-Amz-Target', 'AmazonML_20141212.Predict'),
          _i5.WithSigV4(
              region: region,
              serviceName: 'machinelearning',
              credentialsProvider: credentialsProvider)
        ])
  ];

  final String region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.PredictInput input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.PredictOutput? output]) => 200;
  @override
  _i3.PredictOutput buildOutput(
          _i3.PredictOutput payload, _i7.AWSStreamedHttpResponse response) =>
      _i3.PredictOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'InternalServerException'),
            _i1.ErrorKind.server,
            _i8.InternalServerException,
            statusCode: 500,
            builder: _i8.InternalServerException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'InvalidInputException'),
            _i1.ErrorKind.client,
            _i9.InvalidInputException,
            statusCode: 400,
            builder: _i9.InvalidInputException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'LimitExceededException'),
            _i1.ErrorKind.client,
            _i10.LimitExceededException,
            statusCode: 417,
            builder: _i10.LimitExceededException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'PredictorNotMountedException'),
            _i1.ErrorKind.client,
            _i11.PredictorNotMountedException,
            statusCode: 400,
            builder: _i11.PredictorNotMountedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.machinelearning',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i12.ResourceNotFoundException,
            statusCode: 404,
            builder: _i12.ResourceNotFoundException.fromResponse)
      ];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _i13.endpointResolver
      .resolveWithContext(_i13.sdkId, region, context)
      .endpoint;
}

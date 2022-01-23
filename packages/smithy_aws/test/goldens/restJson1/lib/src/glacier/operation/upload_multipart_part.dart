// Generated code. DO NOT MODIFY.

library rest_json1.glacier.operation.upload_multipart_part;

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:rest_json1/src/glacier/model/invalid_parameter_value_exception.dart'
    as _i8;
import 'package:rest_json1/src/glacier/model/missing_parameter_value_exception.dart'
    as _i9;
import 'package:rest_json1/src/glacier/model/request_timeout_exception.dart'
    as _i10;
import 'package:rest_json1/src/glacier/model/resource_not_found_exception.dart'
    as _i11;
import 'package:rest_json1/src/glacier/model/service_unavailable_exception.dart'
    as _i12;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_input.dart'
    as _i3;
import 'package:rest_json1/src/glacier/model/upload_multipart_part_output.dart'
    as _i4;
import 'package:rest_json1/src/glacier/serializers.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

class UploadMultipartPartOperation extends _i1.HttpOperation<
    _i2.Stream<List<int>>,
    _i3.UploadMultipartPartInput,
    _i4.UploadMultipartPartOutputPayload,
    _i4.UploadMultipartPartOutput> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.Stream<List<int>>,
          _i3.UploadMultipartPartInput,
          _i4.UploadMultipartPartOutputPayload,
          _i4.UploadMultipartPartOutput>> protocols = [
    _i5.RestJson1Protocol(
        serializers: _i6.serializers,
        builderFactories: _i6.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i3.UploadMultipartPartInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = '/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}';
        if (input.checksum != null) {
          if (input.checksum!.isNotEmpty) {
            b.headers['x-amz-sha256-tree-hash'] = input.checksum!;
          }
        }
        if (input.range != null) {
          if (input.range!.isNotEmpty) {
            b.headers['Content-Range'] = input.range!;
          }
        }
      });
  @override
  int successCode([_i4.UploadMultipartPartOutput? output]) => 200;
  @override
  _i4.UploadMultipartPartOutput buildOutput(
          _i4.UploadMultipartPartOutputPayload payload,
          _i7.AWSStreamedHttpResponse response) =>
      _i4.UploadMultipartPartOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'InvalidParameterValueException'),
            _i1.ErrorKind.client,
            _i8.InvalidParameterValueException,
            statusCode: 400,
            builder: _i8.InvalidParameterValueException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'MissingParameterValueException'),
            _i1.ErrorKind.client,
            _i9.MissingParameterValueException,
            statusCode: 400,
            builder: _i9.MissingParameterValueException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'RequestTimeoutException'),
            _i1.ErrorKind.client,
            _i10.RequestTimeoutException,
            statusCode: 408,
            builder: _i10.RequestTimeoutException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i11.ResourceNotFoundException,
            statusCode: 404,
            builder: _i11.ResourceNotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'ServiceUnavailableException'),
            _i1.ErrorKind.server,
            _i12.ServiceUnavailableException,
            statusCode: 500,
            builder: _i12.ServiceUnavailableException.fromResponse)
      ];
}
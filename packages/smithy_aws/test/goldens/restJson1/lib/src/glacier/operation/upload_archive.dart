// Generated code. DO NOT MODIFY.

library rest_json1.glacier.operation.upload_archive;

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:rest_json1/src/glacier/model/archive_creation_output.dart'
    as _i4;
import 'package:rest_json1/src/glacier/model/invalid_parameter_value_exception.dart'
    as _i9;
import 'package:rest_json1/src/glacier/model/missing_parameter_value_exception.dart'
    as _i10;
import 'package:rest_json1/src/glacier/model/request_timeout_exception.dart'
    as _i11;
import 'package:rest_json1/src/glacier/model/resource_not_found_exception.dart'
    as _i12;
import 'package:rest_json1/src/glacier/model/service_unavailable_exception.dart'
    as _i13;
import 'package:rest_json1/src/glacier/model/upload_archive_input.dart' as _i3;
import 'package:rest_json1/src/glacier/serializers.dart' as _i7;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;

class UploadArchiveOperation extends _i1.HttpOperation<
    _i2.Stream<List<int>>,
    _i3.UploadArchiveInput,
    _i4.ArchiveCreationOutputPayload,
    _i4.ArchiveCreationOutput> {
  UploadArchiveOperation(
      {required this.region,
      this.credentialsProvider =
          const _i5.AWSCredentialsProvider.dartEnvironment()});

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.Stream<List<int>>,
          _i3.UploadArchiveInput,
          _i4.ArchiveCreationOutputPayload,
          _i4.ArchiveCreationOutput>> protocols = [
    _i6.RestJson1Protocol(
        serializers: _i7.serializers,
        builderFactories: _i7.builderFactories,
        interceptors: [
          _i6.WithSigV4(
              region: region,
              serviceName: 'glacier',
              credentialsProvider: credentialsProvider),
          _i6.WithEndpointResolver('Glacier', region)
        ])
  ];

  final String region;

  final _i5.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i3.UploadArchiveInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/{accountId}/vaults/{vaultName}/archives';
        if (input.archiveDescription != null) {
          if (input.archiveDescription!.isNotEmpty) {
            b.headers['x-amz-archive-description'] = input.archiveDescription!;
          }
        }
        if (input.checksum != null) {
          if (input.checksum!.isNotEmpty) {
            b.headers['x-amz-sha256-tree-hash'] = input.checksum!;
          }
        }
      });
  @override
  int successCode([_i4.ArchiveCreationOutput? output]) => 200;
  @override
  _i4.ArchiveCreationOutput buildOutput(
          _i4.ArchiveCreationOutputPayload payload,
          _i8.AWSStreamedHttpResponse response) =>
      _i4.ArchiveCreationOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'InvalidParameterValueException'),
            _i1.ErrorKind.client,
            _i9.InvalidParameterValueException,
            statusCode: 400,
            builder: _i9.InvalidParameterValueException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'MissingParameterValueException'),
            _i1.ErrorKind.client,
            _i10.MissingParameterValueException,
            statusCode: 400,
            builder: _i10.MissingParameterValueException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'RequestTimeoutException'),
            _i1.ErrorKind.client,
            _i11.RequestTimeoutException,
            statusCode: 408,
            builder: _i11.RequestTimeoutException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'ResourceNotFoundException'),
            _i1.ErrorKind.client,
            _i12.ResourceNotFoundException,
            statusCode: 404,
            builder: _i12.ResourceNotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.glacier',
                shape: 'ServiceUnavailableException'),
            _i1.ErrorKind.server,
            _i13.ServiceUnavailableException,
            statusCode: 500,
            builder: _i13.ServiceUnavailableException.fromResponse)
      ];
}

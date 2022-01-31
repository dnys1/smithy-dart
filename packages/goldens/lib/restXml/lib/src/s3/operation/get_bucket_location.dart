// Generated code. DO NOT MODIFY.

library rest_xml.s3.operation.get_bucket_location;

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:rest_xml/src/s3/common/endpoint_resolver.dart' as _i8;
import 'package:rest_xml/src/s3/common/serializers.dart' as _i7;
import 'package:rest_xml/src/s3/model/bucket_location_constraint.dart' as _i3;
import 'package:rest_xml/src/s3/model/get_bucket_location_output.dart' as _i4;
import 'package:rest_xml/src/s3/model/get_bucket_location_request.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

class GetBucketLocationOperation extends _i1.HttpOperation<
    _i2.GetBucketLocationRequestPayload,
    _i2.GetBucketLocationRequest,
    _i3.BucketLocationConstraint,
    _i4.GetBucketLocationOutput> {
  GetBucketLocationOperation(
      {Uri? baseUri,
      required this.region,
      this.s3ClientConfig = const _i5.S3ClientConfig(),
      this.credentialsProvider =
          const _i6.AWSCredentialsProvider.dartEnvironment()})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.GetBucketLocationRequestPayload,
          _i2.GetBucketLocationRequest,
          _i3.BucketLocationConstraint,
          _i4.GetBucketLocationOutput>> protocols = [
    _i5.RestXmlProtocol(
        serializers: _i7.serializers,
        builderFactories: _i7.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          _i5.WithSigV4(
              region: region,
              serviceName: 's3',
              credentialsProvider: credentialsProvider)
        ],
        noErrorWrapping: true)
  ];

  late final _i5.AWSEndpoint _awsEndpoint =
      _i8.endpointResolver.resolve(_i8.sdkId, region);

  final String region;

  final Uri? _baseUri;

  final _i5.S3ClientConfig s3ClientConfig;

  final _i6.AWSCredentialsProvider credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.GetBucketLocationRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path =
            s3ClientConfig.usePathStyle ? r'/{Bucket}?location' : r'/?location';
        b.hostPrefix = s3ClientConfig.usePathStyle ? null : '{Bucket}.';
      });
  @override
  int successCode([_i4.GetBucketLocationOutput? output]) => 200;
  @override
  _i4.GetBucketLocationOutput buildOutput(_i3.BucketLocationConstraint? payload,
          _i9.AWSStreamedHttpResponse response) =>
      _i4.GetBucketLocationOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri {
    var baseUri = _baseUri ?? endpoint.uri;
    if (s3ClientConfig.useDualStack) {
      baseUri = baseUri.replace(
        host: baseUri.host.replaceFirst(RegExp(r'^s3\.'), 's3.dualstack.'),
      );
    }
    if (s3ClientConfig.useAcceleration) {
      baseUri = baseUri.replace(
        host: baseUri.host
            .replaceFirst(RegExp('$region\\.'), '')
            .replaceFirst(RegExp(r'^s3\.'), 's3-accelerate.'),
      );
    }
    return baseUri;
  }

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i10.Future<_i4.GetBucketLocationOutput> run(
      _i2.GetBucketLocationRequest input,
      {Uri? baseUri,
      _i1.HttpClient? client,
      _i1.ShapeId? useProtocol}) {
    return _i10.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}

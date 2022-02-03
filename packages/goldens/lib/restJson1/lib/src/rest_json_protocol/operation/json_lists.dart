// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.json_lists;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/json_lists_input_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This test case serializes JSON lists for the following cases for both
/// input and output:
///
/// 1. Normal JSON lists.
/// 2. Normal JSON sets.
/// 3. JSON lists of lists.
/// 4. Lists of structures.
class JsonListsOperation extends _i1.HttpOperation<
    _i2.JsonListsInputOutput,
    _i2.JsonListsInputOutput,
    _i2.JsonListsInputOutput,
    _i2.JsonListsInputOutput> {
  /// This test case serializes JSON lists for the following cases for both
  /// input and output:
  ///
  /// 1. Normal JSON lists.
  /// 2. Normal JSON sets.
  /// 3. JSON lists of lists.
  /// 4. Lists of structures.
  JsonListsOperation({Uri? baseUri, required this.region}) : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonListsInputOutput, _i2.JsonListsInputOutput,
          _i2.JsonListsInputOutput, _i2.JsonListsInputOutput>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i5.endpointResolver.resolve(_i5.sdkId, region);

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.JsonListsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/JsonLists';
      });
  @override
  int successCode([_i2.JsonListsInputOutput? output]) => 200;
  @override
  _i2.JsonListsInputOutput buildOutput(_i2.JsonListsInputOutput payload,
          _i6.AWSStreamedHttpResponse response) =>
      _i2.JsonListsInputOutput.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i2.JsonListsInputOutput> run(_i2.JsonListsInputOutput input,
      {Uri? baseUri, _i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}

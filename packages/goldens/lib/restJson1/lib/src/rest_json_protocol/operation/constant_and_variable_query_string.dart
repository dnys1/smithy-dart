// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.constant_and_variable_query_string;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/constant_and_variable_query_string_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example uses fixed query string params and variable query string params.
/// The fixed query string parameters and variable parameters must both be
/// serialized (implementations may need to merge them together).
class ConstantAndVariableQueryStringOperation extends _i1.HttpOperation<
    _i2.ConstantAndVariableQueryStringInputPayload,
    _i2.ConstantAndVariableQueryStringInput,
    _i1.Unit,
    _i1.Unit> {
  /// This example uses fixed query string params and variable query string params.
  /// The fixed query string parameters and variable parameters must both be
  /// serialized (implementations may need to merge them together).
  ConstantAndVariableQueryStringOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.ConstantAndVariableQueryStringInputPayload,
          _i2.ConstantAndVariableQueryStringInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i5.endpointResolver.resolve(_i5.sdkId, region);

  final String region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.ConstantAndVariableQueryStringInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/ConstantAndVariableQueryString?foo=bar';
        if (input.baz != null) {
          b.queryParameters.add('baz', input.baz!);
        }
        if (input.maybeSet != null) {
          b.queryParameters.add('maybeSet', input.maybeSet!);
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i6.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i1.Unit> run(_i2.ConstantAndVariableQueryStringInput input,
      {Uri? baseUri, _i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input,
            baseUri: baseUri, client: client, useProtocol: useProtocol),
        zoneValues: _awsEndpoint.credentialScope?.zoneValues);
  }
}

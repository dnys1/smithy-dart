// Generated with smithy-dart 0.4.0. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.operation.constant_and_variable_query_string_operation;

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_xml/src/rest_xml_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/common/serializers.dart' as _i4;
import 'package:rest_xml/src/rest_xml_protocol/model/constant_and_variable_query_string_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:uuid/uuid.dart' as _i8;

/// This example uses fixed query string params and variable query string params. The fixed query string parameters and variable parameters must both be serialized (implementations may need to merge them together).
class ConstantAndVariableQueryStringOperation extends _i1.HttpOperation<
    _i2.ConstantAndVariableQueryStringInputPayload,
    _i2.ConstantAndVariableQueryStringInput,
    _i1.Unit,
    _i1.Unit> {
  /// This example uses fixed query string params and variable query string params. The fixed query string parameters and variable parameters must both be serialized (implementations may need to merge them together).
  ConstantAndVariableQueryStringOperation(
      {required String region, Uri? baseUri})
      : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.ConstantAndVariableQueryStringInputPayload,
          _i2.ConstantAndVariableQueryStringInput,
          _i1.Unit,
          _i1.Unit>> protocols = [
    _i3.RestXmlProtocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        requestInterceptors: [
          const _i3.WithSdkInvocationId(),
          const _i3.WithSdkRequest()
        ],
        responseInterceptors: [],
        noErrorWrapping: false)
  ];

  late final _i3.AWSEndpoint _awsEndpoint =
      _i5.endpointResolver.resolve(_i5.sdkId, _region);

  final String _region;

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
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i1.Unit> run(_i2.ConstantAndVariableQueryStringInput input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i7.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i6.AWSHeaders.sdkInvocationId: const _i8.Uuid().v4()}
        });
  }
}

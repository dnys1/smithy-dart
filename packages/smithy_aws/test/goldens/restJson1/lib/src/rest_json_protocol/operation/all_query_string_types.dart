// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.operation.all_query_string_types;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:rest_json1/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/all_query_string_types_input.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example uses all query string types.
class AllQueryStringTypesOperation extends _i1.HttpOperation<
    _i2.AllQueryStringTypesInputPayload,
    _i2.AllQueryStringTypesInput,
    _i1.Unit,
    _i1.Unit> {
  AllQueryStringTypesOperation({Uri? baseUri, required this.region})
      : _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.AllQueryStringTypesInputPayload,
          _i2.AllQueryStringTypesInput, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithContentLength(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type')
        ])
  ];

  final String region;

  final Uri? _baseUri;

  static final _partitions = [
    _i3.Partition(
        id: 'aws',
        regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjson.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {}),
    _i3.Partition(
        id: 'aws-cn',
        regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjson.{region}.amazonaws.com.cn',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {}),
    _i3.Partition(
        id: 'aws-iso',
        regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjson.{region}.c2s.ic.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {}),
    _i3.Partition(
        id: 'aws-iso-b',
        regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjson.{region}.sc2s.sgov.gov',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {}),
    _i3.Partition(
        id: 'aws-us-gov',
        regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
        partitionEndpoint: null,
        isRegionalized: true,
        defaults: const _i3.EndpointDefinition(
            hostname: 'restjson.{region}.amazonaws.com',
            protocols: ['https'],
            signatureVersions: ['v4'],
            credentialScope: _i3.CredentialScope()),
        endpoints: const {})
  ];

  late final _i3.AWSEndpointResolver _endpointResolver =
      _i3.AWSEndpointResolver(_partitions);

  static const String _sdkId = 'Rest Json Protocol';

  @override
  _i1.HttpRequest buildRequest(_i2.AllQueryStringTypesInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = '/AllQueryStringTypesInput';
        if (input.queryString != null) {
          b.queryParameters.add('String', input.queryString!);
        }
        if (input.queryStringList != null) {
          for (var value in input.queryStringList!) {
            b.queryParameters.add('StringList', value);
          }
        }
        if (input.queryStringSet != null) {
          for (var value in input.queryStringSet!) {
            b.queryParameters.add('StringSet', value);
          }
        }
        if (input.queryByte != null) {
          b.queryParameters.add('Byte', input.queryByte!.toString());
        }
        if (input.queryShort != null) {
          b.queryParameters.add('Short', input.queryShort!.toString());
        }
        if (input.queryInteger != null) {
          b.queryParameters.add('Integer', input.queryInteger!.toString());
        }
        if (input.queryIntegerList != null) {
          for (var value in input.queryIntegerList!) {
            b.queryParameters.add('IntegerList', value.toString());
          }
        }
        if (input.queryIntegerSet != null) {
          for (var value in input.queryIntegerSet!) {
            b.queryParameters.add('IntegerSet', value.toString());
          }
        }
        if (input.queryLong != null) {
          b.queryParameters.add('Long', input.queryLong!.toString());
        }
        if (input.queryFloat != null) {
          b.queryParameters.add('Float', input.queryFloat!.toString());
        }
        if (input.queryDouble != null) {
          b.queryParameters.add('Double', input.queryDouble!.toString());
        }
        if (input.queryDoubleList != null) {
          for (var value in input.queryDoubleList!) {
            b.queryParameters.add('DoubleList', value.toString());
          }
        }
        if (input.queryBoolean != null) {
          b.queryParameters.add('Boolean', input.queryBoolean!.toString());
        }
        if (input.queryBooleanList != null) {
          for (var value in input.queryBooleanList!) {
            b.queryParameters.add('BooleanList', value.toString());
          }
        }
        if (input.queryTimestamp != null) {
          b.queryParameters.add(
              'Timestamp',
              _i1.Timestamp(input.queryTimestamp!)
                  .format(_i1.TimestampFormat.dateTime)
                  .toString());
        }
        if (input.queryTimestampList != null) {
          for (var value in input.queryTimestampList!) {
            b.queryParameters.add(
                'TimestampList',
                _i1.Timestamp(value)
                    .format(_i1.TimestampFormat.dateTime)
                    .toString());
          }
        }
        if (input.queryEnum != null) {
          b.queryParameters.add('Enum', input.queryEnum!.value);
        }
        if (input.queryEnumList != null) {
          for (var value in input.queryEnumList!) {
            b.queryParameters.add('EnumList', value.value);
          }
        }
        if (input.queryParamsMapOfStringList != null) {
          for (var entry in input.queryParamsMapOfStringList!.toMap().entries) {
            for (var value in entry.value) {
              b.queryParameters.add(entry.key, value);
            }
          }
        }
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i5.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint =>
      _endpointResolver.resolveWithContext(_sdkId, region, context).endpoint;
}
// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.endpoint_with_host_label_operation_test;

import 'package:aws_json1_0/src/json_rpc10/model/endpoint_with_host_label_operation_input.dart'
    as _i4;
import 'package:aws_json1_0/src/json_rpc10/operation/endpoint_with_host_label_operation.dart'
    as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.EndpointWithHostLabelOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson10EndpointTraitWithHostLabel',
          documentation:
              'Operations can prepend to the given host if they define the\nendpoint trait, and can use the host label trait to define\nfurther customization based on user input.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
          authScheme: null,
          body: '{"label": "bar"}',
          bodyMediaType: 'application/json',
          params: {'label': 'bar'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: 'example.com',
          resolvedHost: 'foo.bar.example.com',
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: []),
      inputSerializer:
          const _EndpointWithHostLabelOperationInputAwsJson10Serializer());
}

class _EndpointWithHostLabelOperationInputAwsJson10Serializer extends _i3
    .StructuredSmithySerializer<_i4.EndpointWithHostLabelOperationInput> {
  const _EndpointWithHostLabelOperationInputAwsJson10Serializer()
      : super('EndpointWithHostLabelOperationInput');

  @override
  Iterable<Type> get types => const [
        _i4.EndpointWithHostLabelOperationInput,
        _i4.EndpointWithHostLabelOperationInputPayload
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i4.EndpointWithHostLabelOperationInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.EndpointWithHostLabelOperationInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'label':
          result.label = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

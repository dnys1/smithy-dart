// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.endpoint_with_host_label_operation_test;

import 'package:aws_json1_1/src/json_protocol/model/host_label_input.dart'
    as _i4;
import 'package:aws_json1_1/src/json_protocol/operation/endpoint_with_host_label_operation.dart'
    as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.EndpointWithHostLabelOperation(),
      testCase: const _i1.HttpRequestTestCase(
          id: 'AwsJson11EndpointTraitWithHostLabel',
          documentation:
              'Operations can prepend to the given host if they define the\nendpoint trait, and can use the host label trait to define\nfurther customization based on user input.',
          protocol:
              _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
      inputSerializer: const _HostLabelInputAwsJson11Serializer());
}

class _HostLabelInputAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<_i4.HostLabelInput> {
  const _HostLabelInputAwsJson11Serializer() : super('HostLabelInput');

  @override
  Iterable<Type> get types =>
      const [_i4.HostLabelInput, _i4.HostLabelInputPayload];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  _i4.HostLabelInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i4.HostLabelInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
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

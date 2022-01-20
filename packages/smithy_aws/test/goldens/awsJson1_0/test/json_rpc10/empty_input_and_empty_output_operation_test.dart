// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc10.operation.empty_input_and_empty_output_test;

import 'package:aws_json1_0/src/json_rpc10/model/empty_input_and_empty_output_input.dart'
    as _i4;
import 'package:aws_json1_0/src/json_rpc10/operation/empty_input_and_empty_output.dart'
    as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i1;

void main() {
  _i1.httpRequestTest(
      operation: _i2.EmptyInputAndEmptyOutputOperation(),
      testCaseJson: {
        'id': 'AwsJson10EmptyInputAndEmptyOutput',
        'documentation':
            'Clients must always send an empty object if input is modeled.',
        'protocol': 'aws.protocols#awsJson1_0',
        'authScheme': null,
        'body': '{}',
        'bodyMediaType': 'application/json',
        'params': {},
        'vendorParamsShape': null,
        'vendorParams': {},
        'headers': {
          'Content-Type': 'application/x-amz-json-1.0',
          'X-Amz-Target': 'JsonRpc10.EmptyInputAndEmptyOutput'
        },
        'forbidHeaders': [],
        'requireHeaders': [],
        'tags': [],
        'appliesTo': null,
        'method': 'POST',
        'uri': '/',
        'host': null,
        'resolvedHost': null,
        'queryParams': [],
        'forbidQueryParams': [],
        'requireQueryParams': []
      },
      inputSerializer:
          const _EmptyInputAndEmptyOutputInputAwsJson10Serializer());
}

class _EmptyInputAndEmptyOutputInputAwsJson10Serializer
    extends _i3.SmithySerializer<_i4.EmptyInputAndEmptyOutputInput> {
  const _EmptyInputAndEmptyOutputInputAwsJson10Serializer()
      : super('EmptyInputAndEmptyOutputInput');

  @override
  Iterable<Type> get types => const [
        _i4.EmptyInputAndEmptyOutputInput,
        _i4.EmptyInputAndEmptyOutputInputPayload
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  _i4.EmptyInputAndEmptyOutputInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return _i4.EmptyInputAndEmptyOutputInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

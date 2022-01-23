// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.malformed_accept_with_generic_string;

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/malformed_accept_with_generic_string_input.dart'
    as _i3;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class MalformedAcceptWithGenericStringOperation extends _i1.HttpOperation<
    _i2.Uint8List,
    _i3.MalformedAcceptWithGenericStringInput,
    _i1.Unit,
    _i1.Unit> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.Uint8List, _i3.MalformedAcceptWithGenericStringInput,
          _i1.Unit, _i1.Unit>> protocols = [
    _i4.RestJson1Protocol(
        serializers: _i5.serializers,
        builderFactories: _i5.builderFactories,
        interceptors: [const _i1.WithContentLength()])
  ];

  @override
  _i1.HttpRequest buildRequest(
          _i3.MalformedAcceptWithGenericStringInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/MalformedAcceptWithGenericString';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
          _i1.Unit payload, _i6.AWSStreamedHttpResponse response) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
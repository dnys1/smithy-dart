// Generated code. DO NOT MODIFY.

library deprecated.test.model.get_foo_input;

import 'package:built_value/built_value.dart';
import 'package:deprecated/src/test/model/qux.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

abstract class GetFooInput
    with _i1.HttpInput<GetFooInput>
    implements Built<GetFooInput, GetFooInputBuilder> {
  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer<GetFooInput>> serializers = [];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFooInputBuilder b) {}
  String? get bar;
  @Deprecated(
      'No longer recommended for use. See API documentation for more details.')
  _i2.Qux? get baz;
  String? get foo;
  @override
  GetFooInput getPayload() => this;
  @override
  bool get isStreaming => false;
}

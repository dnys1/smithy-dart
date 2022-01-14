// Generated code. DO NOT MODIFY.

library sensitive_string.test.model.get_foo_input;

import 'package:built_value/built_value.dart';
import 'package:sensitive_string/src/test/model/foo.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

abstract class GetFooInput
    with _i1.HttpInput<GetFooInput>
    implements Built<GetFooInput, GetFooInputBuilder> {
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer<GetFooInput>> serializers = [];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFooInputBuilder b) {}
  _i2.Foo? get enumMap;
  @override
  GetFooInput getPayload() => this;
  @override
  bool get isStreaming => false;
}

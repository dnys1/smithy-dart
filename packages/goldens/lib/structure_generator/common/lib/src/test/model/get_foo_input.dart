// Generated code. DO NOT MODIFY.

library common.test.model.get_foo_input;

import 'package:built_value/built_value.dart';
import 'package:common/src/test/model/qux.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

/// This *is* documentation about the shape.
abstract class GetFooInput
    with _i1.HttpInput<GetFooInput>
    implements Built<GetFooInput, GetFooInputBuilder> {
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer<GetFooInput>> serializers = [];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFooInputBuilder b) {}

  /// This *is* documentation about the member.
  int? get bar;
  int? get baz;
  int get byteValue;
  String? get foo;
  String? get object;
  _i2.Qux? get quux;
  @override
  GetFooInput getPayload() => this;
  @override
  bool get isStreaming => false;
}

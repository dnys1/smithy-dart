// Generated code. DO NOT MODIFY.

library documentation.test.model.get_foo_input;

import 'package:built_value/built_value.dart';
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
  String? get bar;

  /// Member documentation
  String? get baz;
  String? get qux;
  @override
  GetFooInput getPayload() => this;
  @override
  bool get isStreaming => false;
}

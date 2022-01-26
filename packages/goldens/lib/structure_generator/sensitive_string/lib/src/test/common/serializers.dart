// Generated code. DO NOT MODIFY.

library sensitive_string.test.common.serializers;

import 'package:built_value/serializer.dart';
import 'package:sensitive_string/src/test/model/foo.dart' as _i2;
import 'package:sensitive_string/src/test/model/get_foo_input.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.Foo.serializers,
  ..._i3.GetFooInput.serializers
];
final Map<FullType, Function> builderFactories = {};

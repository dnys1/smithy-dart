// Generated code. DO NOT MODIFY.

library deprecated.test.serializers;

import 'package:built_value/serializer.dart';
import 'package:deprecated/src/test/model/get_foo_input.dart' as _i2;
import 'package:deprecated/src/test/model/qux.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.GetFooInput.serializers,
  ..._i3.Qux.serializers
];
final Map<FullType, Function> builderFactories = {};

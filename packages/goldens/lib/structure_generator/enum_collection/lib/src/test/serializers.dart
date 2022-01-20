// Generated code. DO NOT MODIFY.

library enum_collection.test.serializers;

import 'package:built_collection/built_collection.dart' as _i3;
import 'package:enum_collection/src/test/model/get_foo_input.dart' as _i2;
import 'package:enum_collection/src/test/model/my_enum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [..._i2.GetFooInput.serializers];
const Map<Type, Function> builderFactories = {
  _i3.BuiltMap<String, _i4.MyEnum>: _i3.MapBuilder<String, _i4.MyEnum>.new
};

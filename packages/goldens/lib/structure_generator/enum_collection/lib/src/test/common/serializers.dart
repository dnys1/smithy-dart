// Generated code. DO NOT MODIFY.

library enum_collection.test.common.serializers;

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:enum_collection/src/test/model/get_foo_input.dart' as _i2;
import 'package:enum_collection/src/test/model/my_enum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.GetFooInput.serializers,
  ..._i3.MyEnum.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i4.BuiltMap, [FullType(String), FullType(_i3.MyEnum)]):
      _i4.MapBuilder<String, _i3.MyEnum>.new
};

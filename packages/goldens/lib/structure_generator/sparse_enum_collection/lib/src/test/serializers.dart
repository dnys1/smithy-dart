// Generated code. DO NOT MODIFY.

library sparse_enum_collection.test.serializers;

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:sparse_enum_collection/src/test/model/get_foo_input.dart'
    as _i2;
import 'package:sparse_enum_collection/src/test/model/my_enum.dart' as _i3;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.GetFooInput.serializers,
  ..._i3.MyEnum.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(
          _i4.BuiltMap, [FullType(String), FullType.nullable(_i3.MyEnum)]):
      _i4.MapBuilder<String, _i3.MyEnum?>.new
};

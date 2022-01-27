// Generated code. DO NOT MODIFY.

library reserved_names.test.common.serializers;

import 'package:built_value/serializer.dart';
import 'package:reserved_names/src/test/model/function.dart' as _i2;
import 'package:reserved_names/src/test/model/get_foo_input.dart' as _i3;
import 'package:reserved_names/src/test/model/image.dart' as _i4;
import 'package:reserved_names/src/test/model/image_builder.dart' as _i5;
import 'package:reserved_names/src/test/model/type.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.Function$.serializers,
  ..._i3.GetFooInput.serializers,
  ..._i4.Image$.serializers,
  ..._i5.ImageBuilder.serializers,
  ..._i6.Type$.serializers
];
final Map<FullType, Function> builderFactories = {};

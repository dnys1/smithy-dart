// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.serializers;

import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:http_binding_map_model/src/test/model/map_input_error.dart'
    as _i2;
import 'package:http_binding_map_model/src/test/model/map_input_request.dart'
    as _i3;
import 'package:http_binding_map_model/src/test/model/server_error.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.MapInputError.serializers,
  ..._i3.MapInputRequest.serializers,
  ..._i4.ServerError.serializers
];
final Map<FullType, Function> builderFactories = {
  const FullType(_i5.BuiltListMultimap, [FullType(String), FullType(int)]):
      _i5.ListMultimapBuilder<String, int>.new
};

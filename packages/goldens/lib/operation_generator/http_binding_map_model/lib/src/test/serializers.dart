// Generated code. DO NOT MODIFY.

library http_binding_map_model.test.serializers;

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:http_binding_map_model/src/test/model/map_input_error.dart'
    as _i2;
import 'package:http_binding_map_model/src/test/model/map_input_request.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.MapInputError.serializers,
  ..._i3.MapInputRequest.serializers
];
const Map<Type, Function> builderFactories = {
  _i4.BuiltListMultimap<String, int?>: _i4.ListMultimapBuilder<String, int?>.new
};

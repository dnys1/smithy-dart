import 'package:built_value/serializer.dart';

import 'common/my_struct.dart';
import 'common/qux.dart';

part 'common_client.g.dart';

@SerializersFor([
  MyStruct,
  Qux,
])
final Serializers serializers = _$serializers;

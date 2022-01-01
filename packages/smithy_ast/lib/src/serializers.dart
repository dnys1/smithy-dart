import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:meta/meta.dart';
import 'package:smithy_ast/src/shapes/apply_shape.dart';
import 'package:smithy_ast/src/shapes/big_decimal_shape.dart';
import 'package:smithy_ast/src/shapes/big_integer_shape.dart';
import 'package:smithy_ast/src/shapes/blob_shape.dart';
import 'package:smithy_ast/src/shapes/boolean_shape.dart';
import 'package:smithy_ast/src/shapes/byte_shape.dart';
import 'package:smithy_ast/src/shapes/collection_shape.dart';
import 'package:smithy_ast/src/shapes/document_shape.dart';
import 'package:smithy_ast/src/shapes/double_shape.dart';
import 'package:smithy_ast/src/shapes/float_shape.dart';
import 'package:smithy_ast/src/shapes/integer_shape.dart';
import 'package:smithy_ast/src/shapes/list_shape.dart';
import 'package:smithy_ast/src/shapes/long_shape.dart';
import 'package:smithy_ast/src/shapes/map_shape.dart';
import 'package:smithy_ast/src/shapes/member_shape.dart';
import 'package:smithy_ast/src/shapes/operation_shape.dart';
import 'package:smithy_ast/src/shapes/resource_shape.dart';
import 'package:smithy_ast/src/shapes/service_shape.dart';
import 'package:smithy_ast/src/shapes/set_shape.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_ref.dart';
import 'package:smithy_ast/src/shapes/short_shape.dart';
import 'package:smithy_ast/src/shapes/string_shape.dart';
import 'package:smithy_ast/src/shapes/structure_shape.dart';
import 'package:smithy_ast/src/shapes/timestamp_shape.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';
import 'package:smithy_ast/src/shapes/union_shape.dart';
import 'package:smithy_ast/src/smithy_ast.dart';

part 'serializers.g.dart';

@SerializersFor([
  SmithyAst,
  Shape,
  ShapeId,
  ApplyShape,
  BigDecimalShape,
  BigIntegerShape,
  BlobShape,
  BooleanShape,
  ByteShape,
  DocumentShape,
  DoubleShape,
  FloatShape,
  IntegerShape,
  ListShape,
  LongShape,
  MapShape,
  MemberShape,
  OperationShape,
  ResourceShape,
  ServiceShape,
  SetShape,
  ShortShape,
  StringShape,
  StructureShape,
  TimestampShape,
  UnionShape
])
@internal
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(ShapeIdSerializer())
      ..add(ShapeMapSerializer())
      ..add(ShapeSerializer())
      ..add(NamedMembersMapSerializer())
      ..add(TraitMapSerializer()))
    .build();

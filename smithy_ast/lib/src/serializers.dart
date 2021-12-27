import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:smithy_ast/src/shape/apply_shape.dart';
import 'package:smithy_ast/src/shape/big_decimal_shape.dart';
import 'package:smithy_ast/src/shape/big_integer_shape.dart';
import 'package:smithy_ast/src/shape/blob_shape.dart';
import 'package:smithy_ast/src/shape/boolean_shape.dart';
import 'package:smithy_ast/src/shape/byte_shape.dart';
import 'package:smithy_ast/src/shape/collection_shape.dart';
import 'package:smithy_ast/src/shape/document_shape.dart';
import 'package:smithy_ast/src/shape/double_shape.dart';
import 'package:smithy_ast/src/shape/float_shape.dart';
import 'package:smithy_ast/src/shape/integer_shape.dart';
import 'package:smithy_ast/src/shape/list_shape.dart';
import 'package:smithy_ast/src/shape/long_shape.dart';
import 'package:smithy_ast/src/shape/map_shape.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/operation_shape.dart';
import 'package:smithy_ast/src/shape/resource_shape.dart';
import 'package:smithy_ast/src/shape/service_shape.dart';
import 'package:smithy_ast/src/shape/set_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_ref.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/short_shape.dart';
import 'package:smithy_ast/src/shape/string_shape.dart';
import 'package:smithy_ast/src/shape/structure_shape.dart';
import 'package:smithy_ast/src/shape/timestamp_shape.dart';
import 'package:smithy_ast/src/shape/union_shape.dart';
import 'package:smithy_ast/src/smithy_ast.dart';
import 'package:smithy_ast/src/traits/trait.dart';

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
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(ShapeMapSerializer())
      ..add(ShapeSerializer())
      ..add(NamedMembersMapSerializer())
      ..add(TraitMapSerializer())
      ..addAll(Trait.serializers.values))
    .build();

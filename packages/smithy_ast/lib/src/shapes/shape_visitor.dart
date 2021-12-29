import 'big_decimal_shape.dart';
import 'big_integer_shape.dart';
import 'blob_shape.dart';
import 'boolean_shape.dart';
import 'byte_shape.dart';
import 'document_shape.dart';
import 'double_shape.dart';
import 'float_shape.dart';
import 'integer_shape.dart';
import 'list_shape.dart';
import 'long_shape.dart';
import 'map_shape.dart';
import 'member_shape.dart';
import 'operation_shape.dart';
import 'resource_shape.dart';
import 'service_shape.dart';
import 'set_shape.dart';
import 'short_shape.dart';
import 'string_shape.dart';
import 'structure_shape.dart';
import 'timestamp_shape.dart';
import 'union_shape.dart';

abstract class ShapeVisitor<R> {
  R blobShape(BlobShape shape);

  R booleanShape(BooleanShape shape);

  R listShape(ListShape shape);

  R setShape(SetShape shape);

  R mapShape(MapShape shape);

  R byteShape(ByteShape shape);

  R shortShape(ShortShape shape);

  R integerShape(IntegerShape shape);

  R longShape(LongShape shape);

  R floatShape(FloatShape shape);

  R documentShape(DocumentShape shape);

  R doubleShape(DoubleShape shape);

  R bigIntegerShape(BigIntegerShape shape);

  R bigDecimalShape(BigDecimalShape shape);

  R operationShape(OperationShape shape);

  R resourceShape(ResourceShape shape);

  R serviceShape(ServiceShape shape);

  R stringShape(StringShape shape);

  R structureShape(StructureShape shape);

  R unionShape(UnionShape shape);

  R memberShape(MemberShape shape);

  R timestampShape(TimestampShape shape);
}

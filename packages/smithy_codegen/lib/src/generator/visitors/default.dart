import 'package:smithy_ast/smithy_ast.dart';

/// Visits shapes, returning `null` as the default.
class DefaultVisitor<T> implements ShapeVisitor<T?> {
  const DefaultVisitor();

  @override
  T? bigDecimalShape(BigDecimalShape shape) => null;

  @override
  T? bigIntegerShape(BigIntegerShape shape) => null;

  @override
  T? blobShape(BlobShape shape) => null;

  @override
  T? booleanShape(BooleanShape shape) => null;

  @override
  T? byteShape(ByteShape shape) => null;

  @override
  T? documentShape(DocumentShape shape) => null;

  @override
  T? doubleShape(DoubleShape shape) => null;

  @override
  T? floatShape(FloatShape shape) => null;

  @override
  T? integerShape(IntegerShape shape) => null;

  @override
  T? listShape(ListShape shape) => null;

  @override
  T? longShape(LongShape shape) => null;

  @override
  T? mapShape(MapShape shape) => null;

  @override
  T? memberShape(MemberShape shape) => null;

  @override
  T? operationShape(OperationShape shape) => null;

  @override
  T? resourceShape(ResourceShape shape) => null;

  @override
  T? serviceShape(ServiceShape shape) => null;

  @override
  T? setShape(SetShape shape) => null;

  @override
  T? shortShape(ShortShape shape) => null;

  @override
  T? stringShape(StringShape shape) => null;

  @override
  T? structureShape(StructureShape shape) => null;

  @override
  T? timestampShape(TimestampShape shape) => null;

  @override
  T? unionShape(UnionShape shape) => null;
}

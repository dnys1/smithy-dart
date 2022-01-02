import 'package:smithy_ast/smithy_ast.dart';

/// Visits shapes.
abstract class ShapeVisitor<R> {
  R blobShape(BlobShape shape, [Shape? parent]);

  R booleanShape(BooleanShape shape, [Shape? parent]);

  R listShape(ListShape shape, [Shape? parent]);

  R setShape(SetShape shape, [Shape? parent]);

  R mapShape(MapShape shape, [Shape? parent]);

  R byteShape(ByteShape shape, [Shape? parent]);

  R shortShape(ShortShape shape, [Shape? parent]);

  R integerShape(IntegerShape shape, [Shape? parent]);

  R longShape(LongShape shape, [Shape? parent]);

  R floatShape(FloatShape shape, [Shape? parent]);

  R documentShape(DocumentShape shape, [Shape? parent]);

  R doubleShape(DoubleShape shape, [Shape? parent]);

  R bigIntegerShape(BigIntegerShape shape, [Shape? parent]);

  R bigDecimalShape(BigDecimalShape shape, [Shape? parent]);

  R operationShape(OperationShape shape, [Shape? parent]);

  R resourceShape(ResourceShape shape, [Shape? parent]);

  R serviceShape(ServiceShape shape, [Shape? parent]);

  R stringShape(StringShape shape, [Shape? parent]);

  R structureShape(StructureShape shape, [Shape? parent]);

  R unionShape(UnionShape shape, [Shape? parent]);

  R memberShape(MemberShape shape, [Shape? parent]);

  R timestampShape(TimestampShape shape, [Shape? parent]);
}

/// Visits shapes by category.
abstract class CategoryShapeVisitor<R> implements ShapeVisitor<R> {
  const CategoryShapeVisitor();

  @override
  R bigDecimalShape(BigDecimalShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R bigIntegerShape(BigIntegerShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R blobShape(BlobShape shape, [Shape? parent]) => simpleShape(shape, parent);

  @override
  R booleanShape(BooleanShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R byteShape(ByteShape shape, [Shape? parent]) => simpleShape(shape, parent);

  @override
  R documentShape(DocumentShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R doubleShape(DoubleShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R floatShape(FloatShape shape, [Shape? parent]) => simpleShape(shape, parent);

  @override
  R integerShape(IntegerShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R longShape(LongShape shape, [Shape? parent]) => simpleShape(shape, parent);

  R simpleShape(SimpleShape shape, [Shape? parent]);

  @override
  R shortShape(ShortShape shape, [Shape? parent]) => simpleShape(shape, parent);

  @override
  R stringShape(StringShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);

  @override
  R timestampShape(TimestampShape shape, [Shape? parent]) =>
      simpleShape(shape, parent);
}

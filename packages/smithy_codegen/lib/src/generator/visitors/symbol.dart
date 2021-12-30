import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// Converts shapes into symbols or [Reference]s.
///
/// The Smithy model notes that all shapes
class SymbolVisitor implements ShapeVisitor<Reference> {
  const SymbolVisitor(this.context);

  final CodegenContext context;

  @override
  Reference bigDecimalShape(BigDecimalShape shape) {
    // TODO
    throw UnimplementedError();
  }

  @override
  Reference bigIntegerShape(BigIntegerShape shape) {
    return DartTypes.core.bigInt.withBoxed(shape.isNullable());
  }

  @override
  Reference blobShape(BlobShape shape) {
    if (shape.isStreaming) {
      return DartTypes.async
          .stream(DartTypes.core.list(DartTypes.core.int))
          .withBoxed(shape.isNullable());
    }
    return DartTypes.typedData.uint8List.withBoxed(shape.isNullable());
  }

  @override
  Reference booleanShape(BooleanShape shape) {
    return DartTypes.core.bool.withBoxed(shape.isNullable());
  }

  @override
  Reference byteShape(ByteShape shape) {
    return DartTypes.core.int.withBoxed(shape.isNullable());
  }

  @override
  Reference documentShape(DocumentShape shape) {
    return DartTypes.core.object.withBoxed(shape.isNullable());
  }

  @override
  Reference doubleShape(DoubleShape shape) {
    return DartTypes.core.double.withBoxed(shape.isNullable());
  }

  @override
  Reference floatShape(FloatShape shape) {
    return DartTypes.core.double.withBoxed(shape.isNullable());
  }

  @override
  Reference integerShape(IntegerShape shape) {
    return DartTypes.core.int.withBoxed(shape.isNullable());
  }

  @override
  Reference listShape(ListShape shape) {
    return DartTypes.core
        .list(shape.member.accept(this).withBoxed(shape.isNullable(shape)))
        .withBoxed(shape.isNullable());
  }

  @override
  Reference longShape(LongShape shape) {
    return DartTypes.fixNum.int64.withBoxed(shape.isNullable());
  }

  @override
  Reference mapShape(MapShape shape) {
    final key = context.symbolFor(shape.key.target, parentShape: shape);
    final value = context.symbolFor(shape.value.target, parentShape: shape);
    return DartTypes.core.map(key, value).withBoxed(shape.isNullable());
  }

  @override
  Reference memberShape(MemberShape shape) {
    return context.symbolFor(shape.target, parentShape: shape);
  }

  @override
  Reference operationShape(OperationShape shape) {
    throw UnsupportedError('Codegen does not generate for operation shapes');
  }

  @override
  Reference resourceShape(ResourceShape shape) {
    throw UnimplementedError();
  }

  @override
  Reference serviceShape(ServiceShape shape) {
    final clientName = context.serviceName
            .replaceAll(RegExp(r'(API|Client|Service)$'), '')
            .pascalCase +
        'Client';
    return createSymbol(shape, name: clientName, serviceName: clientName);
  }

  @override
  Reference setShape(SetShape shape) {
    return DartTypes.core.set(
        shape.member.accept(this).withBoxed(shape.member.isNullable(shape)));
  }

  @override
  Reference shortShape(ShortShape shape) {
    return DartTypes.core.int.withBoxed(shape.isNullable());
  }

  @override
  Reference stringShape(StringShape shape) {
    if (shape.isEnum) {
      return createSymbol(shape).withBoxed(shape.isNullable());
    }
    return DartTypes.core.string.withBoxed(shape.isNullable());
  }

  @override
  Reference structureShape(StructureShape shape) {
    return createSymbol(shape);
  }

  @override
  Reference timestampShape(TimestampShape shape) {
    return DartTypes.core.dateTime.withBoxed(shape.isNullable());
  }

  @override
  Reference unionShape(UnionShape shape) {
    return createSymbol(shape);
  }

  /// Creates a new symbol from shape, with its own definition file.
  Reference createSymbol(
    Shape shape, {
    String? name,
    String? serviceName,
  }) {
    return TypeReference(
      (t) => t
        ..symbol = name ?? shape.shapeId.name.pascalCase
        ..url = shape.libraryUrl(
          context.packageName,
          serviceName ?? context.serviceName,
        ),
    );
  }
}

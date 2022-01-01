import 'package:code_builder/code_builder.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/exception.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/generator/visitors/symbol.dart';

/// The context for code generation.
class CodegenContext {
  const CodegenContext({
    required this.shapes,
    required this.packageName,
    required this.serviceName,
    this.pubspec,
  });

  /// The service closure's shape map.
  final ShapeMap shapes;

  /// The name of the package being generated.
  final String packageName;

  /// The name of the service being generated.
  final String serviceName;

  /// The pubspec of the package being generated. If included, dependencies will
  /// be added as needed during code generation.
  final Pubspec? pubspec;

  /// Returns the symbol or [Reference] for [shapeId].
  Reference symbolFor(ShapeId shapeId, {Shape? parentShape}) {
    Shape? shape;
    if (shapeId.isCoreShape) {
      final type = ShapeType.valueOf(shapeId.name.toLowerCase());
      switch (type) {
        case ShapeType.bigDecimal:
          shape = BigDecimalShape();
          break;
        case ShapeType.bigInteger:
          shape = BigIntegerShape();
          break;
        case ShapeType.blob:
          shape = BlobShape();
          break;
        case ShapeType.boolean:
          shape = BooleanShape();
          break;
        case ShapeType.byte:
          shape = ByteShape();
          break;
        case ShapeType.document:
          shape = DocumentShape();
          break;
        case ShapeType.double:
          shape = DoubleShape();
          break;
        case ShapeType.float:
          shape = FloatShape();
          break;
        case ShapeType.integer:
          shape = IntegerShape();
          break;
        case ShapeType.long:
          shape = LongShape();
          break;
        case ShapeType.short:
          shape = ShortShape();
          break;
        case ShapeType.string:
          shape = StringShape();
          break;
        case ShapeType.timestamp:
          shape = TimestampShape();
          break;
        default:
          break;
      }
    }
    shape ??= shapes[shapeId];
    if (shape == null) {
      throw CodegenException('No shape found for ID: $shapeId');
    }
    return shape
        .accept(SymbolVisitor(this))
        .withBoxed(shape.isNullable(parentShape));
  }
}

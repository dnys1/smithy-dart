import 'package:code_builder/code_builder.dart';
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
  });

  /// The service closure's shape map.
  final ShapeMap shapes;

  /// The name of the package being generated.
  final String packageName;

  /// The name of the service being generated.
  final String serviceName;

  /// Returns the symbol or [Reference] for [shapeId].
  Reference symbolFor(ShapeId shapeId, {Shape? parentShape}) {
    final shape = shapes[shapeId];
    if (shape == null) {
      throw CodegenException('No shape found for ID: $shapeId');
    }
    return shape
        .accept(SymbolVisitor(this))
        .withBoxed(shape.isNullable(parentShape));
  }
}

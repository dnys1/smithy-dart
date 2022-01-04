import 'package:code_builder/code_builder.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/exception.dart';
import 'package:smithy_codegen/src/generator/visitors/symbol_visitor.dart';

/// The context for code generation.
class CodegenContext {
  CodegenContext({
    required this.smithyVersion,
    this.metadata = const {},
    required this.shapes,
    required this.packageName,
    this.serviceShapeId,
    String? serviceName,
    this.pubspec,
  }) : _serviceName = serviceName {
    if (serviceShapeId == null && serviceName == null) {
      throw ArgumentError(
          'Eitehr serviceShapeId or serviceName must be provided.');
    }
  }

  /// The version of Smithy being generated for.
  final String smithyVersion;

  /// Metadata about the model.
  final Map<String, Object> metadata;

  /// The service closure's shape map.
  final ShapeMap shapes;

  /// The name of the package being generated.
  final String packageName;

  /// The shape ID of the service being generated.
  final ShapeId? serviceShapeId;

  /// The name of the service being generated.
  String get serviceName => (_serviceName ?? serviceShapeId?.shape)!;

  /// A manual rename of the service.
  final String? _serviceName;

  /// The pubspec of the package being generated. If included, dependencies will
  /// be added as needed during code generation.
  final Pubspec? pubspec;

  /// The service shape being generated.
  late final ServiceShape? service =
      serviceShapeId == null ? null : shapeFor(serviceShapeId!) as ServiceShape;

  /// Returns the shape for [shapeId].
  Shape shapeFor(ShapeId shapeId) {
    final shape = shapes[shapeId] ?? Shape.preludeShapes[shapeId];
    if (shape != null) {
      return shape;
    }
    throw CodegenException('No shape found for ID: $shapeId');
  }

  /// Returns the symbol or [Reference] for [shapeId].
  Reference symbolFor(ShapeId shapeId, [Shape? parent]) {
    final shape = shapeFor(shapeId);
    return shape.accept(SymbolVisitor(this), parent);
  }
}

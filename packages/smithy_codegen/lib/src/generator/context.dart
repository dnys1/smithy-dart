import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/exception.dart';
import 'package:smithy_codegen/src/generator/visitors/symbol_visitor.dart';

/// The context for code generation.
class CodegenContext {
  CodegenContext({
    required this.smithyVersion,
    this.metadata = const {},
    required ShapeMap shapes,
    required this.packageName,
    ShapeId? serviceShapeId,
    String? serviceName,
    this.pubspec,
  })  : _shapes = shapes,
        _serviceName = serviceName,
        serviceShapeId = serviceShapeId ??
            shapes.entries.singleWhereOrNull((entry) {
              return entry.value.getType() == ShapeType.service;
            })?.key {
    if (serviceShapeId == null && serviceName == null) {
      throw ArgumentError(
        'Either serviceShapeId or serviceName must be provided.',
      );
    }
  }

  /// The version of Smithy being generated for.
  final String smithyVersion;

  /// Metadata about the model.
  final Map<String, Object> metadata;

  /// The service closure's shape map.
  final ShapeMap _shapes;

  late final ShapeMap shapes = ShapeMap(Map.fromEntries(
    _shapes.entries.where((entry) {
      return serviceShapeId == null ||
          entry.key.namespace == serviceShapeId!.namespace;
    }),
  ));

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

  /// The protocol for this service.
  late final List<ProtocolDefinitionTrait> serviceProtocols =
      service?.traits.values.whereType<ProtocolDefinitionTrait>().toList() ??
          const [_GenericProtocolDefinitionTrait()];

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

/// A generic JSON protocol definition for generating service clients without
/// a defined protocol.
///
/// This ensures that at least one serializer is always generated.
class _GenericProtocolDefinitionTrait implements ProtocolDefinitionTrait {
  const _GenericProtocolDefinitionTrait();

  @override
  bool get isSynthetic => true;

  @override
  bool get noInlineDocumentSupport => false;

  @override
  List<Object?> get props => [shapeId];

  @override
  ShapeId get shapeId =>
      ShapeId(namespace: 'smithy.dart', shape: 'genericProtocol');

  @override
  Map<String, Object?> toJson() => throw UnimplementedError();

  @override
  List<ShapeId> get traits => [JsonNameTrait.id];

  @override
  ProtocolDefinitionTrait get value => this;
}

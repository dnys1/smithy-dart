import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/visitors/symbol_visitor.dart';
import 'package:smithy_codegen/src/util/recase.dart';

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

  /// The service closure's shape map.
  late final ShapeMap shapes = ShapeMap(Map.fromEntries(
    _shapes.entries.where((entry) {
      return serviceShapeId == null ||
          entry.key.namespace == serviceShapeId!.namespace;
    }),
  ));

  /// Tracks the service's generated types.
  ///
  /// Used for creating common `serializers` definition.
  final Set<Reference> generatedTypes = {};

  /// Tracks the service's needed builder factories.
  final Map<Expression, Expression> builderFactories = {};

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
  late final List<ProtocolDefinitionTrait> serviceProtocols = () {
    final protocols =
        service?.traits.values.whereType<ProtocolDefinitionTrait>().toList();
    if (protocols == null || protocols.isEmpty) {
      return const [GenericProtocolDefinitionTrait()];
    }
    return protocols;
  }();

  /// Returns the shape for [shapeId].
  Shape shapeFor(ShapeId shapeId) {
    final shape = _shapes[shapeId] ?? Shape.preludeShapes[shapeId];
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

  /// The service's serializers library.
  late final SmithyLibrary serviceSerializersLibrary = SmithyLibraryX.create(
    packageName: packageName,
    serviceName: serviceName,
    libraryType: SmithyLibrary_LibraryType.SERIALIZERS,
    filename: 'serializers.dart',
  );

  /// The service's serializers reference.
  late final Reference serializersRef =
      Reference('serializers', serviceSerializersLibrary.libraryUrl);

  /// The service's builder factories reference.
  late final Reference builderFactoriesRef =
      Reference('builderFactories', serviceSerializersLibrary.libraryUrl);

  /// The service's client library.
  late final SmithyLibrary serviceClientLibrary = SmithyLibraryX.create(
    packageName: packageName,
    serviceName: serviceName,
    libraryType: SmithyLibrary_LibraryType.CLIENT,
    filename: serviceClientName,
  );

  late final String serviceClientName =
      serviceName.replaceAll(RegExp(r'(API|Client|Service)$'), '').pascalCase +
          'Client';

  /// The top-level service library.
  late final SmithyLibrary serviceLibrary = SmithyLibraryX.create(
    packageName: packageName,
    serviceName: serviceName,
    libraryType: SmithyLibrary_LibraryType.SERVICE,
    filename: serviceName,
  );
}

/// A generic JSON protocol definition for generating service clients without
/// a defined protocol.
///
/// This ensures that at least one serializer is always generated.
class GenericProtocolDefinitionTrait implements ProtocolDefinitionTrait {
  const GenericProtocolDefinitionTrait();

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

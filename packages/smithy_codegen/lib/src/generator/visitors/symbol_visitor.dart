import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Converts shapes into symbols or [Reference]s.
///
/// The Smithy model notes that all shapes
class SymbolVisitor extends CategoryShapeVisitor<Reference> {
  const SymbolVisitor(this.context);

  final CodegenContext context;

  @override
  Reference listShape(ListShape shape, [Shape? parent]) {
    final type = DartTypes.builtValue
        .builtList(shape.member.accept(this, shape))
        .withBoxed(shape.isNullable(parent));
    final builder = DartTypes.builtValue.listBuilder(type);
    context.builderFactories[type.unboxed] = builder.property('new');
    return type;
  }

  @override
  Reference mapShape(MapShape shape, [Shape? parent]) {
    final key = context.symbolFor(shape.key.target, shape);

    final valueShape = context.shapeFor(shape.value.target);
    final valueShapeType = valueShape.getType();

    // Ensure we add the builders for these to the context's `builderFactories`
    // since they will not be available to serializers otherwise.

    // Use `BuiltSetMultimap` and `BuiltListMultimap` for Maps with collection
    // value types.
    switch (valueShapeType) {
      case ShapeType.list:
        final valueSymbol =
            context.symbolFor((valueShape as ListShape).member.target);
        final type = DartTypes.builtValue
            .builtListMultimap(key, valueSymbol)
            .withBoxed(shape.isNullable(parent));
        final builder =
            DartTypes.builtValue.listMultimapBuilder(key, valueSymbol);
        context.builderFactories[type.unboxed] = builder.property('new');
        return type;
      case ShapeType.set:
        final valueSymbol =
            context.symbolFor((valueShape as SetShape).member.target);
        final type = DartTypes.builtValue
            .builtSetMultimap(key, valueSymbol)
            .withBoxed(shape.isNullable(parent));
        final builder =
            DartTypes.builtValue.setMultimapBuilder(key, valueSymbol);
        context.builderFactories[type.unboxed] = builder.property('new');
        return type;
      default:
        break;
    }

    final value = context.symbolFor(shape.value.target, shape);
    final type = DartTypes.builtValue
        .builtMap(key, value)
        .withBoxed(shape.isNullable(parent));
    final builder = DartTypes.builtValue.mapBuilder(key, value);
    context.builderFactories[type.unboxed] = builder.property('new');
    return type;
  }

  @override
  Reference memberShape(MemberShape shape, [Shape? parent]) {
    return context.symbolFor(shape.target, parent);
  }

  @override
  Reference operationShape(OperationShape shape, [Shape? parent]) {
    final library = shape.smithyLibrary(
      context.packageName,
      context.serviceName,
    );
    return Reference(shape.dartName, library.libraryUrl);
  }

  @override
  Reference resourceShape(ResourceShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Reference serviceShape(ServiceShape shape, [Shape? parent]) {
    // Returns the service client's shape.
    return Reference(
      context.serviceClientName,
      context.serviceClientLibrary.libraryUrl,
    );
  }

  @override
  Reference setShape(SetShape shape, [Shape? parent]) {
    final type = DartTypes.builtValue
        .builtSet(shape.member.accept(this, shape))
        .withBoxed(shape.isNullable(parent));
    final builder = DartTypes.builtValue.setBuilder(type);
    context.builderFactories[type.unboxed] = builder.property('new');
    return type;
  }

  @override
  Reference stringShape(StringShape shape, [Shape? parent]) {
    if (shape.isEnum) {
      return createSymbol(shape).withBoxed(shape.isNullable(parent));
    }
    return super.stringShape(shape);
  }

  @override
  Reference structureShape(StructureShape shape, [Shape? parent]) {
    if (shape.hasTrait<UnitTypeTrait>()) {
      return DartTypes.smithy.unit;
    }
    return createSymbol(shape);
  }

  @override
  Reference unionShape(UnionShape shape, [Shape? parent]) {
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
        ..symbol = name ?? shape.shapeId.shape.pascalCase
        ..url = shape.libraryUrl(
          context.packageName,
          serviceName ?? context.serviceName,
        ),
    );
  }

  @override
  Reference simpleShape(SimpleShape shape, [Shape? parent]) {
    return shape.typeReference.withBoxed(shape.isNullable(parent));
  }
}

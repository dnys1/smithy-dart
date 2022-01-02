import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

/// Converts shapes into symbols or [Reference]s.
///
/// The Smithy model notes that all shapes
class SymbolVisitor extends CategoryShapeVisitor<Reference> {
  const SymbolVisitor(this.context);

  final CodegenContext context;

  @override
  Reference listShape(ListShape shape, [Shape? parent]) {
    return DartTypes.core
        .list(shape.member.accept(this, shape))
        .withBoxed(shape.isNullable(parent));
  }

  @override
  Reference mapShape(MapShape shape, [Shape? parent]) {
    final key = context.symbolFor(shape.key.target, parent: shape);
    final value = context.symbolFor(shape.value.target, parent: shape);
    return DartTypes.core.map(key, value).withBoxed(shape.isNullable(parent));
  }

  @override
  Reference memberShape(MemberShape shape, [Shape? parent]) {
    return context.symbolFor(shape.target, parent: parent);
  }

  @override
  Reference operationShape(OperationShape shape, [Shape? parent]) {
    throw UnsupportedError('Codegen does not generate for operation shapes');
  }

  @override
  Reference resourceShape(ResourceShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Reference serviceShape(ServiceShape shape, [Shape? parent]) {
    final clientName = context.serviceName
            .replaceAll(RegExp(r'(API|Client|Service)$'), '')
            .pascalCase +
        'Client';
    return createSymbol(shape, name: clientName, serviceName: clientName);
  }

  @override
  Reference setShape(SetShape shape, [Shape? parent]) {
    return DartTypes.core
        .set(shape.member.accept(this, shape))
        .withBoxed(shape.isNullable(parent));
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

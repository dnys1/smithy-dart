import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/visitors/util.dart';
import 'package:smithy_codegen/src/util/recase.dart';

class ToJsonVisitor with RenameState implements ShapeVisitor<Expression> {
  ToJsonVisitor(
    this.context, {
    Map<ShapeId, String> renames = const {},
  }) {
    renames.forEach(pushState);
  }

  final CodegenContext context;

  /// A reference to [shape].
  Reference _shapeRef(Shape shape) => refer(_nameFor(shape));

  /// The name for [shape] in this [context].
  String _nameFor(Shape shape) =>
      renameFor(shape.shapeId) ?? shape.shapeId.name.camelCase;

  @override
  Expression bigDecimalShape(BigDecimalShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression bigIntegerShape(BigIntegerShape shape, [Shape? parent]) {
    final ref = _shapeRef(shape);
    if (shape.isNullable()) {
      return ref.nullSafeProperty('toString').call([]);
    } else {
      return ref.property('toString').call([]);
    }
  }

  @override
  Expression blobShape(BlobShape shape, [Shape? parent]) {
    if (shape.isStreaming) {
      throw CodegenException('Streaming types cannot be serialized');
    }
    return _shapeRef(shape);
  }

  @override
  Expression booleanShape(BooleanShape shape, [Shape? parent]) {
    return _shapeRef(shape);
  }

  @override
  Expression byteShape(ByteShape shape, [Shape? parent]) {
    return _shapeRef(shape);
  }

  @override
  Expression documentShape(DocumentShape shape, [Shape? parent]) {
    return _shapeRef(shape);
  }

  @override
  Expression doubleShape(DoubleShape shape, [Shape? parent]) {
    return _shapeRef(shape);
  }

  @override
  Expression floatShape(FloatShape shape, [Shape? parent]) {
    return _shapeRef(shape);
  }

  @override
  Expression integerShape(IntegerShape shape, [Shape? parent]) {
    return _shapeRef(shape);
  }

  Expression _collectionShape(CollectionShape shape, [Shape? parent]) {
    final ref = _shapeRef(shape);
    pushState(shape.member.target, 'el');
    final memberToJson =
        context.shapeFor(shape.member.target).accept(this, shape);
    final memberRef = _shapeRef(shape.member);
    popState(shape.member.target);

    // Avoid unnecessary `.map` call if we can.
    if (memberToJson == memberRef) {
      return ref;
    }

    final closure = Method(
      (m) => m
        ..lambda = true
        ..requiredParameters.add(Parameter((p) => p..name = 'el'))
        ..body = memberToJson.code,
    ).closure;
    if (shape.isNullable(parent)) {
      return ref.nullSafeProperty('map').call([closure]);
    }
    return ref.property('map').call([closure]);
  }

  @override
  Expression listShape(ListShape shape, [Shape? parent]) {
    return _collectionShape(shape, parent);
  }

  @override
  Expression longShape(LongShape shape, [Shape? parent]) {
    return _shapeRef(shape);
  }

  @override
  Expression mapShape(MapShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression memberShape(MemberShape shape, [Shape? parent]) {
    final targetShape = context.shapeFor(shape.target);
    return withState(
      shape.target,
      shape.memberName,
      () => targetShape.accept(this, parent),
    );
  }

  @override
  Expression operationShape(OperationShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression resourceShape(ResourceShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression serviceShape(ServiceShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression setShape(SetShape shape, [Shape? parent]) {
    return _collectionShape(shape, parent);
  }

  @override
  Expression shortShape(ShortShape shape, [Shape? parent]) {
    return _shapeRef(shape);
  }

  @override
  Expression stringShape(StringShape shape, [Shape? parent]) {
    if (shape.isEnum) {
      if (shape.isNullable(parent)) {
        return _shapeRef(shape).nullSafeProperty('value');
      } else {
        return _shapeRef(shape).property('value');
      }
    }
    return _shapeRef(shape);
  }

  @override
  Expression structureShape(StructureShape shape, [Shape? parent]) {
    final ref = _shapeRef(shape);
    if (shape.isNullable(parent)) {
      return ref.nullSafeProperty('toJson').call([]);
    }
    return ref.property('toJson').call([]);
  }

  @override
  Expression timestampShape(TimestampShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression unionShape(UnionShape shape, [Shape? parent]) {
    final ref = _shapeRef(shape);
    if (shape.isNullable(parent)) {
      return ref.nullSafeProperty('value');
    }
    return ref.property('value');
  }
}

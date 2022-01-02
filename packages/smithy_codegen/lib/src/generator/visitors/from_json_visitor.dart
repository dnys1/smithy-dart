import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/types.dart';

class ToJsonVisitor implements ShapeVisitor<Expression> {
  const ToJsonVisitor(this.context, [this.renames = const {}]);

  final Map<ShapeId, String> renames;
  final CodegenContext context;

  Reference _shapeRef(Shape shape) => refer(_nameFor(shape));

  String _nameFor(Shape shape) => renames[shape.shapeId] ?? shape.shapeId.name;

  @override
  Expression bigDecimalShape(BigDecimalShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression bigIntegerShape(BigIntegerShape shape, [Shape? parent]) {
    throw UnimplementedError();
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

  @override
  Expression listShape(ListShape shape, [Shape? parent]) {
    final isNullable = shape.isNullable();
    final ref =
        _shapeRef(shape).asA(DartTypes.core.list().withBoxed(isNullable));
    final member = context.symbolFor(shape.member.target, parent: shape);
    if (isNullable) {
      return ref.nullSafeProperty('cast').call([], {}, [member]);
    } else {
      return ref.property('cast').call([], {}, [member]);
    }
  }

  @override
  Expression longShape(LongShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression mapShape(MapShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression memberShape(MemberShape shape, [Shape? parent]) {
    throw UnimplementedError();
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
    throw UnimplementedError();
  }

  @override
  Expression shortShape(ShortShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression stringShape(StringShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression structureShape(StructureShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression timestampShape(TimestampShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }

  @override
  Expression unionShape(UnionShape shape, [Shape? parent]) {
    throw UnimplementedError();
  }
}

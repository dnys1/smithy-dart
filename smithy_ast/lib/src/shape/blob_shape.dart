import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

import 'shape.dart';

part 'blob_shape.g.dart';

abstract class BlobShape implements Shape, Built<BlobShape, BlobShapeBuilder> {
  factory BlobShape([void Function(BlobShapeBuilder) updates]) = _$BlobShape;
  BlobShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BlobShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
  }

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.blobShape(this);

  static Serializer<BlobShape> get serializer => _$blobShapeSerializer;
}

extension BlobShapeType on BlobShape {
  ShapeType get type => ShapeType.blob;
}

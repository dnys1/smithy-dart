import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/simple_shape.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

import 'shape.dart';

part 'blob_shape.g.dart';

abstract class BlobShape
    implements SimpleShape, Built<BlobShape, BlobShapeBuilder> {
  factory BlobShape([void Function(BlobShapeBuilder) updates]) = _$BlobShape;
  BlobShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BlobShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('Blob');

  @override
  ShapeType getType() => ShapeType.blob;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.blobShape(this, parent);

  static Serializer<BlobShape> get serializer => _$blobShapeSerializer;
}

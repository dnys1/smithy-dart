import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/simple_shape.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'document_shape.g.dart';

abstract class DocumentShape
    implements SimpleShape, Built<DocumentShape, DocumentShapeBuilder> {
  factory DocumentShape([void Function(DocumentShapeBuilder) updates]) =
      _$DocumentShape;
  DocumentShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentShapeBuilder b) {
    b.shapeId = id;
    b.traits = TraitMap.empty();
  }

  static const id = ShapeId.core('Document');

  @override
  ShapeType getType() => ShapeType.document;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.documentShape(this, parent);

  static Serializer<DocumentShape> get serializer => _$documentShapeSerializer;
}

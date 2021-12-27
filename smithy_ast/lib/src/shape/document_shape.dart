import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';

part 'document_shape.g.dart';

abstract class DocumentShape
    implements Shape, Built<DocumentShape, DocumentShapeBuilder> {
  factory DocumentShape([void Function(DocumentShapeBuilder) updates]) =
      _$DocumentShape;
  DocumentShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
    b.traits ??= TraitMap({});
  }

  @override
  ShapeType get type => ShapeType.document;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.documentShape(this);

  static Serializer<DocumentShape> get serializer => _$documentShapeSerializer;
}

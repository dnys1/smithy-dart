import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_type.dart';
import 'package:smithy_ast/src/shapes/shape_visitor.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';

part 'member_shape.g.dart';

abstract class MemberShape
    implements Shape, Built<MemberShape, MemberShapeBuilder> {
  factory MemberShape([void Function(MemberShapeBuilder) updates]) =
      _$MemberShape;
  MemberShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MemberShapeBuilder b) {
    b
      ..shapeId = ShapeId.empty
      ..memberName = ''
      ..traits = TraitMap({});
  }

  ShapeId get target;
  String get memberName;

  @override
  ShapeType getType() => ShapeType.member;

  @override
  R accept<R>(ShapeVisitor<R> visitor, [Shape? parent]) =>
      visitor.memberShape(this, parent);

  static Serializer<MemberShape> get serializer => _$memberShapeSerializer;
}

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';
import 'package:smithy_ast/src/shape/shape_visitor.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'member_shape.g.dart';

abstract class MemberShape
    implements Shape, Built<MemberShape, MemberShapeBuilder> {
  factory MemberShape([void Function(MemberShapeBuilder) updates]) =
      _$MemberShape;
  MemberShape._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MemberShapeBuilder b) {
    b.shapeId.replace(ShapeId.empty);
  }

  ShapeId get target;
  String get memberName;

  @override
  ShapeType get type => ShapeType.member;

  @override
  R accept<R>(ShapeVisitor<R> visitor) => visitor.memberShape(this);

  static Serializer<MemberShape> get serializer => _$memberShapeSerializer;
}

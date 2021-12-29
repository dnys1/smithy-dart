import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/enum_definition.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'enum_trait.g.dart';

abstract class EnumTrait implements Trait, Built<EnumTrait, EnumTraitBuilder> {
  factory EnumTrait([void Function(EnumTraitBuilder) updates]) = _$EnumTrait;
  EnumTrait._();

  static final id = ShapeId.parse('smithy.api#enum');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnumTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  BuiltList<EnumDefinition> get definitions;

  static Serializer<EnumTrait> get serializer => _$enumTraitSerializer;
}

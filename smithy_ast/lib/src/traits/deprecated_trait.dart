import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'deprecated_trait.g.dart';

abstract class DeprecatedTrait
    implements Trait, Built<DeprecatedTrait, DeprecatedTraitBuilder> {
  factory DeprecatedTrait([void Function(DeprecatedTraitBuilder) updates]) =
      _$DeprecatedTrait;
  DeprecatedTrait._();

  static final ShapeId id = ShapeId.parse('smithy.api#deprecated');

  @override
  ShapeId getShapeId() => id;

  String get since;
  String get message;

  static Serializer<DeprecatedTrait> get serializer =>
      _$deprecatedTraitSerializer;
}

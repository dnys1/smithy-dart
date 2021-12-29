import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'cors_trait.g.dart';

abstract class CorsTrait implements Trait, Built<CorsTrait, CorsTraitBuilder> {
  factory CorsTrait([void Function(CorsTraitBuilder) updates]) = _$CorsTrait;
  CorsTrait._();

  static final id = ShapeId.parse('smithy.api#cors');

  @override
  ShapeId getShapeId() => id;

  String get origin;
  int get maxAge;
  BuiltSet<String> get additionalAllowedHeaders;
  BuiltSet<String> get additionalExposedHeaders;

  static Serializer<CorsTrait> get serializer => _$corsTraitSerializer;
}

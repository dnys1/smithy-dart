import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/annotation_trait.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'event_header_trait.g.dart';

abstract class EventHeaderTrait
    with SimpleTrait, AnnotationTrait
    implements Built<EventHeaderTrait, EventHeaderTraitBuilder> {
  factory EventHeaderTrait([void Function(EventHeaderTraitBuilder) updates]) =
      _$EventHeaderTrait;
  EventHeaderTrait._();

  static final id = ShapeId.parse('smithy.api#eventHeader');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventHeaderTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventHeaderTrait> get serializer =>
      AnnotationTraitSerializer(EventHeaderTrait.new);
}

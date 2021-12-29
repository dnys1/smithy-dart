import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/annotation_trait.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'event_payload_trait.g.dart';

abstract class EventPayloadTrait
    with SimpleTrait, AnnotationTrait
    implements Built<EventPayloadTrait, EventPayloadTraitBuilder> {
  factory EventPayloadTrait([void Function(EventPayloadTraitBuilder) updates]) =
      _$EventPayloadTrait;
  EventPayloadTrait._();

  static final id = ShapeId.parse('smithy.api#eventPayload');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventPayloadTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventPayloadTrait> get serializer =>
      AnnotationTraitSerializer(EventPayloadTrait.new);
}

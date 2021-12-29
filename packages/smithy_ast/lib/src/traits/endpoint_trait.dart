import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'endpoint_trait.g.dart';

abstract class EndpointTrait
    implements Trait, Built<EndpointTrait, EndpointTraitBuilder> {
  factory EndpointTrait([void Function(EndpointTraitBuilder) updates]) =
      _$EndpointTrait;
  EndpointTrait._();

  static final id = ShapeId.parse('smithy.api#endpoint');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  String get hostPrefix;

  static Serializer<EndpointTrait> get serializer => _$endpointTraitSerializer;
}

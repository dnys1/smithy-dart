import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/string_trait.dart';

part 'error_trait.g.dart';

abstract class ErrorTrait
    with StringTrait
    implements Built<ErrorTrait, ErrorTraitBuilder> {
  factory ErrorTrait([void Function(ErrorTraitBuilder) updates]) = _$ErrorTrait;
  ErrorTrait._();

  static final id = ShapeId.parse('smithy.api#error');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorTrait> get serializer =>
      StringTraitSerializer((value) => ErrorTrait((b) => b.value = value));
}

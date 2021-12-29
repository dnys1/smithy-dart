import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/string_trait.dart';

part 'documentation_trait.g.dart';

abstract class DocumentationTrait
    with StringTrait
    implements Built<DocumentationTrait, DocumentationTraitBuilder> {
  factory DocumentationTrait(
          [void Function(DocumentationTraitBuilder) updates]) =
      _$DocumentationTrait;
  DocumentationTrait._();

  static final id = ShapeId.parse('smithy.api#documentation');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentationTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  @BuiltValueSerializer(custom: true)
  static Serializer<DocumentationTrait> get serializer =>
      StringTraitSerializer((s) => DocumentationTrait((b) => b.value = s));
}

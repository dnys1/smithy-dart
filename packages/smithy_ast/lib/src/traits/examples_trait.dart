import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/traits/trait.dart';

part 'examples_trait.g.dart';

abstract class ExamplesTrait
    implements Trait, Built<ExamplesTrait, ExamplesTraitBuilder> {
  factory ExamplesTrait([void Function(ExamplesTraitBuilder) updates]) =
      _$ExamplesTrait;
  ExamplesTrait._();

  static final id = ShapeId.parse('smithy.api#examples');

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExamplesTraitBuilder b) {
    b.isSynthetic = false;
  }

  @override
  ShapeId getShapeId() => id;

  BuiltList<Example> get examples;

  static Serializer<ExamplesTrait> get serializer => _$examplesTraitSerializer;
}

abstract class Example implements Built<Example, ExampleBuilder> {
  factory Example([void Function(ExampleBuilder) updates]) = _$Example;
  Example._();

  String get title;
  String? get documentation;
  String get input;
  String get output;
  ErrorExample? get error;

  static Serializer<Example> get serializer => _$exampleSerializer;
}

abstract class ErrorExample
    implements Built<ErrorExample, ErrorExampleBuilder> {
  factory ErrorExample([void Function(ErrorExampleBuilder) updates]) =
      _$ErrorExample;
  ErrorExample._();

  ShapeId get shapeId;
  String get content;

  static Serializer<ErrorExample> get serializer => _$errorExampleSerializer;
}

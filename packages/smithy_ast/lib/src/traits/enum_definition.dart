import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enum_definition.g.dart';

abstract class EnumDefinition
    implements Built<EnumDefinition, EnumDefinitionBuilder> {
  factory EnumDefinition([void Function(EnumDefinitionBuilder) updates]) =
      _$EnumDefinition;
  EnumDefinition._();

  @BuiltValueHook(finalizeBuilder: true)
  static void _init(EnumDefinitionBuilder b) {
    b.deprecated ??= false;
  }

  String get value;
  String? get documentation;
  BuiltList<String> get tags;
  String? get name;
  bool get deprecated;

  static Serializer<EnumDefinition> get serializer =>
      _$enumDefinitionSerializer;
}

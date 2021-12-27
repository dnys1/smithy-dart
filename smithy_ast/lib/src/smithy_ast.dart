import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';
import 'package:smithy_ast/src/shape/shape_id.dart';
import 'package:collection/collection.dart';
import 'package:smithy_ast/src/shape/shape_type.dart';

import 'serializers.dart';

part 'smithy_ast.g.dart';

class ShapeMap extends DelegatingMap<ShapeId, Shape> {
  const ShapeMap(Map<ShapeId, Shape> shapes) : super(shapes);

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is ShapeMap && const MapEquality().equals(this, other);

  @override
  int get hashCode => const MapEquality().hash(this);
}

abstract class SmithyAst implements Built<SmithyAst, SmithyAstBuilder> {
  factory SmithyAst([void Function(SmithyAstBuilder) updates]) = _$SmithyAst;
  SmithyAst._();

  @BuiltValueField(wireName: 'smithy')
  String get version;
  BuiltMap<String, Object?> get metadata;
  ShapeMap get shapes;

  Map<String, Object?> toJson() {
    return serializers.serializeWith(SmithyAst.serializer, this)
        as Map<String, Object?>;
  }

  static SmithyAst fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(SmithyAst.serializer, json) as SmithyAst;
  }

  static Serializer<SmithyAst> get serializer => _$smithyAstSerializer;
}

class ShapeMapSerializer extends StructuredSerializer<ShapeMap> {
  @override
  ShapeMap deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final shapeMap = ShapeMap({});
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final shapeId = serializers.deserializeWith(
          ShapeId.serializer, iterator.current as String) as ShapeId;
      iterator.moveNext();
      final Object? value = iterator.current;
      shapeMap[shapeId] = serializers
          .deserializeWith(Shape.serializer,
              StandardJsonPlugin().beforeDeserialize(value, FullType(Shape)))!
          .rebuild((b) => b.shapeId.replace(shapeId));
    }
    return shapeMap;
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, ShapeMap object,
      {FullType specifiedType = FullType.unspecified}) sync* {
    for (var entry in object.entries) {
      yield entry.key.absoluteName;
      yield serializers.serializeWith(Shape.serializer, entry.value);
    }
  }

  @override
  Iterable<Type> get types => [ShapeMap];

  @override
  String get wireName => 'ShapeMap';
}

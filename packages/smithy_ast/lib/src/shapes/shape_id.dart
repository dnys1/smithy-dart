import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

const coreNamespace = 'smithy.api';

class ShapeId with AWSEquatable<ShapeId>, AWSSerializable {
  const ShapeId({
    required this.namespace,
    required this.name,
    this.member,
  });

  static const empty = ShapeId(namespace: '', name: '');
  static final serializer = ShapeIdSerializer();

  factory ShapeId.parse(String shapeId) => ShapeId(
        namespace: shapeId.split('#').first,
        name: shapeId.substring(
          shapeId.indexOf('#') + 1,
          shapeId.contains('\$') ? shapeId.indexOf('\$') : shapeId.length,
        ),
        member: shapeId.contains('\$') ? shapeId.split('\$').last : null,
      );

  final String namespace;
  final String name;
  final String? member;

  String get absoluteName =>
      '$namespace#$name' + (member == null ? '' : '\$$member');

  ShapeId replace({
    String? namespace,
    String? name,
    Object? member = const Object(),
  }) {
    return ShapeId(
      namespace: namespace ?? this.namespace,
      name: name ?? this.name,
      member: (member is String ? member : null) ?? this.member,
    );
  }

  @override
  List<Object?> get props => [namespace, name, member];

  @override
  String toJson() => absoluteName;

  @override
  String toString() => absoluteName;

  /// Whether this shape represents a core/built-in shape.
  bool get isCoreShape => namespace == coreNamespace;
}

class ShapeIdConverter implements JsonConverter<ShapeId, String> {
  const ShapeIdConverter();

  @override
  ShapeId fromJson(String json) => ShapeId.parse(json);

  @override
  String toJson(ShapeId object) => object.toJson();
}

class ShapeIdSerializer extends PrimitiveSerializer<ShapeId> {
  @override
  ShapeId deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ShapeId.parse(serialized as String);
  }

  @override
  String serialize(Serializers serializers, ShapeId object,
      {FullType specifiedType = FullType.unspecified}) {
    return object.absoluteName;
  }

  @override
  Iterable<Type> get types => [ShapeId];

  @override
  String get wireName => 'ShapeId';
}

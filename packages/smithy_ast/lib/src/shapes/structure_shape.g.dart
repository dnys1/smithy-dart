// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structure_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StructureShape> _$structureShapeSerializer =
    new _$StructureShapeSerializer();

class _$StructureShapeSerializer
    implements StructuredSerializer<StructureShape> {
  @override
  final Iterable<Type> types = const [StructureShape, _$StructureShape];
  @override
  final String wireName = 'StructureShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, StructureShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
      'members',
      serializers.serialize(object.members,
          specifiedType: const FullType(NamedMembersMap)),
    ];

    return result;
  }

  @override
  StructureShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StructureShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap)) as TraitMap;
          break;
        case 'members':
          result.members = serializers.deserialize(value,
                  specifiedType: const FullType(NamedMembersMap))
              as NamedMembersMap;
          break;
      }
    }

    return result.build();
  }
}

class _$StructureShape extends StructureShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;
  @override
  final NamedMembersMap members;

  factory _$StructureShape([void Function(StructureShapeBuilder)? updates]) =>
      (new StructureShapeBuilder()..update(updates)).build();

  _$StructureShape._(
      {required this.shapeId, required this.traits, required this.members})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'StructureShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'StructureShape', 'traits');
    BuiltValueNullFieldError.checkNotNull(members, 'StructureShape', 'members');
  }

  @override
  StructureShape rebuild(void Function(StructureShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StructureShapeBuilder toBuilder() =>
      new StructureShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructureShape &&
        shapeId == other.shapeId &&
        traits == other.traits &&
        members == other.members;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, shapeId.hashCode), traits.hashCode), members.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StructureShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits)
          ..add('members', members))
        .toString();
  }
}

class StructureShapeBuilder
    implements Builder<StructureShape, StructureShapeBuilder>, ShapeBuilder {
  _$StructureShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  NamedMembersMap? _members;
  NamedMembersMap? get members => _$this._members;
  set members(covariant NamedMembersMap? members) => _$this._members = members;

  StructureShapeBuilder() {
    StructureShape._init(this);
  }

  StructureShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _members = $v.members;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant StructureShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StructureShape;
  }

  @override
  void update(void Function(StructureShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StructureShape build() {
    final _$result = _$v ??
        new _$StructureShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'StructureShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'StructureShape', 'traits'),
            members: BuiltValueNullFieldError.checkNotNull(
                members, 'StructureShape', 'members'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'union_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UnionShape> _$unionShapeSerializer = new _$UnionShapeSerializer();

class _$UnionShapeSerializer implements StructuredSerializer<UnionShape> {
  @override
  final Iterable<Type> types = const [UnionShape, _$UnionShape];
  @override
  final String wireName = 'UnionShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, UnionShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
      'members',
      serializers.serialize(object.members,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(MemberShape)])),
    ];

    return result;
  }

  @override
  UnionShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnionShapeBuilder();

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
          result.members.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(MemberShape)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$UnionShape extends UnionShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;
  @override
  final BuiltMap<String, MemberShape> members;

  factory _$UnionShape([void Function(UnionShapeBuilder)? updates]) =>
      (new UnionShapeBuilder()..update(updates)).build();

  _$UnionShape._(
      {required this.shapeId, required this.traits, required this.members})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'UnionShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'UnionShape', 'traits');
    BuiltValueNullFieldError.checkNotNull(members, 'UnionShape', 'members');
  }

  @override
  UnionShape rebuild(void Function(UnionShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnionShapeBuilder toBuilder() => new UnionShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnionShape &&
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
    return (newBuiltValueToStringHelper('UnionShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits)
          ..add('members', members))
        .toString();
  }
}

class UnionShapeBuilder
    implements Builder<UnionShape, UnionShapeBuilder>, ShapeBuilder {
  _$UnionShape? _$v;

  ShapeIdBuilder? _shapeId;
  ShapeIdBuilder get shapeId => _$this._shapeId ??= new ShapeIdBuilder();
  set shapeId(covariant ShapeIdBuilder? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  MapBuilder<String, MemberShape>? _members;
  MapBuilder<String, MemberShape> get members =>
      _$this._members ??= new MapBuilder<String, MemberShape>();
  set members(covariant MapBuilder<String, MemberShape>? members) =>
      _$this._members = members;

  UnionShapeBuilder() {
    UnionShape._init(this);
  }

  UnionShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId.toBuilder();
      _traits = $v.traits;
      _members = $v.members.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UnionShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnionShape;
  }

  @override
  void update(void Function(UnionShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UnionShape build() {
    _$UnionShape _$result;
    try {
      _$result = _$v ??
          new _$UnionShape._(
              shapeId: shapeId.build(),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, 'UnionShape', 'traits'),
              members: members.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shapeId';
        shapeId.build();

        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UnionShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

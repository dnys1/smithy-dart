// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SetShape> _$setShapeSerializer = new _$SetShapeSerializer();

class _$SetShapeSerializer implements StructuredSerializer<SetShape> {
  @override
  final Iterable<Type> types = const [SetShape, _$SetShape];
  @override
  final String wireName = 'SetShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, SetShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'member',
      serializers.serialize(object.member,
          specifiedType: const FullType(MemberShape)),
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  SetShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SetShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'member':
          result.member.replace(serializers.deserialize(value,
              specifiedType: const FullType(MemberShape))! as MemberShape);
          break;
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap)) as TraitMap;
          break;
      }
    }

    return result.build();
  }
}

class _$SetShape extends SetShape {
  @override
  final MemberShape member;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$SetShape([void Function(SetShapeBuilder)? updates]) =>
      (new SetShapeBuilder()..update(updates)).build();

  _$SetShape._(
      {required this.member, required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(member, 'SetShape', 'member');
    BuiltValueNullFieldError.checkNotNull(shapeId, 'SetShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'SetShape', 'traits');
  }

  @override
  SetShape rebuild(void Function(SetShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetShapeBuilder toBuilder() => new SetShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetShape &&
        member == other.member &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, member.hashCode), shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetShape')
          ..add('member', member)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class SetShapeBuilder
    implements Builder<SetShape, SetShapeBuilder>, CollectionShapeBuilder {
  _$SetShape? _$v;

  MemberShapeBuilder? _member;
  MemberShapeBuilder get member => _$this._member ??= new MemberShapeBuilder();
  set member(covariant MemberShapeBuilder? member) => _$this._member = member;

  ShapeIdBuilder? _shapeId;
  ShapeIdBuilder get shapeId => _$this._shapeId ??= new ShapeIdBuilder();
  set shapeId(covariant ShapeIdBuilder? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  SetShapeBuilder() {
    SetShape._init(this);
  }

  SetShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _member = $v.member.toBuilder();
      _shapeId = $v.shapeId.toBuilder();
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SetShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetShape;
  }

  @override
  void update(void Function(SetShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetShape build() {
    _$SetShape _$result;
    try {
      _$result = _$v ??
          new _$SetShape._(
              member: member.build(),
              shapeId: shapeId.build(),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, 'SetShape', 'traits'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'member';
        member.build();
        _$failedField = 'shapeId';
        shapeId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SetShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

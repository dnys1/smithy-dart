// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListShape> _$listShapeSerializer = new _$ListShapeSerializer();

class _$ListShapeSerializer implements StructuredSerializer<ListShape> {
  @override
  final Iterable<Type> types = const [ListShape, _$ListShape];
  @override
  final String wireName = 'ListShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
      'member',
      serializers.serialize(object.member,
          specifiedType: const FullType(MemberShape)),
    ];

    return result;
  }

  @override
  ListShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListShapeBuilder();

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
        case 'member':
          result.member.replace(serializers.deserialize(value,
              specifiedType: const FullType(MemberShape))! as MemberShape);
          break;
      }
    }

    return result.build();
  }
}

class _$ListShape extends ListShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;
  @override
  final MemberShape member;

  factory _$ListShape([void Function(ListShapeBuilder)? updates]) =>
      (new ListShapeBuilder()..update(updates)).build();

  _$ListShape._(
      {required this.shapeId, required this.traits, required this.member})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'ListShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'ListShape', 'traits');
    BuiltValueNullFieldError.checkNotNull(member, 'ListShape', 'member');
  }

  @override
  ListShape rebuild(void Function(ListShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListShapeBuilder toBuilder() => new ListShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListShape &&
        shapeId == other.shapeId &&
        traits == other.traits &&
        member == other.member;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, shapeId.hashCode), traits.hashCode), member.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits)
          ..add('member', member))
        .toString();
  }
}

class ListShapeBuilder
    implements Builder<ListShape, ListShapeBuilder>, ShapeBuilder {
  _$ListShape? _$v;

  ShapeIdBuilder? _shapeId;
  ShapeIdBuilder get shapeId => _$this._shapeId ??= new ShapeIdBuilder();
  set shapeId(covariant ShapeIdBuilder? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  MemberShapeBuilder? _member;
  MemberShapeBuilder get member => _$this._member ??= new MemberShapeBuilder();
  set member(covariant MemberShapeBuilder? member) => _$this._member = member;

  ListShapeBuilder() {
    ListShape._init(this);
  }

  ListShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId.toBuilder();
      _traits = $v.traits;
      _member = $v.member.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ListShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListShape;
  }

  @override
  void update(void Function(ListShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListShape build() {
    _$ListShape _$result;
    try {
      _$result = _$v ??
          new _$ListShape._(
              shapeId: shapeId.build(),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, 'ListShape', 'traits'),
              member: member.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shapeId';
        shapeId.build();

        _$failedField = 'member';
        member.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ListShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

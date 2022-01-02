// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UnitShape> _$unitShapeSerializer = new _$UnitShapeSerializer();

class _$UnitShapeSerializer implements StructuredSerializer<UnitShape> {
  @override
  final Iterable<Type> types = const [UnitShape, _$UnitShape];
  @override
  final String wireName = 'UnitShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, UnitShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  UnitShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnitShapeBuilder();

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
      }
    }

    return result.build();
  }
}

class _$UnitShape extends UnitShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$UnitShape([void Function(UnitShapeBuilder)? updates]) =>
      (new UnitShapeBuilder()..update(updates)).build();

  _$UnitShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'UnitShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'UnitShape', 'traits');
  }

  @override
  UnitShape rebuild(void Function(UnitShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnitShapeBuilder toBuilder() => new UnitShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnitShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UnitShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class UnitShapeBuilder
    implements Builder<UnitShape, UnitShapeBuilder>, SimpleShapeBuilder {
  _$UnitShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  UnitShapeBuilder() {
    UnitShape._init(this);
  }

  UnitShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UnitShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnitShape;
  }

  @override
  void update(void Function(UnitShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UnitShape build() {
    final _$result = _$v ??
        new _$UnitShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'UnitShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'UnitShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

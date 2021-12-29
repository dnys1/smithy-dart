// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BooleanShape> _$booleanShapeSerializer =
    new _$BooleanShapeSerializer();

class _$BooleanShapeSerializer implements StructuredSerializer<BooleanShape> {
  @override
  final Iterable<Type> types = const [BooleanShape, _$BooleanShape];
  @override
  final String wireName = 'BooleanShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, BooleanShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  BooleanShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooleanShapeBuilder();

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

class _$BooleanShape extends BooleanShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$BooleanShape([void Function(BooleanShapeBuilder)? updates]) =>
      (new BooleanShapeBuilder()..update(updates)).build();

  _$BooleanShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'BooleanShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'BooleanShape', 'traits');
  }

  @override
  BooleanShape rebuild(void Function(BooleanShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooleanShapeBuilder toBuilder() => new BooleanShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooleanShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BooleanShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class BooleanShapeBuilder
    implements Builder<BooleanShape, BooleanShapeBuilder>, ShapeBuilder {
  _$BooleanShape? _$v;

  ShapeIdBuilder? _shapeId;
  ShapeIdBuilder get shapeId => _$this._shapeId ??= new ShapeIdBuilder();
  set shapeId(covariant ShapeIdBuilder? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  BooleanShapeBuilder() {
    BooleanShape._init(this);
  }

  BooleanShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId.toBuilder();
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BooleanShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BooleanShape;
  }

  @override
  void update(void Function(BooleanShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BooleanShape build() {
    _$BooleanShape _$result;
    try {
      _$result = _$v ??
          new _$BooleanShape._(
              shapeId: shapeId.build(),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, 'BooleanShape', 'traits'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shapeId';
        shapeId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BooleanShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

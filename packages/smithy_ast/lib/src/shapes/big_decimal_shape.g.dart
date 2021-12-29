// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'big_decimal_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BigDecimalShape> _$bigDecimalShapeSerializer =
    new _$BigDecimalShapeSerializer();

class _$BigDecimalShapeSerializer
    implements StructuredSerializer<BigDecimalShape> {
  @override
  final Iterable<Type> types = const [BigDecimalShape, _$BigDecimalShape];
  @override
  final String wireName = 'BigDecimalShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, BigDecimalShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  BigDecimalShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BigDecimalShapeBuilder();

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

class _$BigDecimalShape extends BigDecimalShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$BigDecimalShape([void Function(BigDecimalShapeBuilder)? updates]) =>
      (new BigDecimalShapeBuilder()..update(updates)).build();

  _$BigDecimalShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, 'BigDecimalShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'BigDecimalShape', 'traits');
  }

  @override
  BigDecimalShape rebuild(void Function(BigDecimalShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BigDecimalShapeBuilder toBuilder() =>
      new BigDecimalShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BigDecimalShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BigDecimalShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class BigDecimalShapeBuilder
    implements Builder<BigDecimalShape, BigDecimalShapeBuilder>, ShapeBuilder {
  _$BigDecimalShape? _$v;

  ShapeIdBuilder? _shapeId;
  ShapeIdBuilder get shapeId => _$this._shapeId ??= new ShapeIdBuilder();
  set shapeId(covariant ShapeIdBuilder? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  BigDecimalShapeBuilder() {
    BigDecimalShape._init(this);
  }

  BigDecimalShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId.toBuilder();
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BigDecimalShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BigDecimalShape;
  }

  @override
  void update(void Function(BigDecimalShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BigDecimalShape build() {
    _$BigDecimalShape _$result;
    try {
      _$result = _$v ??
          new _$BigDecimalShape._(
              shapeId: shapeId.build(),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, 'BigDecimalShape', 'traits'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shapeId';
        shapeId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BigDecimalShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

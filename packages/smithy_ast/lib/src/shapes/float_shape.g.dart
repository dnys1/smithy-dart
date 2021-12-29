// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'float_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FloatShape> _$floatShapeSerializer = new _$FloatShapeSerializer();

class _$FloatShapeSerializer implements StructuredSerializer<FloatShape> {
  @override
  final Iterable<Type> types = const [FloatShape, _$FloatShape];
  @override
  final String wireName = 'FloatShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, FloatShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  FloatShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FloatShapeBuilder();

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

class _$FloatShape extends FloatShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$FloatShape([void Function(FloatShapeBuilder)? updates]) =>
      (new FloatShapeBuilder()..update(updates)).build();

  _$FloatShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'FloatShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'FloatShape', 'traits');
  }

  @override
  FloatShape rebuild(void Function(FloatShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FloatShapeBuilder toBuilder() => new FloatShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FloatShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FloatShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class FloatShapeBuilder
    implements Builder<FloatShape, FloatShapeBuilder>, ShapeBuilder {
  _$FloatShape? _$v;

  ShapeIdBuilder? _shapeId;
  ShapeIdBuilder get shapeId => _$this._shapeId ??= new ShapeIdBuilder();
  set shapeId(covariant ShapeIdBuilder? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  FloatShapeBuilder() {
    FloatShape._init(this);
  }

  FloatShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId.toBuilder();
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant FloatShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FloatShape;
  }

  @override
  void update(void Function(FloatShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FloatShape build() {
    _$FloatShape _$result;
    try {
      _$result = _$v ??
          new _$FloatShape._(
              shapeId: shapeId.build(),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, 'FloatShape', 'traits'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shapeId';
        shapeId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FloatShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

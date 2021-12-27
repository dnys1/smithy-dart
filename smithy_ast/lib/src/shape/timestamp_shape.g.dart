// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimestampShape> _$timestampShapeSerializer =
    new _$TimestampShapeSerializer();

class _$TimestampShapeSerializer
    implements StructuredSerializer<TimestampShape> {
  @override
  final Iterable<Type> types = const [TimestampShape, _$TimestampShape];
  @override
  final String wireName = 'TimestampShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, TimestampShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  TimestampShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimestampShapeBuilder();

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

class _$TimestampShape extends TimestampShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$TimestampShape([void Function(TimestampShapeBuilder)? updates]) =>
      (new TimestampShapeBuilder()..update(updates)).build();

  _$TimestampShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'TimestampShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'TimestampShape', 'traits');
  }

  @override
  TimestampShape rebuild(void Function(TimestampShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimestampShapeBuilder toBuilder() =>
      new TimestampShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimestampShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimestampShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class TimestampShapeBuilder
    implements Builder<TimestampShape, TimestampShapeBuilder>, ShapeBuilder {
  _$TimestampShape? _$v;

  ShapeIdBuilder? _shapeId;
  ShapeIdBuilder get shapeId => _$this._shapeId ??= new ShapeIdBuilder();
  set shapeId(covariant ShapeIdBuilder? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  TimestampShapeBuilder() {
    TimestampShape._init(this);
  }

  TimestampShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId.toBuilder();
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TimestampShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimestampShape;
  }

  @override
  void update(void Function(TimestampShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimestampShape build() {
    _$TimestampShape _$result;
    try {
      _$result = _$v ??
          new _$TimestampShape._(
              shapeId: shapeId.build(),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, 'TimestampShape', 'traits'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shapeId';
        shapeId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TimestampShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

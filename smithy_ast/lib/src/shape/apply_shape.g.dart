// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplyShape> _$applyShapeSerializer = new _$ApplyShapeSerializer();

class _$ApplyShapeSerializer implements StructuredSerializer<ApplyShape> {
  @override
  final Iterable<Type> types = const [ApplyShape, _$ApplyShape];
  @override
  final String wireName = 'ApplyShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApplyShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'shapeId',
      serializers.serialize(object.shapeId,
          specifiedType: const FullType(ShapeId)),
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(Trait)])),
    ];

    return result;
  }

  @override
  ApplyShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplyShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'shapeId':
          result.shapeId.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeId))! as ShapeId);
          break;
        case 'traits':
          result.traits.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(Trait)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$ApplyShape extends ApplyShape {
  @override
  final ShapeId shapeId;
  @override
  final BuiltMap<String, Trait> traits;

  factory _$ApplyShape([void Function(ApplyShapeBuilder)? updates]) =>
      (new ApplyShapeBuilder()..update(updates)).build();

  _$ApplyShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'ApplyShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'ApplyShape', 'traits');
  }

  @override
  ApplyShape rebuild(void Function(ApplyShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplyShapeBuilder toBuilder() => new ApplyShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplyShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApplyShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class ApplyShapeBuilder implements Builder<ApplyShape, ApplyShapeBuilder> {
  _$ApplyShape? _$v;

  ShapeIdBuilder? _shapeId;
  ShapeIdBuilder get shapeId => _$this._shapeId ??= new ShapeIdBuilder();
  set shapeId(ShapeIdBuilder? shapeId) => _$this._shapeId = shapeId;

  MapBuilder<String, Trait>? _traits;
  MapBuilder<String, Trait> get traits =>
      _$this._traits ??= new MapBuilder<String, Trait>();
  set traits(MapBuilder<String, Trait>? traits) => _$this._traits = traits;

  ApplyShapeBuilder() {
    ApplyShape._init(this);
  }

  ApplyShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId.toBuilder();
      _traits = $v.traits.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplyShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplyShape;
  }

  @override
  void update(void Function(ApplyShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApplyShape build() {
    _$ApplyShape _$result;
    try {
      _$result = _$v ??
          new _$ApplyShape._(shapeId: shapeId.build(), traits: traits.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shapeId';
        shapeId.build();
        _$failedField = 'traits';
        traits.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApplyShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

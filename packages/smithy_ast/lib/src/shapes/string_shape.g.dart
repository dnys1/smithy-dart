// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StringShape> _$stringShapeSerializer = new _$StringShapeSerializer();

class _$StringShapeSerializer implements StructuredSerializer<StringShape> {
  @override
  final Iterable<Type> types = const [StringShape, _$StringShape];
  @override
  final String wireName = 'StringShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, StringShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  StringShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StringShapeBuilder();

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

class _$StringShape extends StringShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$StringShape([void Function(StringShapeBuilder)? updates]) =>
      (new StringShapeBuilder()..update(updates)).build();

  _$StringShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'StringShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'StringShape', 'traits');
  }

  @override
  StringShape rebuild(void Function(StringShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StringShapeBuilder toBuilder() => new StringShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StringShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class StringShapeBuilder
    implements Builder<StringShape, StringShapeBuilder>, ShapeBuilder {
  _$StringShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  StringShapeBuilder() {
    StringShape._init(this);
  }

  StringShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant StringShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StringShape;
  }

  @override
  void update(void Function(StringShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StringShape build() {
    final _$result = _$v ??
        new _$StringShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'StringShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'StringShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

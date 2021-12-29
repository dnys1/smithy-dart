// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthTrait> _$authTraitSerializer = new _$AuthTraitSerializer();

class _$AuthTraitSerializer implements StructuredSerializer<AuthTrait> {
  @override
  final Iterable<Type> types = const [AuthTrait, _$AuthTrait];
  @override
  final String wireName = 'AuthTrait';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthTrait object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'values',
      serializers.serialize(object.values,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ShapeId)])),
      'isSynthetic',
      serializers.serialize(object.isSynthetic,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  AuthTrait deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthTraitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'values':
          result.values.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(ShapeId)]))!
              as BuiltSet<Object?>);
          break;
        case 'isSynthetic':
          result.isSynthetic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthTrait extends AuthTrait {
  @override
  final BuiltSet<ShapeId> values;
  @override
  final bool isSynthetic;

  factory _$AuthTrait([void Function(AuthTraitBuilder)? updates]) =>
      (new AuthTraitBuilder()..update(updates)).build();

  _$AuthTrait._({required this.values, required this.isSynthetic}) : super._() {
    BuiltValueNullFieldError.checkNotNull(values, 'AuthTrait', 'values');
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'AuthTrait', 'isSynthetic');
  }

  @override
  AuthTrait rebuild(void Function(AuthTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthTraitBuilder toBuilder() => new AuthTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthTrait &&
        values == other.values &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, values.hashCode), isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthTrait')
          ..add('values', values)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class AuthTraitBuilder
    implements Builder<AuthTrait, AuthTraitBuilder>, TraitBuilder {
  _$AuthTrait? _$v;

  SetBuilder<ShapeId>? _values;
  SetBuilder<ShapeId> get values =>
      _$this._values ??= new SetBuilder<ShapeId>();
  set values(covariant SetBuilder<ShapeId>? values) => _$this._values = values;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(covariant bool? isSynthetic) =>
      _$this._isSynthetic = isSynthetic;

  AuthTraitBuilder() {
    AuthTrait._init(this);
  }

  AuthTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _values = $v.values.toBuilder();
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AuthTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthTrait;
  }

  @override
  void update(void Function(AuthTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthTrait build() {
    _$AuthTrait _$result;
    try {
      _$result = _$v ??
          new _$AuthTrait._(
              values: values.build(),
              isSynthetic: BuiltValueNullFieldError.checkNotNull(
                  isSynthetic, 'AuthTrait', 'isSynthetic'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthTrait', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

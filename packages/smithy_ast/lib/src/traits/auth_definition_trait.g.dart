// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_definition_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthDefinitionTrait extends AuthDefinitionTrait {
  @override
  final BuiltList<Trait> traits;
  @override
  final bool isSynthetic;

  factory _$AuthDefinitionTrait(
          [void Function(AuthDefinitionTraitBuilder)? updates]) =>
      (new AuthDefinitionTraitBuilder()..update(updates)).build();

  _$AuthDefinitionTrait._({required this.traits, required this.isSynthetic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        traits, 'AuthDefinitionTrait', 'traits');
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'AuthDefinitionTrait', 'isSynthetic');
  }

  @override
  AuthDefinitionTrait rebuild(
          void Function(AuthDefinitionTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthDefinitionTraitBuilder toBuilder() =>
      new AuthDefinitionTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthDefinitionTrait &&
        traits == other.traits &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, traits.hashCode), isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthDefinitionTrait')
          ..add('traits', traits)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class AuthDefinitionTraitBuilder
    implements Builder<AuthDefinitionTrait, AuthDefinitionTraitBuilder> {
  _$AuthDefinitionTrait? _$v;

  ListBuilder<Trait>? _traits;
  ListBuilder<Trait> get traits => _$this._traits ??= new ListBuilder<Trait>();
  set traits(ListBuilder<Trait>? traits) => _$this._traits = traits;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(bool? isSynthetic) => _$this._isSynthetic = isSynthetic;

  AuthDefinitionTraitBuilder() {
    AuthDefinitionTrait._init(this);
  }

  AuthDefinitionTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _traits = $v.traits.toBuilder();
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthDefinitionTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthDefinitionTrait;
  }

  @override
  void update(void Function(AuthDefinitionTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthDefinitionTrait build() {
    _$AuthDefinitionTrait _$result;
    try {
      _$result = _$v ??
          new _$AuthDefinitionTrait._(
              traits: traits.build(),
              isSynthetic: BuiltValueNullFieldError.checkNotNull(
                  isSynthetic, 'AuthDefinitionTrait', 'isSynthetic'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'traits';
        traits.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthDefinitionTrait', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

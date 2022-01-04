// GENERATED CODE - DO NOT MODIFY BY HAND

part of sparse_enum_collection.test.model.get_foo_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFooInput extends GetFooInput {
  @override
  final _i2.BuiltMap<String, _i3.MyEnum?>? enumMap;

  factory _$GetFooInput([void Function(GetFooInputBuilder)? updates]) =>
      (new GetFooInputBuilder()..update(updates)).build();

  _$GetFooInput._({this.enumMap}) : super._();

  @override
  GetFooInput rebuild(void Function(GetFooInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFooInputBuilder toBuilder() => new GetFooInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFooInput && enumMap == other.enumMap;
  }

  @override
  int get hashCode {
    return $jf($jc(0, enumMap.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFooInput')..add('enumMap', enumMap))
        .toString();
  }
}

class GetFooInputBuilder implements Builder<GetFooInput, GetFooInputBuilder> {
  _$GetFooInput? _$v;

  _i2.MapBuilder<String, _i3.MyEnum?>? _enumMap;
  _i2.MapBuilder<String, _i3.MyEnum?> get enumMap =>
      _$this._enumMap ??= new _i2.MapBuilder<String, _i3.MyEnum?>();
  set enumMap(_i2.MapBuilder<String, _i3.MyEnum?>? enumMap) =>
      _$this._enumMap = enumMap;

  GetFooInputBuilder();

  GetFooInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enumMap = $v.enumMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFooInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFooInput;
  }

  @override
  void update(void Function(GetFooInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFooInput build() {
    _$GetFooInput _$result;
    try {
      _$result = _$v ?? new _$GetFooInput._(enumMap: _enumMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enumMap';
        _enumMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetFooInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

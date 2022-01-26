// GENERATED CODE - DO NOT MODIFY BY HAND

part of http_binding_map_model.test.model.map_input_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MapInputError extends MapInputError {
  factory _$MapInputError([void Function(MapInputErrorBuilder)? updates]) =>
      (new MapInputErrorBuilder()..update(updates)).build();

  _$MapInputError._() : super._();

  @override
  MapInputError rebuild(void Function(MapInputErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapInputErrorBuilder toBuilder() => new MapInputErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapInputError;
  }

  @override
  int get hashCode {
    return 516218726;
  }
}

class MapInputErrorBuilder
    implements Builder<MapInputError, MapInputErrorBuilder> {
  _$MapInputError? _$v;

  MapInputErrorBuilder() {
    MapInputError._init(this);
  }

  @override
  void replace(MapInputError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapInputError;
  }

  @override
  void update(void Function(MapInputErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MapInputError build() {
    final _$result = _$v ?? new _$MapInputError._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

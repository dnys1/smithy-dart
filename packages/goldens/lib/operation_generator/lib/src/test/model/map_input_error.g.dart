// GENERATED CODE - DO NOT MODIFY BY HAND

part of operation_generator.test.model.map_input_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MapInputError extends MapInputError {
  @override
  final Map<String, String>? headers;

  factory _$MapInputError([void Function(MapInputErrorBuilder)? updates]) =>
      (new MapInputErrorBuilder()..update(updates)).build();

  _$MapInputError._({this.headers}) : super._();

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

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MapInputErrorBuilder() {
    MapInputError._init(this);
  }

  MapInputErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headers = $v.headers;
      _$v = null;
    }
    return this;
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
    final _$result = _$v ?? new _$MapInputError._(headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

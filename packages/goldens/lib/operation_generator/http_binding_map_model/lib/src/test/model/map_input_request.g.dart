// GENERATED CODE - DO NOT MODIFY BY HAND

part of http_binding_map_model.test.model.map_input_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MapInputRequest extends MapInputRequest {
  @override
  final _i3.BuiltListMultimap<String, int>? mapOfLists;

  factory _$MapInputRequest([void Function(MapInputRequestBuilder)? updates]) =>
      (new MapInputRequestBuilder()..update(updates)).build();

  _$MapInputRequest._({this.mapOfLists}) : super._();

  @override
  MapInputRequest rebuild(void Function(MapInputRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapInputRequestBuilder toBuilder() =>
      new MapInputRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapInputRequest && mapOfLists == other.mapOfLists;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mapOfLists.hashCode));
  }
}

class MapInputRequestBuilder
    implements Builder<MapInputRequest, MapInputRequestBuilder> {
  _$MapInputRequest? _$v;

  _i3.ListMultimapBuilder<String, int>? _mapOfLists;
  _i3.ListMultimapBuilder<String, int> get mapOfLists =>
      _$this._mapOfLists ??= new _i3.ListMultimapBuilder<String, int>();
  set mapOfLists(_i3.ListMultimapBuilder<String, int>? mapOfLists) =>
      _$this._mapOfLists = mapOfLists;

  MapInputRequestBuilder() {
    MapInputRequest._init(this);
  }

  MapInputRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mapOfLists = $v.mapOfLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapInputRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapInputRequest;
  }

  @override
  void update(void Function(MapInputRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MapInputRequest build() {
    _$MapInputRequest _$result;
    try {
      _$result =
          _$v ?? new _$MapInputRequest._(mapOfLists: _mapOfLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapOfLists';
        _mapOfLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MapInputRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

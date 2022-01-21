// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.malformed_request_body_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedRequestBodyInput extends MalformedRequestBodyInput {
  @override
  final double? float;
  @override
  final int? int$;

  factory _$MalformedRequestBodyInput(
          [void Function(MalformedRequestBodyInputBuilder)? updates]) =>
      (new MalformedRequestBodyInputBuilder()..update(updates)).build();

  _$MalformedRequestBodyInput._({this.float, this.int$}) : super._();

  @override
  MalformedRequestBodyInput rebuild(
          void Function(MalformedRequestBodyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedRequestBodyInputBuilder toBuilder() =>
      new MalformedRequestBodyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedRequestBodyInput &&
        float == other.float &&
        int$ == other.int$;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, float.hashCode), int$.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MalformedRequestBodyInput')
          ..add('float', float)
          ..add('int\$', int$))
        .toString();
  }
}

class MalformedRequestBodyInputBuilder
    implements
        Builder<MalformedRequestBodyInput, MalformedRequestBodyInputBuilder> {
  _$MalformedRequestBodyInput? _$v;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  int? _int$;
  int? get int$ => _$this._int$;
  set int$(int? int$) => _$this._int$ = int$;

  MalformedRequestBodyInputBuilder() {
    MalformedRequestBodyInput._init(this);
  }

  MalformedRequestBodyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _float = $v.float;
      _int$ = $v.int$;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedRequestBodyInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedRequestBodyInput;
  }

  @override
  void update(void Function(MalformedRequestBodyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MalformedRequestBodyInput build() {
    final _$result =
        _$v ?? new _$MalformedRequestBodyInput._(float: float, int$: int$);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedRequestBodyInputPayload
    extends MalformedRequestBodyInputPayload {
  @override
  final double? float;
  @override
  final int? int$;

  factory _$MalformedRequestBodyInputPayload(
          [void Function(MalformedRequestBodyInputPayloadBuilder)? updates]) =>
      (new MalformedRequestBodyInputPayloadBuilder()..update(updates)).build();

  _$MalformedRequestBodyInputPayload._({this.float, this.int$}) : super._();

  @override
  MalformedRequestBodyInputPayload rebuild(
          void Function(MalformedRequestBodyInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedRequestBodyInputPayloadBuilder toBuilder() =>
      new MalformedRequestBodyInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedRequestBodyInputPayload &&
        float == other.float &&
        int$ == other.int$;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, float.hashCode), int$.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MalformedRequestBodyInputPayload')
          ..add('float', float)
          ..add('int\$', int$))
        .toString();
  }
}

class MalformedRequestBodyInputPayloadBuilder
    implements
        Builder<MalformedRequestBodyInputPayload,
            MalformedRequestBodyInputPayloadBuilder> {
  _$MalformedRequestBodyInputPayload? _$v;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  int? _int$;
  int? get int$ => _$this._int$;
  set int$(int? int$) => _$this._int$ = int$;

  MalformedRequestBodyInputPayloadBuilder() {
    MalformedRequestBodyInputPayload._init(this);
  }

  MalformedRequestBodyInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _float = $v.float;
      _int$ = $v.int$;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedRequestBodyInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedRequestBodyInputPayload;
  }

  @override
  void update(void Function(MalformedRequestBodyInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MalformedRequestBodyInputPayload build() {
    final _$result = _$v ??
        new _$MalformedRequestBodyInputPayload._(float: float, int$: int$);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

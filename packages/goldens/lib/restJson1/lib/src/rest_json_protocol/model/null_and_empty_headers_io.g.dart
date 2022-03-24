// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.null_and_empty_headers_io;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NullAndEmptyHeadersIo extends NullAndEmptyHeadersIo {
  @override
  final String? a;
  @override
  final String? b;
  @override
  final _i3.BuiltList<String>? c;

  factory _$NullAndEmptyHeadersIo(
          [void Function(NullAndEmptyHeadersIoBuilder)? updates]) =>
      (new NullAndEmptyHeadersIoBuilder()..update(updates)).build();

  _$NullAndEmptyHeadersIo._({this.a, this.b, this.c}) : super._();

  @override
  NullAndEmptyHeadersIo rebuild(
          void Function(NullAndEmptyHeadersIoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NullAndEmptyHeadersIoBuilder toBuilder() =>
      new NullAndEmptyHeadersIoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NullAndEmptyHeadersIo &&
        a == other.a &&
        b == other.b &&
        c == other.c;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, a.hashCode), b.hashCode), c.hashCode));
  }
}

class NullAndEmptyHeadersIoBuilder
    implements Builder<NullAndEmptyHeadersIo, NullAndEmptyHeadersIoBuilder> {
  _$NullAndEmptyHeadersIo? _$v;

  String? _a;
  String? get a => _$this._a;
  set a(String? a) => _$this._a = a;

  String? _b;
  String? get b => _$this._b;
  set b(String? b) => _$this._b = b;

  _i3.ListBuilder<String>? _c;
  _i3.ListBuilder<String> get c => _$this._c ??= new _i3.ListBuilder<String>();
  set c(_i3.ListBuilder<String>? c) => _$this._c = c;

  NullAndEmptyHeadersIoBuilder();

  NullAndEmptyHeadersIoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _a = $v.a;
      _b = $v.b;
      _c = $v.c?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NullAndEmptyHeadersIo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NullAndEmptyHeadersIo;
  }

  @override
  void update(void Function(NullAndEmptyHeadersIoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NullAndEmptyHeadersIo build() {
    _$NullAndEmptyHeadersIo _$result;
    try {
      _$result =
          _$v ?? new _$NullAndEmptyHeadersIo._(a: a, b: b, c: _c?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'c';
        _c?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NullAndEmptyHeadersIo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NullAndEmptyHeadersIoPayload extends NullAndEmptyHeadersIoPayload {
  factory _$NullAndEmptyHeadersIoPayload(
          [void Function(NullAndEmptyHeadersIoPayloadBuilder)? updates]) =>
      (new NullAndEmptyHeadersIoPayloadBuilder()..update(updates)).build();

  _$NullAndEmptyHeadersIoPayload._() : super._();

  @override
  NullAndEmptyHeadersIoPayload rebuild(
          void Function(NullAndEmptyHeadersIoPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NullAndEmptyHeadersIoPayloadBuilder toBuilder() =>
      new NullAndEmptyHeadersIoPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NullAndEmptyHeadersIoPayload;
  }

  @override
  int get hashCode {
    return 470783522;
  }
}

class NullAndEmptyHeadersIoPayloadBuilder
    implements
        Builder<NullAndEmptyHeadersIoPayload,
            NullAndEmptyHeadersIoPayloadBuilder> {
  _$NullAndEmptyHeadersIoPayload? _$v;

  NullAndEmptyHeadersIoPayloadBuilder() {
    NullAndEmptyHeadersIoPayload._init(this);
  }

  @override
  void replace(NullAndEmptyHeadersIoPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NullAndEmptyHeadersIoPayload;
  }

  @override
  void update(void Function(NullAndEmptyHeadersIoPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NullAndEmptyHeadersIoPayload build() {
    final _$result = _$v ?? new _$NullAndEmptyHeadersIoPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.recursive_shapes_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveShapesInputOutput extends RecursiveShapesInputOutput {
  @override
  final _i2.RecursiveShapesInputOutputNested1? nested;

  factory _$RecursiveShapesInputOutput(
          [void Function(RecursiveShapesInputOutputBuilder)? updates]) =>
      (new RecursiveShapesInputOutputBuilder()..update(updates)).build();

  _$RecursiveShapesInputOutput._({this.nested}) : super._();

  @override
  RecursiveShapesInputOutput rebuild(
          void Function(RecursiveShapesInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecursiveShapesInputOutputBuilder toBuilder() =>
      new RecursiveShapesInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveShapesInputOutput && nested == other.nested;
  }

  @override
  int get hashCode {
    return $jf($jc(0, nested.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecursiveShapesInputOutput')
          ..add('nested', nested))
        .toString();
  }
}

class RecursiveShapesInputOutputBuilder
    implements
        Builder<RecursiveShapesInputOutput, RecursiveShapesInputOutputBuilder> {
  _$RecursiveShapesInputOutput? _$v;

  _i2.RecursiveShapesInputOutputNested1Builder? _nested;
  _i2.RecursiveShapesInputOutputNested1Builder get nested =>
      _$this._nested ??= new _i2.RecursiveShapesInputOutputNested1Builder();
  set nested(_i2.RecursiveShapesInputOutputNested1Builder? nested) =>
      _$this._nested = nested;

  RecursiveShapesInputOutputBuilder() {
    RecursiveShapesInputOutput._init(this);
  }

  RecursiveShapesInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveShapesInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecursiveShapesInputOutput;
  }

  @override
  void update(void Function(RecursiveShapesInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RecursiveShapesInputOutput build() {
    _$RecursiveShapesInputOutput _$result;
    try {
      _$result =
          _$v ?? new _$RecursiveShapesInputOutput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RecursiveShapesInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RecursiveShapesInputOutputPayload
    extends RecursiveShapesInputOutputPayload {
  @override
  final _i2.RecursiveShapesInputOutputNested1? nested;

  factory _$RecursiveShapesInputOutputPayload(
          [void Function(RecursiveShapesInputOutputPayloadBuilder)? updates]) =>
      (new RecursiveShapesInputOutputPayloadBuilder()..update(updates)).build();

  _$RecursiveShapesInputOutputPayload._({this.nested}) : super._();

  @override
  RecursiveShapesInputOutputPayload rebuild(
          void Function(RecursiveShapesInputOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecursiveShapesInputOutputPayloadBuilder toBuilder() =>
      new RecursiveShapesInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveShapesInputOutputPayload && nested == other.nested;
  }

  @override
  int get hashCode {
    return $jf($jc(0, nested.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecursiveShapesInputOutputPayload')
          ..add('nested', nested))
        .toString();
  }
}

class RecursiveShapesInputOutputPayloadBuilder
    implements
        Builder<RecursiveShapesInputOutputPayload,
            RecursiveShapesInputOutputPayloadBuilder> {
  _$RecursiveShapesInputOutputPayload? _$v;

  _i2.RecursiveShapesInputOutputNested1? _nested;
  _i2.RecursiveShapesInputOutputNested1? get nested => _$this._nested;
  set nested(_i2.RecursiveShapesInputOutputNested1? nested) =>
      _$this._nested = nested;

  RecursiveShapesInputOutputPayloadBuilder() {
    RecursiveShapesInputOutputPayload._init(this);
  }

  RecursiveShapesInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveShapesInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecursiveShapesInputOutputPayload;
  }

  @override
  void update(
      void Function(RecursiveShapesInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RecursiveShapesInputOutputPayload build() {
    final _$result =
        _$v ?? new _$RecursiveShapesInputOutputPayload._(nested: nested);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

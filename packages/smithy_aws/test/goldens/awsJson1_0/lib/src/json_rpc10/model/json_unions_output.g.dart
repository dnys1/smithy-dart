// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0.json_rpc10.model.json_unions_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonUnionsOutput extends JsonUnionsOutput {
  @override
  final _i2.MyUnion? contents;

  factory _$JsonUnionsOutput(
          [void Function(JsonUnionsOutputBuilder)? updates]) =>
      (new JsonUnionsOutputBuilder()..update(updates)).build();

  _$JsonUnionsOutput._({this.contents}) : super._();

  @override
  JsonUnionsOutput rebuild(void Function(JsonUnionsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonUnionsOutputBuilder toBuilder() =>
      new JsonUnionsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonUnionsOutput && contents == other.contents;
  }

  @override
  int get hashCode {
    return $jf($jc(0, contents.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JsonUnionsOutput')
          ..add('contents', contents))
        .toString();
  }
}

class JsonUnionsOutputBuilder
    implements Builder<JsonUnionsOutput, JsonUnionsOutputBuilder> {
  _$JsonUnionsOutput? _$v;

  _i2.MyUnion? _contents;
  _i2.MyUnion? get contents => _$this._contents;
  set contents(_i2.MyUnion? contents) => _$this._contents = contents;

  JsonUnionsOutputBuilder() {
    JsonUnionsOutput._init(this);
  }

  JsonUnionsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contents = $v.contents;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonUnionsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonUnionsOutput;
  }

  @override
  void update(void Function(JsonUnionsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonUnionsOutput build() {
    final _$result = _$v ?? new _$JsonUnionsOutput._(contents: contents);
    replace(_$result);
    return _$result;
  }
}

class _$JsonUnionsOutputPayload extends JsonUnionsOutputPayload {
  @override
  final _i2.MyUnion? contents;

  factory _$JsonUnionsOutputPayload(
          [void Function(JsonUnionsOutputPayloadBuilder)? updates]) =>
      (new JsonUnionsOutputPayloadBuilder()..update(updates)).build();

  _$JsonUnionsOutputPayload._({this.contents}) : super._();

  @override
  JsonUnionsOutputPayload rebuild(
          void Function(JsonUnionsOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonUnionsOutputPayloadBuilder toBuilder() =>
      new JsonUnionsOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonUnionsOutputPayload && contents == other.contents;
  }

  @override
  int get hashCode {
    return $jf($jc(0, contents.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JsonUnionsOutputPayload')
          ..add('contents', contents))
        .toString();
  }
}

class JsonUnionsOutputPayloadBuilder
    implements
        Builder<JsonUnionsOutputPayload, JsonUnionsOutputPayloadBuilder> {
  _$JsonUnionsOutputPayload? _$v;

  _i2.MyUnion? _contents;
  _i2.MyUnion? get contents => _$this._contents;
  set contents(_i2.MyUnion? contents) => _$this._contents = contents;

  JsonUnionsOutputPayloadBuilder() {
    JsonUnionsOutputPayload._init(this);
  }

  JsonUnionsOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contents = $v.contents;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonUnionsOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonUnionsOutputPayload;
  }

  @override
  void update(void Function(JsonUnionsOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonUnionsOutputPayload build() {
    final _$result = _$v ?? new _$JsonUnionsOutputPayload._(contents: contents);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.json_blobs_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonBlobsInputOutput extends JsonBlobsInputOutput {
  @override
  final _i2.Uint8List? data;

  factory _$JsonBlobsInputOutput(
          [void Function(JsonBlobsInputOutputBuilder)? updates]) =>
      (new JsonBlobsInputOutputBuilder()..update(updates)).build();

  _$JsonBlobsInputOutput._({this.data}) : super._();

  @override
  JsonBlobsInputOutput rebuild(
          void Function(JsonBlobsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonBlobsInputOutputBuilder toBuilder() =>
      new JsonBlobsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonBlobsInputOutput && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JsonBlobsInputOutput')
          ..add('data', data))
        .toString();
  }
}

class JsonBlobsInputOutputBuilder
    implements Builder<JsonBlobsInputOutput, JsonBlobsInputOutputBuilder> {
  _$JsonBlobsInputOutput? _$v;

  _i2.Uint8List? _data;
  _i2.Uint8List? get data => _$this._data;
  set data(_i2.Uint8List? data) => _$this._data = data;

  JsonBlobsInputOutputBuilder() {
    JsonBlobsInputOutput._init(this);
  }

  JsonBlobsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonBlobsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonBlobsInputOutput;
  }

  @override
  void update(void Function(JsonBlobsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonBlobsInputOutput build() {
    final _$result = _$v ?? new _$JsonBlobsInputOutput._(data: data);
    replace(_$result);
    return _$result;
  }
}

class _$JsonBlobsInputOutputPayload extends JsonBlobsInputOutputPayload {
  @override
  final _i2.Uint8List? data;

  factory _$JsonBlobsInputOutputPayload(
          [void Function(JsonBlobsInputOutputPayloadBuilder)? updates]) =>
      (new JsonBlobsInputOutputPayloadBuilder()..update(updates)).build();

  _$JsonBlobsInputOutputPayload._({this.data}) : super._();

  @override
  JsonBlobsInputOutputPayload rebuild(
          void Function(JsonBlobsInputOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonBlobsInputOutputPayloadBuilder toBuilder() =>
      new JsonBlobsInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonBlobsInputOutputPayload && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JsonBlobsInputOutputPayload')
          ..add('data', data))
        .toString();
  }
}

class JsonBlobsInputOutputPayloadBuilder
    implements
        Builder<JsonBlobsInputOutputPayload,
            JsonBlobsInputOutputPayloadBuilder> {
  _$JsonBlobsInputOutputPayload? _$v;

  _i2.Uint8List? _data;
  _i2.Uint8List? get data => _$this._data;
  set data(_i2.Uint8List? data) => _$this._data = data;

  JsonBlobsInputOutputPayloadBuilder() {
    JsonBlobsInputOutputPayload._init(this);
  }

  JsonBlobsInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonBlobsInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonBlobsInputOutputPayload;
  }

  @override
  void update(void Function(JsonBlobsInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonBlobsInputOutputPayload build() {
    final _$result = _$v ?? new _$JsonBlobsInputOutputPayload._(data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

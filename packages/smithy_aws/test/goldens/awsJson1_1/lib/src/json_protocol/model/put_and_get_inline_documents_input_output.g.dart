// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.json_protocol.model.put_and_get_inline_documents_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutAndGetInlineDocumentsInputOutput
    extends PutAndGetInlineDocumentsInputOutput {
  @override
  final Object? inlineDocument;

  factory _$PutAndGetInlineDocumentsInputOutput(
          [void Function(PutAndGetInlineDocumentsInputOutputBuilder)?
              updates]) =>
      (new PutAndGetInlineDocumentsInputOutputBuilder()..update(updates))
          .build();

  _$PutAndGetInlineDocumentsInputOutput._({this.inlineDocument}) : super._();

  @override
  PutAndGetInlineDocumentsInputOutput rebuild(
          void Function(PutAndGetInlineDocumentsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutAndGetInlineDocumentsInputOutputBuilder toBuilder() =>
      new PutAndGetInlineDocumentsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutAndGetInlineDocumentsInputOutput &&
        inlineDocument == other.inlineDocument;
  }

  @override
  int get hashCode {
    return $jf($jc(0, inlineDocument.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PutAndGetInlineDocumentsInputOutput')
          ..add('inlineDocument', inlineDocument))
        .toString();
  }
}

class PutAndGetInlineDocumentsInputOutputBuilder
    implements
        Builder<PutAndGetInlineDocumentsInputOutput,
            PutAndGetInlineDocumentsInputOutputBuilder> {
  _$PutAndGetInlineDocumentsInputOutput? _$v;

  Object? _inlineDocument;
  Object? get inlineDocument => _$this._inlineDocument;
  set inlineDocument(Object? inlineDocument) =>
      _$this._inlineDocument = inlineDocument;

  PutAndGetInlineDocumentsInputOutputBuilder() {
    PutAndGetInlineDocumentsInputOutput._init(this);
  }

  PutAndGetInlineDocumentsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inlineDocument = $v.inlineDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutAndGetInlineDocumentsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutAndGetInlineDocumentsInputOutput;
  }

  @override
  void update(
      void Function(PutAndGetInlineDocumentsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PutAndGetInlineDocumentsInputOutput build() {
    final _$result = _$v ??
        new _$PutAndGetInlineDocumentsInputOutput._(
            inlineDocument: inlineDocument);
    replace(_$result);
    return _$result;
  }
}

class _$PutAndGetInlineDocumentsInputOutputPayload
    extends PutAndGetInlineDocumentsInputOutputPayload {
  @override
  final Object? inlineDocument;

  factory _$PutAndGetInlineDocumentsInputOutputPayload(
          [void Function(PutAndGetInlineDocumentsInputOutputPayloadBuilder)?
              updates]) =>
      (new PutAndGetInlineDocumentsInputOutputPayloadBuilder()..update(updates))
          .build();

  _$PutAndGetInlineDocumentsInputOutputPayload._({this.inlineDocument})
      : super._();

  @override
  PutAndGetInlineDocumentsInputOutputPayload rebuild(
          void Function(PutAndGetInlineDocumentsInputOutputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutAndGetInlineDocumentsInputOutputPayloadBuilder toBuilder() =>
      new PutAndGetInlineDocumentsInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutAndGetInlineDocumentsInputOutputPayload &&
        inlineDocument == other.inlineDocument;
  }

  @override
  int get hashCode {
    return $jf($jc(0, inlineDocument.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'PutAndGetInlineDocumentsInputOutputPayload')
          ..add('inlineDocument', inlineDocument))
        .toString();
  }
}

class PutAndGetInlineDocumentsInputOutputPayloadBuilder
    implements
        Builder<PutAndGetInlineDocumentsInputOutputPayload,
            PutAndGetInlineDocumentsInputOutputPayloadBuilder> {
  _$PutAndGetInlineDocumentsInputOutputPayload? _$v;

  Object? _inlineDocument;
  Object? get inlineDocument => _$this._inlineDocument;
  set inlineDocument(Object? inlineDocument) =>
      _$this._inlineDocument = inlineDocument;

  PutAndGetInlineDocumentsInputOutputPayloadBuilder() {
    PutAndGetInlineDocumentsInputOutputPayload._init(this);
  }

  PutAndGetInlineDocumentsInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inlineDocument = $v.inlineDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutAndGetInlineDocumentsInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutAndGetInlineDocumentsInputOutputPayload;
  }

  @override
  void update(
      void Function(PutAndGetInlineDocumentsInputOutputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PutAndGetInlineDocumentsInputOutputPayload build() {
    final _$result = _$v ??
        new _$PutAndGetInlineDocumentsInputOutputPayload._(
            inlineDocument: inlineDocument);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

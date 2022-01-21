// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.host_label_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostLabelInput extends HostLabelInput {
  @override
  final String label;

  factory _$HostLabelInput([void Function(HostLabelInputBuilder)? updates]) =>
      (new HostLabelInputBuilder()..update(updates)).build();

  _$HostLabelInput._({required this.label}) : super._() {
    BuiltValueNullFieldError.checkNotNull(label, 'HostLabelInput', 'label');
  }

  @override
  HostLabelInput rebuild(void Function(HostLabelInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostLabelInputBuilder toBuilder() =>
      new HostLabelInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostLabelInput && label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(0, label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HostLabelInput')..add('label', label))
        .toString();
  }
}

class HostLabelInputBuilder
    implements Builder<HostLabelInput, HostLabelInputBuilder> {
  _$HostLabelInput? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  HostLabelInputBuilder() {
    HostLabelInput._init(this);
  }

  HostLabelInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostLabelInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostLabelInput;
  }

  @override
  void update(void Function(HostLabelInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HostLabelInput build() {
    final _$result = _$v ??
        new _$HostLabelInput._(
            label: BuiltValueNullFieldError.checkNotNull(
                label, 'HostLabelInput', 'label'));
    replace(_$result);
    return _$result;
  }
}

class _$HostLabelInputPayload extends HostLabelInputPayload {
  factory _$HostLabelInputPayload(
          [void Function(HostLabelInputPayloadBuilder)? updates]) =>
      (new HostLabelInputPayloadBuilder()..update(updates)).build();

  _$HostLabelInputPayload._() : super._();

  @override
  HostLabelInputPayload rebuild(
          void Function(HostLabelInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostLabelInputPayloadBuilder toBuilder() =>
      new HostLabelInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostLabelInputPayload;
  }

  @override
  int get hashCode {
    return 281950798;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('HostLabelInputPayload').toString();
  }
}

class HostLabelInputPayloadBuilder
    implements Builder<HostLabelInputPayload, HostLabelInputPayloadBuilder> {
  _$HostLabelInputPayload? _$v;

  HostLabelInputPayloadBuilder() {
    HostLabelInputPayload._init(this);
  }

  @override
  void replace(HostLabelInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostLabelInputPayload;
  }

  @override
  void update(void Function(HostLabelInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HostLabelInputPayload build() {
    final _$result = _$v ?? new _$HostLabelInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

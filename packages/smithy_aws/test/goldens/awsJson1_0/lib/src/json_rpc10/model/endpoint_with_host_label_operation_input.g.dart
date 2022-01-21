// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0.json_rpc10.model.endpoint_with_host_label_operation_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointWithHostLabelOperationInput
    extends EndpointWithHostLabelOperationInput {
  @override
  final String label;

  factory _$EndpointWithHostLabelOperationInput(
          [void Function(EndpointWithHostLabelOperationInputBuilder)?
              updates]) =>
      (new EndpointWithHostLabelOperationInputBuilder()..update(updates))
          .build();

  _$EndpointWithHostLabelOperationInput._({required this.label}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        label, 'EndpointWithHostLabelOperationInput', 'label');
  }

  @override
  EndpointWithHostLabelOperationInput rebuild(
          void Function(EndpointWithHostLabelOperationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointWithHostLabelOperationInputBuilder toBuilder() =>
      new EndpointWithHostLabelOperationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointWithHostLabelOperationInput && label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(0, label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EndpointWithHostLabelOperationInput')
          ..add('label', label))
        .toString();
  }
}

class EndpointWithHostLabelOperationInputBuilder
    implements
        Builder<EndpointWithHostLabelOperationInput,
            EndpointWithHostLabelOperationInputBuilder> {
  _$EndpointWithHostLabelOperationInput? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  EndpointWithHostLabelOperationInputBuilder() {
    EndpointWithHostLabelOperationInput._init(this);
  }

  EndpointWithHostLabelOperationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointWithHostLabelOperationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointWithHostLabelOperationInput;
  }

  @override
  void update(
      void Function(EndpointWithHostLabelOperationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EndpointWithHostLabelOperationInput build() {
    final _$result = _$v ??
        new _$EndpointWithHostLabelOperationInput._(
            label: BuiltValueNullFieldError.checkNotNull(
                label, 'EndpointWithHostLabelOperationInput', 'label'));
    replace(_$result);
    return _$result;
  }
}

class _$EndpointWithHostLabelOperationInputPayload
    extends EndpointWithHostLabelOperationInputPayload {
  factory _$EndpointWithHostLabelOperationInputPayload(
          [void Function(EndpointWithHostLabelOperationInputPayloadBuilder)?
              updates]) =>
      (new EndpointWithHostLabelOperationInputPayloadBuilder()..update(updates))
          .build();

  _$EndpointWithHostLabelOperationInputPayload._() : super._();

  @override
  EndpointWithHostLabelOperationInputPayload rebuild(
          void Function(EndpointWithHostLabelOperationInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointWithHostLabelOperationInputPayloadBuilder toBuilder() =>
      new EndpointWithHostLabelOperationInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointWithHostLabelOperationInputPayload;
  }

  @override
  int get hashCode {
    return 193543239;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(
            'EndpointWithHostLabelOperationInputPayload')
        .toString();
  }
}

class EndpointWithHostLabelOperationInputPayloadBuilder
    implements
        Builder<EndpointWithHostLabelOperationInputPayload,
            EndpointWithHostLabelOperationInputPayloadBuilder> {
  _$EndpointWithHostLabelOperationInputPayload? _$v;

  EndpointWithHostLabelOperationInputPayloadBuilder() {
    EndpointWithHostLabelOperationInputPayload._init(this);
  }

  @override
  void replace(EndpointWithHostLabelOperationInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointWithHostLabelOperationInputPayload;
  }

  @override
  void update(
      void Function(EndpointWithHostLabelOperationInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EndpointWithHostLabelOperationInputPayload build() {
    final _$result =
        _$v ?? new _$EndpointWithHostLabelOperationInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
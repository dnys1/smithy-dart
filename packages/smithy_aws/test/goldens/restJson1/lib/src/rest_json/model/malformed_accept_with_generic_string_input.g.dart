// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.malformed_accept_with_generic_string_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedAcceptWithGenericStringInput
    extends MalformedAcceptWithGenericStringInput {
  @override
  final _i2.Uint8List? payload;

  factory _$MalformedAcceptWithGenericStringInput(
          [void Function(MalformedAcceptWithGenericStringInputBuilder)?
              updates]) =>
      (new MalformedAcceptWithGenericStringInputBuilder()..update(updates))
          .build();

  _$MalformedAcceptWithGenericStringInput._({this.payload}) : super._();

  @override
  MalformedAcceptWithGenericStringInput rebuild(
          void Function(MalformedAcceptWithGenericStringInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedAcceptWithGenericStringInputBuilder toBuilder() =>
      new MalformedAcceptWithGenericStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedAcceptWithGenericStringInput &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc(0, payload.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MalformedAcceptWithGenericStringInput')
          ..add('payload', payload))
        .toString();
  }
}

class MalformedAcceptWithGenericStringInputBuilder
    implements
        Builder<MalformedAcceptWithGenericStringInput,
            MalformedAcceptWithGenericStringInputBuilder> {
  _$MalformedAcceptWithGenericStringInput? _$v;

  _i2.Uint8List? _payload;
  _i2.Uint8List? get payload => _$this._payload;
  set payload(_i2.Uint8List? payload) => _$this._payload = payload;

  MalformedAcceptWithGenericStringInputBuilder() {
    MalformedAcceptWithGenericStringInput._init(this);
  }

  MalformedAcceptWithGenericStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedAcceptWithGenericStringInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedAcceptWithGenericStringInput;
  }

  @override
  void update(
      void Function(MalformedAcceptWithGenericStringInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MalformedAcceptWithGenericStringInput build() {
    final _$result =
        _$v ?? new _$MalformedAcceptWithGenericStringInput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

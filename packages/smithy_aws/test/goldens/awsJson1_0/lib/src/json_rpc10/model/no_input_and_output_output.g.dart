// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0.json_rpc10.model.no_input_and_output_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoInputAndOutputOutput extends NoInputAndOutputOutput {
  factory _$NoInputAndOutputOutput(
          [void Function(NoInputAndOutputOutputBuilder)? updates]) =>
      (new NoInputAndOutputOutputBuilder()..update(updates)).build();

  _$NoInputAndOutputOutput._() : super._();

  @override
  NoInputAndOutputOutput rebuild(
          void Function(NoInputAndOutputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoInputAndOutputOutputBuilder toBuilder() =>
      new NoInputAndOutputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoInputAndOutputOutput;
  }

  @override
  int get hashCode {
    return 29623751;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('NoInputAndOutputOutput').toString();
  }
}

class NoInputAndOutputOutputBuilder
    implements Builder<NoInputAndOutputOutput, NoInputAndOutputOutputBuilder> {
  _$NoInputAndOutputOutput? _$v;

  NoInputAndOutputOutputBuilder() {
    NoInputAndOutputOutput._init(this);
  }

  @override
  void replace(NoInputAndOutputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoInputAndOutputOutput;
  }

  @override
  void update(void Function(NoInputAndOutputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NoInputAndOutputOutput build() {
    final _$result = _$v ?? new _$NoInputAndOutputOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

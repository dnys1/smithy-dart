// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.renamed_greeting;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RenamedGreeting extends RenamedGreeting {
  @override
  final String? salutation;

  factory _$RenamedGreeting([void Function(RenamedGreetingBuilder)? updates]) =>
      (new RenamedGreetingBuilder()..update(updates)).build();

  _$RenamedGreeting._({this.salutation}) : super._();

  @override
  RenamedGreeting rebuild(void Function(RenamedGreetingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RenamedGreetingBuilder toBuilder() =>
      new RenamedGreetingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RenamedGreeting && salutation == other.salutation;
  }

  @override
  int get hashCode {
    return $jf($jc(0, salutation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RenamedGreeting')
          ..add('salutation', salutation))
        .toString();
  }
}

class RenamedGreetingBuilder
    implements Builder<RenamedGreeting, RenamedGreetingBuilder> {
  _$RenamedGreeting? _$v;

  String? _salutation;
  String? get salutation => _$this._salutation;
  set salutation(String? salutation) => _$this._salutation = salutation;

  RenamedGreetingBuilder() {
    RenamedGreeting._init(this);
  }

  RenamedGreetingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _salutation = $v.salutation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RenamedGreeting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RenamedGreeting;
  }

  @override
  void update(void Function(RenamedGreetingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RenamedGreeting build() {
    final _$result = _$v ?? new _$RenamedGreeting._(salutation: salutation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

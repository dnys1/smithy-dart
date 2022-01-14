// GENERATED CODE - DO NOT MODIFY BY HAND

part of http_request_tests_model.test.model.say_hello_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SayHelloInput extends SayHelloInput {
  @override
  final String? greeting;
  @override
  final String hostLabel;
  @override
  final String? name;
  @override
  final String? query;

  factory _$SayHelloInput([void Function(SayHelloInputBuilder)? updates]) =>
      (new SayHelloInputBuilder()..update(updates)).build();

  _$SayHelloInput._(
      {this.greeting, required this.hostLabel, this.name, this.query})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hostLabel, 'SayHelloInput', 'hostLabel');
  }

  @override
  SayHelloInput rebuild(void Function(SayHelloInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SayHelloInputBuilder toBuilder() => new SayHelloInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SayHelloInput &&
        greeting == other.greeting &&
        hostLabel == other.hostLabel &&
        name == other.name &&
        query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, greeting.hashCode), hostLabel.hashCode), name.hashCode),
        query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SayHelloInput')
          ..add('greeting', greeting)
          ..add('hostLabel', hostLabel)
          ..add('name', name)
          ..add('query', query))
        .toString();
  }
}

class SayHelloInputBuilder
    implements Builder<SayHelloInput, SayHelloInputBuilder> {
  _$SayHelloInput? _$v;

  String? _greeting;
  String? get greeting => _$this._greeting;
  set greeting(String? greeting) => _$this._greeting = greeting;

  String? _hostLabel;
  String? get hostLabel => _$this._hostLabel;
  set hostLabel(String? hostLabel) => _$this._hostLabel = hostLabel;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  SayHelloInputBuilder() {
    SayHelloInput._init(this);
  }

  SayHelloInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _greeting = $v.greeting;
      _hostLabel = $v.hostLabel;
      _name = $v.name;
      _query = $v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SayHelloInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SayHelloInput;
  }

  @override
  void update(void Function(SayHelloInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SayHelloInput build() {
    final _$result = _$v ??
        new _$SayHelloInput._(
            greeting: greeting,
            hostLabel: BuiltValueNullFieldError.checkNotNull(
                hostLabel, 'SayHelloInput', 'hostLabel'),
            name: name,
            query: query);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

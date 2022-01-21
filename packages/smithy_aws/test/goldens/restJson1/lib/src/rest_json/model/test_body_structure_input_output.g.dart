// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json.model.test_body_structure_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestBodyStructureInputOutput extends TestBodyStructureInputOutput {
  @override
  final _i2.TestConfig? testConfig;
  @override
  final String? testId;

  factory _$TestBodyStructureInputOutput(
          [void Function(TestBodyStructureInputOutputBuilder)? updates]) =>
      (new TestBodyStructureInputOutputBuilder()..update(updates)).build();

  _$TestBodyStructureInputOutput._({this.testConfig, this.testId}) : super._();

  @override
  TestBodyStructureInputOutput rebuild(
          void Function(TestBodyStructureInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestBodyStructureInputOutputBuilder toBuilder() =>
      new TestBodyStructureInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestBodyStructureInputOutput &&
        testConfig == other.testConfig &&
        testId == other.testId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, testConfig.hashCode), testId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TestBodyStructureInputOutput')
          ..add('testConfig', testConfig)
          ..add('testId', testId))
        .toString();
  }
}

class TestBodyStructureInputOutputBuilder
    implements
        Builder<TestBodyStructureInputOutput,
            TestBodyStructureInputOutputBuilder> {
  _$TestBodyStructureInputOutput? _$v;

  _i2.TestConfigBuilder? _testConfig;
  _i2.TestConfigBuilder get testConfig =>
      _$this._testConfig ??= new _i2.TestConfigBuilder();
  set testConfig(_i2.TestConfigBuilder? testConfig) =>
      _$this._testConfig = testConfig;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  TestBodyStructureInputOutputBuilder() {
    TestBodyStructureInputOutput._init(this);
  }

  TestBodyStructureInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testConfig = $v.testConfig?.toBuilder();
      _testId = $v.testId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestBodyStructureInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestBodyStructureInputOutput;
  }

  @override
  void update(void Function(TestBodyStructureInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TestBodyStructureInputOutput build() {
    _$TestBodyStructureInputOutput _$result;
    try {
      _$result = _$v ??
          new _$TestBodyStructureInputOutput._(
              testConfig: _testConfig?.build(), testId: testId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'testConfig';
        _testConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TestBodyStructureInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TestBodyStructureInputOutputPayload
    extends TestBodyStructureInputOutputPayload {
  @override
  final _i2.TestConfig? testConfig;

  factory _$TestBodyStructureInputOutputPayload(
          [void Function(TestBodyStructureInputOutputPayloadBuilder)?
              updates]) =>
      (new TestBodyStructureInputOutputPayloadBuilder()..update(updates))
          .build();

  _$TestBodyStructureInputOutputPayload._({this.testConfig}) : super._();

  @override
  TestBodyStructureInputOutputPayload rebuild(
          void Function(TestBodyStructureInputOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestBodyStructureInputOutputPayloadBuilder toBuilder() =>
      new TestBodyStructureInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestBodyStructureInputOutputPayload &&
        testConfig == other.testConfig;
  }

  @override
  int get hashCode {
    return $jf($jc(0, testConfig.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TestBodyStructureInputOutputPayload')
          ..add('testConfig', testConfig))
        .toString();
  }
}

class TestBodyStructureInputOutputPayloadBuilder
    implements
        Builder<TestBodyStructureInputOutputPayload,
            TestBodyStructureInputOutputPayloadBuilder> {
  _$TestBodyStructureInputOutputPayload? _$v;

  _i2.TestConfig? _testConfig;
  _i2.TestConfig? get testConfig => _$this._testConfig;
  set testConfig(_i2.TestConfig? testConfig) => _$this._testConfig = testConfig;

  TestBodyStructureInputOutputPayloadBuilder() {
    TestBodyStructureInputOutputPayload._init(this);
  }

  TestBodyStructureInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testConfig = $v.testConfig;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestBodyStructureInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestBodyStructureInputOutputPayload;
  }

  @override
  void update(
      void Function(TestBodyStructureInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TestBodyStructureInputOutputPayload build() {
    final _$result = _$v ??
        new _$TestBodyStructureInputOutputPayload._(testConfig: testConfig);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

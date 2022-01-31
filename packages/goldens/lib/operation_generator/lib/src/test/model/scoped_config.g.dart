// GENERATED CODE - DO NOT MODIFY BY HAND

part of operation_generator.test.model.scoped_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScopedConfig extends ScopedConfig {
  @override
  final _i3.ClientConfig? client;
  @override
  final _i4.BuiltMap<String, _i5.FileConfigSettings>? configFile;
  @override
  final _i4.BuiltMap<String, _i5.FileConfigSettings>? credentialsFile;
  @override
  final _i6.EnvironmentConfig? environment;
  @override
  final _i7.OperationConfig? operation;

  factory _$ScopedConfig([void Function(ScopedConfigBuilder)? updates]) =>
      (new ScopedConfigBuilder()..update(updates)).build();

  _$ScopedConfig._(
      {this.client,
      this.configFile,
      this.credentialsFile,
      this.environment,
      this.operation})
      : super._();

  @override
  ScopedConfig rebuild(void Function(ScopedConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScopedConfigBuilder toBuilder() => new ScopedConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScopedConfig &&
        client == other.client &&
        configFile == other.configFile &&
        credentialsFile == other.credentialsFile &&
        environment == other.environment &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, client.hashCode), configFile.hashCode),
                credentialsFile.hashCode),
            environment.hashCode),
        operation.hashCode));
  }
}

class ScopedConfigBuilder
    implements Builder<ScopedConfig, ScopedConfigBuilder> {
  _$ScopedConfig? _$v;

  _i3.ClientConfigBuilder? _client;
  _i3.ClientConfigBuilder get client =>
      _$this._client ??= new _i3.ClientConfigBuilder();
  set client(_i3.ClientConfigBuilder? client) => _$this._client = client;

  _i4.MapBuilder<String, _i5.FileConfigSettings>? _configFile;
  _i4.MapBuilder<String, _i5.FileConfigSettings> get configFile =>
      _$this._configFile ??=
          new _i4.MapBuilder<String, _i5.FileConfigSettings>();
  set configFile(_i4.MapBuilder<String, _i5.FileConfigSettings>? configFile) =>
      _$this._configFile = configFile;

  _i4.MapBuilder<String, _i5.FileConfigSettings>? _credentialsFile;
  _i4.MapBuilder<String, _i5.FileConfigSettings> get credentialsFile =>
      _$this._credentialsFile ??=
          new _i4.MapBuilder<String, _i5.FileConfigSettings>();
  set credentialsFile(
          _i4.MapBuilder<String, _i5.FileConfigSettings>? credentialsFile) =>
      _$this._credentialsFile = credentialsFile;

  _i6.EnvironmentConfigBuilder? _environment;
  _i6.EnvironmentConfigBuilder get environment =>
      _$this._environment ??= new _i6.EnvironmentConfigBuilder();
  set environment(_i6.EnvironmentConfigBuilder? environment) =>
      _$this._environment = environment;

  _i7.OperationConfigBuilder? _operation;
  _i7.OperationConfigBuilder get operation =>
      _$this._operation ??= new _i7.OperationConfigBuilder();
  set operation(_i7.OperationConfigBuilder? operation) =>
      _$this._operation = operation;

  ScopedConfigBuilder() {
    ScopedConfig._init(this);
  }

  ScopedConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _client = $v.client?.toBuilder();
      _configFile = $v.configFile?.toBuilder();
      _credentialsFile = $v.credentialsFile?.toBuilder();
      _environment = $v.environment?.toBuilder();
      _operation = $v.operation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScopedConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScopedConfig;
  }

  @override
  void update(void Function(ScopedConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScopedConfig build() {
    _$ScopedConfig _$result;
    try {
      _$result = _$v ??
          new _$ScopedConfig._(
              client: _client?.build(),
              configFile: _configFile?.build(),
              credentialsFile: _credentialsFile?.build(),
              environment: _environment?.build(),
              operation: _operation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'client';
        _client?.build();
        _$failedField = 'configFile';
        _configFile?.build();
        _$failedField = 'credentialsFile';
        _credentialsFile?.build();
        _$failedField = 'environment';
        _environment?.build();
        _$failedField = 'operation';
        _operation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScopedConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

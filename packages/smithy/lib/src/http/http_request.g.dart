// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequest extends HttpRequest {
  @override
  final String? hostPrefix;
  @override
  final String method;
  @override
  final String path;
  @override
  final int successCode;
  @override
  final BuiltMap<String, String> headers;
  @override
  final BuiltListMultimap<String, String> queryParameters;

  factory _$HttpRequest([void Function(HttpRequestBuilder)? updates]) =>
      (new HttpRequestBuilder()..update(updates)).build();

  _$HttpRequest._(
      {this.hostPrefix,
      required this.method,
      required this.path,
      required this.successCode,
      required this.headers,
      required this.queryParameters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(method, 'HttpRequest', 'method');
    BuiltValueNullFieldError.checkNotNull(path, 'HttpRequest', 'path');
    BuiltValueNullFieldError.checkNotNull(
        successCode, 'HttpRequest', 'successCode');
    BuiltValueNullFieldError.checkNotNull(headers, 'HttpRequest', 'headers');
    BuiltValueNullFieldError.checkNotNull(
        queryParameters, 'HttpRequest', 'queryParameters');
  }

  @override
  HttpRequest rebuild(void Function(HttpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestBuilder toBuilder() => new HttpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequest &&
        hostPrefix == other.hostPrefix &&
        method == other.method &&
        path == other.path &&
        successCode == other.successCode &&
        headers == other.headers &&
        queryParameters == other.queryParameters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, hostPrefix.hashCode), method.hashCode),
                    path.hashCode),
                successCode.hashCode),
            headers.hashCode),
        queryParameters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpRequest')
          ..add('hostPrefix', hostPrefix)
          ..add('method', method)
          ..add('path', path)
          ..add('successCode', successCode)
          ..add('headers', headers)
          ..add('queryParameters', queryParameters))
        .toString();
  }
}

class HttpRequestBuilder implements Builder<HttpRequest, HttpRequestBuilder> {
  _$HttpRequest? _$v;

  String? _hostPrefix;
  String? get hostPrefix => _$this._hostPrefix;
  set hostPrefix(String? hostPrefix) => _$this._hostPrefix = hostPrefix;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  int? _successCode;
  int? get successCode => _$this._successCode;
  set successCode(int? successCode) => _$this._successCode = successCode;

  MapBuilder<String, String>? _headers;
  MapBuilder<String, String> get headers =>
      _$this._headers ??= new MapBuilder<String, String>();
  set headers(MapBuilder<String, String>? headers) => _$this._headers = headers;

  ListMultimapBuilder<String, String>? _queryParameters;
  ListMultimapBuilder<String, String> get queryParameters =>
      _$this._queryParameters ??= new ListMultimapBuilder<String, String>();
  set queryParameters(ListMultimapBuilder<String, String>? queryParameters) =>
      _$this._queryParameters = queryParameters;

  HttpRequestBuilder();

  HttpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostPrefix = $v.hostPrefix;
      _method = $v.method;
      _path = $v.path;
      _successCode = $v.successCode;
      _headers = $v.headers.toBuilder();
      _queryParameters = $v.queryParameters.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequest;
  }

  @override
  void update(void Function(HttpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpRequest build() {
    _$HttpRequest _$result;
    try {
      _$result = _$v ??
          new _$HttpRequest._(
              hostPrefix: hostPrefix,
              method: BuiltValueNullFieldError.checkNotNull(
                  method, 'HttpRequest', 'method'),
              path: BuiltValueNullFieldError.checkNotNull(
                  path, 'HttpRequest', 'path'),
              successCode: BuiltValueNullFieldError.checkNotNull(
                  successCode, 'HttpRequest', 'successCode'),
              headers: headers.build(),
              queryParameters: queryParameters.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'headers';
        headers.build();
        _$failedField = 'queryParameters';
        queryParameters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpResponse extends HttpResponse {
  @override
  final int statusCode;
  @override
  final Stream<List<int>> body;
  @override
  final BuiltMap<String, String> headers;

  factory _$HttpResponse([void Function(HttpResponseBuilder)? updates]) =>
      (new HttpResponseBuilder()..update(updates)).build();

  _$HttpResponse._(
      {required this.statusCode, required this.body, required this.headers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusCode, 'HttpResponse', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(body, 'HttpResponse', 'body');
    BuiltValueNullFieldError.checkNotNull(headers, 'HttpResponse', 'headers');
  }

  @override
  HttpResponse rebuild(void Function(HttpResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpResponseBuilder toBuilder() => new HttpResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpResponse &&
        statusCode == other.statusCode &&
        body == other.body &&
        headers == other.headers;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, statusCode.hashCode), body.hashCode), headers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpResponse')
          ..add('statusCode', statusCode)
          ..add('body', body)
          ..add('headers', headers))
        .toString();
  }
}

class HttpResponseBuilder
    implements Builder<HttpResponse, HttpResponseBuilder> {
  _$HttpResponse? _$v;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Stream<List<int>>? _body;
  Stream<List<int>>? get body => _$this._body;
  set body(Stream<List<int>>? body) => _$this._body = body;

  MapBuilder<String, String>? _headers;
  MapBuilder<String, String> get headers =>
      _$this._headers ??= new MapBuilder<String, String>();
  set headers(MapBuilder<String, String>? headers) => _$this._headers = headers;

  HttpResponseBuilder();

  HttpResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _body = $v.body;
      _headers = $v.headers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpResponse;
  }

  @override
  void update(void Function(HttpResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpResponse build() {
    _$HttpResponse _$result;
    try {
      _$result = _$v ??
          new _$HttpResponse._(
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, 'HttpResponse', 'statusCode'),
              body: BuiltValueNullFieldError.checkNotNull(
                  body, 'HttpResponse', 'body'),
              headers: headers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'headers';
        headers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

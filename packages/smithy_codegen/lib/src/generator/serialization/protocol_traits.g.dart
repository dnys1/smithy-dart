// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol_traits.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayload extends HttpPayload {
  @override
  final Reference symbol;
  @override
  final MemberShape? member;

  factory _$HttpPayload([void Function(HttpPayloadBuilder)? updates]) =>
      (new HttpPayloadBuilder()..update(updates)).build();

  _$HttpPayload._({required this.symbol, this.member}) : super._() {
    BuiltValueNullFieldError.checkNotNull(symbol, 'HttpPayload', 'symbol');
  }

  @override
  HttpPayload rebuild(void Function(HttpPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPayloadBuilder toBuilder() => new HttpPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPayload &&
        symbol == other.symbol &&
        member == other.member;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, symbol.hashCode), member.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpPayload')
          ..add('symbol', symbol)
          ..add('member', member))
        .toString();
  }
}

class HttpPayloadBuilder implements Builder<HttpPayload, HttpPayloadBuilder> {
  _$HttpPayload? _$v;

  Reference? _symbol;
  Reference? get symbol => _$this._symbol;
  set symbol(Reference? symbol) => _$this._symbol = symbol;

  MemberShapeBuilder? _member;
  MemberShapeBuilder get member => _$this._member ??= new MemberShapeBuilder();
  set member(MemberShapeBuilder? member) => _$this._member = member;

  HttpPayloadBuilder();

  HttpPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _symbol = $v.symbol;
      _member = $v.member?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPayload;
  }

  @override
  void update(void Function(HttpPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpPayload build() {
    _$HttpPayload _$result;
    try {
      _$result = _$v ??
          new _$HttpPayload._(
              symbol: BuiltValueNullFieldError.checkNotNull(
                  symbol, 'HttpPayload', 'symbol'),
              member: _member?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'member';
        _member?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpPrefixHeaders extends HttpPrefixHeaders {
  @override
  final HttpPrefixHeadersTrait trait;
  @override
  final MemberShape member;

  factory _$HttpPrefixHeaders(
          [void Function(HttpPrefixHeadersBuilder)? updates]) =>
      (new HttpPrefixHeadersBuilder()..update(updates)).build();

  _$HttpPrefixHeaders._({required this.trait, required this.member})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(trait, 'HttpPrefixHeaders', 'trait');
    BuiltValueNullFieldError.checkNotNull(
        member, 'HttpPrefixHeaders', 'member');
  }

  @override
  HttpPrefixHeaders rebuild(void Function(HttpPrefixHeadersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersBuilder toBuilder() =>
      new HttpPrefixHeadersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeaders &&
        trait == other.trait &&
        member == other.member;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, trait.hashCode), member.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpPrefixHeaders')
          ..add('trait', trait)
          ..add('member', member))
        .toString();
  }
}

class HttpPrefixHeadersBuilder
    implements Builder<HttpPrefixHeaders, HttpPrefixHeadersBuilder> {
  _$HttpPrefixHeaders? _$v;

  HttpPrefixHeadersTrait? _trait;
  HttpPrefixHeadersTrait? get trait => _$this._trait;
  set trait(HttpPrefixHeadersTrait? trait) => _$this._trait = trait;

  MemberShapeBuilder? _member;
  MemberShapeBuilder get member => _$this._member ??= new MemberShapeBuilder();
  set member(MemberShapeBuilder? member) => _$this._member = member;

  HttpPrefixHeadersBuilder();

  HttpPrefixHeadersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trait = $v.trait;
      _member = $v.member.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPrefixHeaders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeaders;
  }

  @override
  void update(void Function(HttpPrefixHeadersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpPrefixHeaders build() {
    _$HttpPrefixHeaders _$result;
    try {
      _$result = _$v ??
          new _$HttpPrefixHeaders._(
              trait: BuiltValueNullFieldError.checkNotNull(
                  trait, 'HttpPrefixHeaders', 'trait'),
              member: member.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'member';
        member.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpPrefixHeaders', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpInputTraits extends HttpInputTraits {
  @override
  final BuiltMap<String, MemberShape> httpHeaders;
  @override
  final BuiltSet<MemberShape> httpLabels;
  @override
  final HttpPayload httpPayload;
  @override
  final HttpPrefixHeaders? httpPrefixHeaders;
  @override
  final MemberShape? hostLabel;
  @override
  final BuiltMap<String, MemberShape> httpQuery;
  @override
  final MemberShape? httpQueryParams;

  factory _$HttpInputTraits([void Function(HttpInputTraitsBuilder)? updates]) =>
      (new HttpInputTraitsBuilder()..update(updates)).build();

  _$HttpInputTraits._(
      {required this.httpHeaders,
      required this.httpLabels,
      required this.httpPayload,
      this.httpPrefixHeaders,
      this.hostLabel,
      required this.httpQuery,
      this.httpQueryParams})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpHeaders, 'HttpInputTraits', 'httpHeaders');
    BuiltValueNullFieldError.checkNotNull(
        httpLabels, 'HttpInputTraits', 'httpLabels');
    BuiltValueNullFieldError.checkNotNull(
        httpPayload, 'HttpInputTraits', 'httpPayload');
    BuiltValueNullFieldError.checkNotNull(
        httpQuery, 'HttpInputTraits', 'httpQuery');
  }

  @override
  HttpInputTraits rebuild(void Function(HttpInputTraitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpInputTraitsBuilder toBuilder() =>
      new HttpInputTraitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpInputTraits &&
        httpHeaders == other.httpHeaders &&
        httpLabels == other.httpLabels &&
        httpPayload == other.httpPayload &&
        httpPrefixHeaders == other.httpPrefixHeaders &&
        hostLabel == other.hostLabel &&
        httpQuery == other.httpQuery &&
        httpQueryParams == other.httpQueryParams;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, httpHeaders.hashCode), httpLabels.hashCode),
                        httpPayload.hashCode),
                    httpPrefixHeaders.hashCode),
                hostLabel.hashCode),
            httpQuery.hashCode),
        httpQueryParams.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpInputTraits')
          ..add('httpHeaders', httpHeaders)
          ..add('httpLabels', httpLabels)
          ..add('httpPayload', httpPayload)
          ..add('httpPrefixHeaders', httpPrefixHeaders)
          ..add('hostLabel', hostLabel)
          ..add('httpQuery', httpQuery)
          ..add('httpQueryParams', httpQueryParams))
        .toString();
  }
}

class HttpInputTraitsBuilder
    implements Builder<HttpInputTraits, HttpInputTraitsBuilder> {
  _$HttpInputTraits? _$v;

  MapBuilder<String, MemberShape>? _httpHeaders;
  MapBuilder<String, MemberShape> get httpHeaders =>
      _$this._httpHeaders ??= new MapBuilder<String, MemberShape>();
  set httpHeaders(MapBuilder<String, MemberShape>? httpHeaders) =>
      _$this._httpHeaders = httpHeaders;

  SetBuilder<MemberShape>? _httpLabels;
  SetBuilder<MemberShape> get httpLabels =>
      _$this._httpLabels ??= new SetBuilder<MemberShape>();
  set httpLabels(SetBuilder<MemberShape>? httpLabels) =>
      _$this._httpLabels = httpLabels;

  HttpPayloadBuilder? _httpPayload;
  HttpPayloadBuilder get httpPayload =>
      _$this._httpPayload ??= new HttpPayloadBuilder();
  set httpPayload(HttpPayloadBuilder? httpPayload) =>
      _$this._httpPayload = httpPayload;

  HttpPrefixHeadersBuilder? _httpPrefixHeaders;
  HttpPrefixHeadersBuilder get httpPrefixHeaders =>
      _$this._httpPrefixHeaders ??= new HttpPrefixHeadersBuilder();
  set httpPrefixHeaders(HttpPrefixHeadersBuilder? httpPrefixHeaders) =>
      _$this._httpPrefixHeaders = httpPrefixHeaders;

  MemberShapeBuilder? _hostLabel;
  MemberShapeBuilder get hostLabel =>
      _$this._hostLabel ??= new MemberShapeBuilder();
  set hostLabel(MemberShapeBuilder? hostLabel) => _$this._hostLabel = hostLabel;

  MapBuilder<String, MemberShape>? _httpQuery;
  MapBuilder<String, MemberShape> get httpQuery =>
      _$this._httpQuery ??= new MapBuilder<String, MemberShape>();
  set httpQuery(MapBuilder<String, MemberShape>? httpQuery) =>
      _$this._httpQuery = httpQuery;

  MemberShapeBuilder? _httpQueryParams;
  MemberShapeBuilder get httpQueryParams =>
      _$this._httpQueryParams ??= new MemberShapeBuilder();
  set httpQueryParams(MemberShapeBuilder? httpQueryParams) =>
      _$this._httpQueryParams = httpQueryParams;

  HttpInputTraitsBuilder();

  HttpInputTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpHeaders = $v.httpHeaders.toBuilder();
      _httpLabels = $v.httpLabels.toBuilder();
      _httpPayload = $v.httpPayload.toBuilder();
      _httpPrefixHeaders = $v.httpPrefixHeaders?.toBuilder();
      _hostLabel = $v.hostLabel?.toBuilder();
      _httpQuery = $v.httpQuery.toBuilder();
      _httpQueryParams = $v.httpQueryParams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpInputTraits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpInputTraits;
  }

  @override
  void update(void Function(HttpInputTraitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpInputTraits build() {
    _$HttpInputTraits _$result;
    try {
      _$result = _$v ??
          new _$HttpInputTraits._(
              httpHeaders: httpHeaders.build(),
              httpLabels: httpLabels.build(),
              httpPayload: httpPayload.build(),
              httpPrefixHeaders: _httpPrefixHeaders?.build(),
              hostLabel: _hostLabel?.build(),
              httpQuery: httpQuery.build(),
              httpQueryParams: _httpQueryParams?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'httpHeaders';
        httpHeaders.build();
        _$failedField = 'httpLabels';
        httpLabels.build();
        _$failedField = 'httpPayload';
        httpPayload.build();
        _$failedField = 'httpPrefixHeaders';
        _httpPrefixHeaders?.build();
        _$failedField = 'hostLabel';
        _hostLabel?.build();
        _$failedField = 'httpQuery';
        httpQuery.build();
        _$failedField = 'httpQueryParams';
        _httpQueryParams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpInputTraits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpOutputTraits extends HttpOutputTraits {
  @override
  final BuiltMap<String, MemberShape> httpHeaders;
  @override
  final HttpPayload httpPayload;
  @override
  final HttpPrefixHeaders? httpPrefixHeaders;
  @override
  final MemberShape? httpResponseCode;

  factory _$HttpOutputTraits(
          [void Function(HttpOutputTraitsBuilder)? updates]) =>
      (new HttpOutputTraitsBuilder()..update(updates)).build();

  _$HttpOutputTraits._(
      {required this.httpHeaders,
      required this.httpPayload,
      this.httpPrefixHeaders,
      this.httpResponseCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpHeaders, 'HttpOutputTraits', 'httpHeaders');
    BuiltValueNullFieldError.checkNotNull(
        httpPayload, 'HttpOutputTraits', 'httpPayload');
  }

  @override
  HttpOutputTraits rebuild(void Function(HttpOutputTraitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpOutputTraitsBuilder toBuilder() =>
      new HttpOutputTraitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpOutputTraits &&
        httpHeaders == other.httpHeaders &&
        httpPayload == other.httpPayload &&
        httpPrefixHeaders == other.httpPrefixHeaders &&
        httpResponseCode == other.httpResponseCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, httpHeaders.hashCode), httpPayload.hashCode),
            httpPrefixHeaders.hashCode),
        httpResponseCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpOutputTraits')
          ..add('httpHeaders', httpHeaders)
          ..add('httpPayload', httpPayload)
          ..add('httpPrefixHeaders', httpPrefixHeaders)
          ..add('httpResponseCode', httpResponseCode))
        .toString();
  }
}

class HttpOutputTraitsBuilder
    implements Builder<HttpOutputTraits, HttpOutputTraitsBuilder> {
  _$HttpOutputTraits? _$v;

  MapBuilder<String, MemberShape>? _httpHeaders;
  MapBuilder<String, MemberShape> get httpHeaders =>
      _$this._httpHeaders ??= new MapBuilder<String, MemberShape>();
  set httpHeaders(MapBuilder<String, MemberShape>? httpHeaders) =>
      _$this._httpHeaders = httpHeaders;

  HttpPayloadBuilder? _httpPayload;
  HttpPayloadBuilder get httpPayload =>
      _$this._httpPayload ??= new HttpPayloadBuilder();
  set httpPayload(HttpPayloadBuilder? httpPayload) =>
      _$this._httpPayload = httpPayload;

  HttpPrefixHeadersBuilder? _httpPrefixHeaders;
  HttpPrefixHeadersBuilder get httpPrefixHeaders =>
      _$this._httpPrefixHeaders ??= new HttpPrefixHeadersBuilder();
  set httpPrefixHeaders(HttpPrefixHeadersBuilder? httpPrefixHeaders) =>
      _$this._httpPrefixHeaders = httpPrefixHeaders;

  MemberShapeBuilder? _httpResponseCode;
  MemberShapeBuilder get httpResponseCode =>
      _$this._httpResponseCode ??= new MemberShapeBuilder();
  set httpResponseCode(MemberShapeBuilder? httpResponseCode) =>
      _$this._httpResponseCode = httpResponseCode;

  HttpOutputTraitsBuilder();

  HttpOutputTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpHeaders = $v.httpHeaders.toBuilder();
      _httpPayload = $v.httpPayload.toBuilder();
      _httpPrefixHeaders = $v.httpPrefixHeaders?.toBuilder();
      _httpResponseCode = $v.httpResponseCode?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpOutputTraits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpOutputTraits;
  }

  @override
  void update(void Function(HttpOutputTraitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpOutputTraits build() {
    _$HttpOutputTraits _$result;
    try {
      _$result = _$v ??
          new _$HttpOutputTraits._(
              httpHeaders: httpHeaders.build(),
              httpPayload: httpPayload.build(),
              httpPrefixHeaders: _httpPrefixHeaders?.build(),
              httpResponseCode: _httpResponseCode?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'httpHeaders';
        httpHeaders.build();
        _$failedField = 'httpPayload';
        httpPayload.build();
        _$failedField = 'httpPrefixHeaders';
        _httpPrefixHeaders?.build();
        _$failedField = 'httpResponseCode';
        _httpResponseCode?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpOutputTraits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpErrorTraits extends HttpErrorTraits {
  @override
  final ErrorKind kind;
  @override
  final Reference symbol;
  @override
  final RetryConfig? retryConfig;
  @override
  final int statusCode;
  @override
  final BuiltMap<String, MemberShape> httpHeaders;
  @override
  final HttpPayload httpPayload;
  @override
  final HttpPrefixHeaders? httpPrefixHeaders;

  factory _$HttpErrorTraits([void Function(HttpErrorTraitsBuilder)? updates]) =>
      (new HttpErrorTraitsBuilder()..update(updates)).build();

  _$HttpErrorTraits._(
      {required this.kind,
      required this.symbol,
      this.retryConfig,
      required this.statusCode,
      required this.httpHeaders,
      required this.httpPayload,
      this.httpPrefixHeaders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(kind, 'HttpErrorTraits', 'kind');
    BuiltValueNullFieldError.checkNotNull(symbol, 'HttpErrorTraits', 'symbol');
    BuiltValueNullFieldError.checkNotNull(
        statusCode, 'HttpErrorTraits', 'statusCode');
    BuiltValueNullFieldError.checkNotNull(
        httpHeaders, 'HttpErrorTraits', 'httpHeaders');
    BuiltValueNullFieldError.checkNotNull(
        httpPayload, 'HttpErrorTraits', 'httpPayload');
  }

  @override
  HttpErrorTraits rebuild(void Function(HttpErrorTraitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpErrorTraitsBuilder toBuilder() =>
      new HttpErrorTraitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpErrorTraits &&
        kind == other.kind &&
        symbol == other.symbol &&
        retryConfig == other.retryConfig &&
        statusCode == other.statusCode &&
        httpHeaders == other.httpHeaders &&
        httpPayload == other.httpPayload &&
        httpPrefixHeaders == other.httpPrefixHeaders;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, kind.hashCode), symbol.hashCode),
                        retryConfig.hashCode),
                    statusCode.hashCode),
                httpHeaders.hashCode),
            httpPayload.hashCode),
        httpPrefixHeaders.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpErrorTraits')
          ..add('kind', kind)
          ..add('symbol', symbol)
          ..add('retryConfig', retryConfig)
          ..add('statusCode', statusCode)
          ..add('httpHeaders', httpHeaders)
          ..add('httpPayload', httpPayload)
          ..add('httpPrefixHeaders', httpPrefixHeaders))
        .toString();
  }
}

class HttpErrorTraitsBuilder
    implements Builder<HttpErrorTraits, HttpErrorTraitsBuilder> {
  _$HttpErrorTraits? _$v;

  ErrorKind? _kind;
  ErrorKind? get kind => _$this._kind;
  set kind(ErrorKind? kind) => _$this._kind = kind;

  Reference? _symbol;
  Reference? get symbol => _$this._symbol;
  set symbol(Reference? symbol) => _$this._symbol = symbol;

  RetryConfig? _retryConfig;
  RetryConfig? get retryConfig => _$this._retryConfig;
  set retryConfig(RetryConfig? retryConfig) =>
      _$this._retryConfig = retryConfig;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  MapBuilder<String, MemberShape>? _httpHeaders;
  MapBuilder<String, MemberShape> get httpHeaders =>
      _$this._httpHeaders ??= new MapBuilder<String, MemberShape>();
  set httpHeaders(MapBuilder<String, MemberShape>? httpHeaders) =>
      _$this._httpHeaders = httpHeaders;

  HttpPayloadBuilder? _httpPayload;
  HttpPayloadBuilder get httpPayload =>
      _$this._httpPayload ??= new HttpPayloadBuilder();
  set httpPayload(HttpPayloadBuilder? httpPayload) =>
      _$this._httpPayload = httpPayload;

  HttpPrefixHeadersBuilder? _httpPrefixHeaders;
  HttpPrefixHeadersBuilder get httpPrefixHeaders =>
      _$this._httpPrefixHeaders ??= new HttpPrefixHeadersBuilder();
  set httpPrefixHeaders(HttpPrefixHeadersBuilder? httpPrefixHeaders) =>
      _$this._httpPrefixHeaders = httpPrefixHeaders;

  HttpErrorTraitsBuilder();

  HttpErrorTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _symbol = $v.symbol;
      _retryConfig = $v.retryConfig;
      _statusCode = $v.statusCode;
      _httpHeaders = $v.httpHeaders.toBuilder();
      _httpPayload = $v.httpPayload.toBuilder();
      _httpPrefixHeaders = $v.httpPrefixHeaders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpErrorTraits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpErrorTraits;
  }

  @override
  void update(void Function(HttpErrorTraitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpErrorTraits build() {
    HttpErrorTraits._init(this);
    _$HttpErrorTraits _$result;
    try {
      _$result = _$v ??
          new _$HttpErrorTraits._(
              kind: BuiltValueNullFieldError.checkNotNull(
                  kind, 'HttpErrorTraits', 'kind'),
              symbol: BuiltValueNullFieldError.checkNotNull(
                  symbol, 'HttpErrorTraits', 'symbol'),
              retryConfig: retryConfig,
              statusCode: BuiltValueNullFieldError.checkNotNull(
                  statusCode, 'HttpErrorTraits', 'statusCode'),
              httpHeaders: httpHeaders.build(),
              httpPayload: httpPayload.build(),
              httpPrefixHeaders: _httpPrefixHeaders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'httpHeaders';
        httpHeaders.build();
        _$failedField = 'httpPayload';
        httpPayload.build();
        _$failedField = 'httpPrefixHeaders';
        _httpPrefixHeaders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpErrorTraits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$JsonProtocolTraits extends JsonProtocolTraits {
  @override
  final BuiltMap<MemberShape, String> memberWireNames;

  factory _$JsonProtocolTraits(
          [void Function(JsonProtocolTraitsBuilder)? updates]) =>
      (new JsonProtocolTraitsBuilder()..update(updates)).build();

  _$JsonProtocolTraits._({required this.memberWireNames}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        memberWireNames, 'JsonProtocolTraits', 'memberWireNames');
  }

  @override
  JsonProtocolTraits rebuild(
          void Function(JsonProtocolTraitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonProtocolTraitsBuilder toBuilder() =>
      new JsonProtocolTraitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonProtocolTraits &&
        memberWireNames == other.memberWireNames;
  }

  @override
  int get hashCode {
    return $jf($jc(0, memberWireNames.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JsonProtocolTraits')
          ..add('memberWireNames', memberWireNames))
        .toString();
  }
}

class JsonProtocolTraitsBuilder
    implements
        Builder<JsonProtocolTraits, JsonProtocolTraitsBuilder>,
        ProtocolTraitsBuilder {
  _$JsonProtocolTraits? _$v;

  MapBuilder<MemberShape, String>? _memberWireNames;
  MapBuilder<MemberShape, String> get memberWireNames =>
      _$this._memberWireNames ??= new MapBuilder<MemberShape, String>();
  set memberWireNames(
          covariant MapBuilder<MemberShape, String>? memberWireNames) =>
      _$this._memberWireNames = memberWireNames;

  JsonProtocolTraitsBuilder();

  JsonProtocolTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberWireNames = $v.memberWireNames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant JsonProtocolTraits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonProtocolTraits;
  }

  @override
  void update(void Function(JsonProtocolTraitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonProtocolTraits build() {
    _$JsonProtocolTraits _$result;
    try {
      _$result = _$v ??
          new _$JsonProtocolTraits._(memberWireNames: memberWireNames.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'memberWireNames';
        memberWireNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'JsonProtocolTraits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RestJson1ProtocolTraits extends RestJson1ProtocolTraits {
  @override
  final BuiltMap<MemberShape, String> memberWireNames;

  factory _$RestJson1ProtocolTraits(
          [void Function(RestJson1ProtocolTraitsBuilder)? updates]) =>
      (new RestJson1ProtocolTraitsBuilder()..update(updates)).build();

  _$RestJson1ProtocolTraits._({required this.memberWireNames}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        memberWireNames, 'RestJson1ProtocolTraits', 'memberWireNames');
  }

  @override
  RestJson1ProtocolTraits rebuild(
          void Function(RestJson1ProtocolTraitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestJson1ProtocolTraitsBuilder toBuilder() =>
      new RestJson1ProtocolTraitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestJson1ProtocolTraits &&
        memberWireNames == other.memberWireNames;
  }

  @override
  int get hashCode {
    return $jf($jc(0, memberWireNames.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestJson1ProtocolTraits')
          ..add('memberWireNames', memberWireNames))
        .toString();
  }
}

class RestJson1ProtocolTraitsBuilder
    implements
        Builder<RestJson1ProtocolTraits, RestJson1ProtocolTraitsBuilder>,
        ProtocolTraitsBuilder {
  _$RestJson1ProtocolTraits? _$v;

  MapBuilder<MemberShape, String>? _memberWireNames;
  MapBuilder<MemberShape, String> get memberWireNames =>
      _$this._memberWireNames ??= new MapBuilder<MemberShape, String>();
  set memberWireNames(
          covariant MapBuilder<MemberShape, String>? memberWireNames) =>
      _$this._memberWireNames = memberWireNames;

  RestJson1ProtocolTraitsBuilder();

  RestJson1ProtocolTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberWireNames = $v.memberWireNames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RestJson1ProtocolTraits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestJson1ProtocolTraits;
  }

  @override
  void update(void Function(RestJson1ProtocolTraitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestJson1ProtocolTraits build() {
    _$RestJson1ProtocolTraits _$result;
    try {
      _$result = _$v ??
          new _$RestJson1ProtocolTraits._(
              memberWireNames: memberWireNames.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'memberWireNames';
        memberWireNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RestJson1ProtocolTraits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$XmlProtocolTraits extends XmlProtocolTraits {
  @override
  final String? wireName;
  @override
  final XmlNamespaceTrait namespace;
  @override
  final BuiltSet<MemberShape> attributeMembers;
  @override
  final BuiltSet<MemberShape> flattenedMembers;
  @override
  final BuiltMap<MemberShape, XmlNamespaceTrait> memberNamespaces;
  @override
  final BuiltMap<MemberShape, String> memberWireNames;

  factory _$XmlProtocolTraits(
          [void Function(XmlProtocolTraitsBuilder)? updates]) =>
      (new XmlProtocolTraitsBuilder()..update(updates)).build();

  _$XmlProtocolTraits._(
      {this.wireName,
      required this.namespace,
      required this.attributeMembers,
      required this.flattenedMembers,
      required this.memberNamespaces,
      required this.memberWireNames})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        namespace, 'XmlProtocolTraits', 'namespace');
    BuiltValueNullFieldError.checkNotNull(
        attributeMembers, 'XmlProtocolTraits', 'attributeMembers');
    BuiltValueNullFieldError.checkNotNull(
        flattenedMembers, 'XmlProtocolTraits', 'flattenedMembers');
    BuiltValueNullFieldError.checkNotNull(
        memberNamespaces, 'XmlProtocolTraits', 'memberNamespaces');
    BuiltValueNullFieldError.checkNotNull(
        memberWireNames, 'XmlProtocolTraits', 'memberWireNames');
  }

  @override
  XmlProtocolTraits rebuild(void Function(XmlProtocolTraitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlProtocolTraitsBuilder toBuilder() =>
      new XmlProtocolTraitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlProtocolTraits &&
        wireName == other.wireName &&
        namespace == other.namespace &&
        attributeMembers == other.attributeMembers &&
        flattenedMembers == other.flattenedMembers &&
        memberNamespaces == other.memberNamespaces &&
        memberWireNames == other.memberWireNames;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, wireName.hashCode), namespace.hashCode),
                    attributeMembers.hashCode),
                flattenedMembers.hashCode),
            memberNamespaces.hashCode),
        memberWireNames.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('XmlProtocolTraits')
          ..add('wireName', wireName)
          ..add('namespace', namespace)
          ..add('attributeMembers', attributeMembers)
          ..add('flattenedMembers', flattenedMembers)
          ..add('memberNamespaces', memberNamespaces)
          ..add('memberWireNames', memberWireNames))
        .toString();
  }
}

class XmlProtocolTraitsBuilder
    implements
        Builder<XmlProtocolTraits, XmlProtocolTraitsBuilder>,
        ProtocolTraitsBuilder {
  _$XmlProtocolTraits? _$v;

  String? _wireName;
  String? get wireName => _$this._wireName;
  set wireName(covariant String? wireName) => _$this._wireName = wireName;

  XmlNamespaceTrait? _namespace;
  XmlNamespaceTrait? get namespace => _$this._namespace;
  set namespace(covariant XmlNamespaceTrait? namespace) =>
      _$this._namespace = namespace;

  SetBuilder<MemberShape>? _attributeMembers;
  SetBuilder<MemberShape> get attributeMembers =>
      _$this._attributeMembers ??= new SetBuilder<MemberShape>();
  set attributeMembers(covariant SetBuilder<MemberShape>? attributeMembers) =>
      _$this._attributeMembers = attributeMembers;

  SetBuilder<MemberShape>? _flattenedMembers;
  SetBuilder<MemberShape> get flattenedMembers =>
      _$this._flattenedMembers ??= new SetBuilder<MemberShape>();
  set flattenedMembers(covariant SetBuilder<MemberShape>? flattenedMembers) =>
      _$this._flattenedMembers = flattenedMembers;

  MapBuilder<MemberShape, XmlNamespaceTrait>? _memberNamespaces;
  MapBuilder<MemberShape, XmlNamespaceTrait> get memberNamespaces =>
      _$this._memberNamespaces ??=
          new MapBuilder<MemberShape, XmlNamespaceTrait>();
  set memberNamespaces(
          covariant MapBuilder<MemberShape, XmlNamespaceTrait>?
              memberNamespaces) =>
      _$this._memberNamespaces = memberNamespaces;

  MapBuilder<MemberShape, String>? _memberWireNames;
  MapBuilder<MemberShape, String> get memberWireNames =>
      _$this._memberWireNames ??= new MapBuilder<MemberShape, String>();
  set memberWireNames(
          covariant MapBuilder<MemberShape, String>? memberWireNames) =>
      _$this._memberWireNames = memberWireNames;

  XmlProtocolTraitsBuilder();

  XmlProtocolTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wireName = $v.wireName;
      _namespace = $v.namespace;
      _attributeMembers = $v.attributeMembers.toBuilder();
      _flattenedMembers = $v.flattenedMembers.toBuilder();
      _memberNamespaces = $v.memberNamespaces.toBuilder();
      _memberWireNames = $v.memberWireNames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant XmlProtocolTraits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlProtocolTraits;
  }

  @override
  void update(void Function(XmlProtocolTraitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$XmlProtocolTraits build() {
    _$XmlProtocolTraits _$result;
    try {
      _$result = _$v ??
          new _$XmlProtocolTraits._(
              wireName: wireName,
              namespace: BuiltValueNullFieldError.checkNotNull(
                  namespace, 'XmlProtocolTraits', 'namespace'),
              attributeMembers: attributeMembers.build(),
              flattenedMembers: flattenedMembers.build(),
              memberNamespaces: memberNamespaces.build(),
              memberWireNames: memberWireNames.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeMembers';
        attributeMembers.build();
        _$failedField = 'flattenedMembers';
        flattenedMembers.build();
        _$failedField = 'memberNamespaces';
        memberNamespaces.build();
        _$failedField = 'memberWireNames';
        memberWireNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'XmlProtocolTraits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

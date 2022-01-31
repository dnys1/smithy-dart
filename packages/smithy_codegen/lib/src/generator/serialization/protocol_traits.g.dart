// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol_traits.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProtocolTraits extends ProtocolTraits {
  @override
  final String? wireName;
  @override
  final XmlNamespaceTrait? namespace;
  @override
  final BuiltSet<MemberShape> attributeMembers;
  @override
  final BuiltSet<MemberShape> flattenedMembers;
  @override
  final BuiltMap<MemberShape, XmlNamespaceTrait> memberNamespaces;
  @override
  final BuiltMap<MemberShape, String> memberWireNames;

  factory _$ProtocolTraits([void Function(ProtocolTraitsBuilder)? updates]) =>
      (new ProtocolTraitsBuilder()..update(updates)).build();

  _$ProtocolTraits._(
      {this.wireName,
      this.namespace,
      required this.attributeMembers,
      required this.flattenedMembers,
      required this.memberNamespaces,
      required this.memberWireNames})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attributeMembers, 'ProtocolTraits', 'attributeMembers');
    BuiltValueNullFieldError.checkNotNull(
        flattenedMembers, 'ProtocolTraits', 'flattenedMembers');
    BuiltValueNullFieldError.checkNotNull(
        memberNamespaces, 'ProtocolTraits', 'memberNamespaces');
    BuiltValueNullFieldError.checkNotNull(
        memberWireNames, 'ProtocolTraits', 'memberWireNames');
  }

  @override
  ProtocolTraits rebuild(void Function(ProtocolTraitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtocolTraitsBuilder toBuilder() =>
      new ProtocolTraitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtocolTraits &&
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
    return (newBuiltValueToStringHelper('ProtocolTraits')
          ..add('wireName', wireName)
          ..add('namespace', namespace)
          ..add('attributeMembers', attributeMembers)
          ..add('flattenedMembers', flattenedMembers)
          ..add('memberNamespaces', memberNamespaces)
          ..add('memberWireNames', memberWireNames))
        .toString();
  }
}

class ProtocolTraitsBuilder
    implements Builder<ProtocolTraits, ProtocolTraitsBuilder> {
  _$ProtocolTraits? _$v;

  String? _wireName;
  String? get wireName => _$this._wireName;
  set wireName(String? wireName) => _$this._wireName = wireName;

  XmlNamespaceTrait? _namespace;
  XmlNamespaceTrait? get namespace => _$this._namespace;
  set namespace(XmlNamespaceTrait? namespace) => _$this._namespace = namespace;

  SetBuilder<MemberShape>? _attributeMembers;
  SetBuilder<MemberShape> get attributeMembers =>
      _$this._attributeMembers ??= new SetBuilder<MemberShape>();
  set attributeMembers(SetBuilder<MemberShape>? attributeMembers) =>
      _$this._attributeMembers = attributeMembers;

  SetBuilder<MemberShape>? _flattenedMembers;
  SetBuilder<MemberShape> get flattenedMembers =>
      _$this._flattenedMembers ??= new SetBuilder<MemberShape>();
  set flattenedMembers(SetBuilder<MemberShape>? flattenedMembers) =>
      _$this._flattenedMembers = flattenedMembers;

  MapBuilder<MemberShape, XmlNamespaceTrait>? _memberNamespaces;
  MapBuilder<MemberShape, XmlNamespaceTrait> get memberNamespaces =>
      _$this._memberNamespaces ??=
          new MapBuilder<MemberShape, XmlNamespaceTrait>();
  set memberNamespaces(
          MapBuilder<MemberShape, XmlNamespaceTrait>? memberNamespaces) =>
      _$this._memberNamespaces = memberNamespaces;

  MapBuilder<MemberShape, String>? _memberWireNames;
  MapBuilder<MemberShape, String> get memberWireNames =>
      _$this._memberWireNames ??= new MapBuilder<MemberShape, String>();
  set memberWireNames(MapBuilder<MemberShape, String>? memberWireNames) =>
      _$this._memberWireNames = memberWireNames;

  ProtocolTraitsBuilder();

  ProtocolTraitsBuilder get _$this {
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
  void replace(ProtocolTraits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProtocolTraits;
  }

  @override
  void update(void Function(ProtocolTraitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtocolTraits build() {
    _$ProtocolTraits _$result;
    try {
      _$result = _$v ??
          new _$ProtocolTraits._(
              wireName: wireName,
              namespace: namespace,
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
            'ProtocolTraits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

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

abstract class HttpTraitsBuilder {
  void replace(HttpTraits other);
  void update(void Function(HttpTraitsBuilder) updates);
}

class _$HttpInputTraits extends HttpInputTraits {
  @override
  final BuiltMap<String, MemberShape> httpHeaders;
  @override
  final BuiltSet<MemberShape> httpLabels;
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
                $jc($jc($jc(0, httpHeaders.hashCode), httpLabels.hashCode),
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

abstract class HttpResponseTraitsBuilder {
  void replace(HttpResponseTraits other);
  void update(void Function(HttpResponseTraitsBuilder) updates);
  MapBuilder<String, MemberShape> get httpHeaders;
  set httpHeaders(MapBuilder<String, MemberShape>? httpHeaders);

  HttpPrefixHeadersBuilder get httpPrefixHeaders;
  set httpPrefixHeaders(HttpPrefixHeadersBuilder? httpPrefixHeaders);
}

class _$HttpOutputTraits extends HttpOutputTraits {
  @override
  final MemberShape? httpResponseCode;
  @override
  final BuiltMap<String, MemberShape> httpHeaders;
  @override
  final HttpPrefixHeaders? httpPrefixHeaders;

  factory _$HttpOutputTraits(
          [void Function(HttpOutputTraitsBuilder)? updates]) =>
      (new HttpOutputTraitsBuilder()..update(updates)).build();

  _$HttpOutputTraits._(
      {this.httpResponseCode,
      required this.httpHeaders,
      this.httpPrefixHeaders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpHeaders, 'HttpOutputTraits', 'httpHeaders');
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
        httpResponseCode == other.httpResponseCode &&
        httpHeaders == other.httpHeaders &&
        httpPrefixHeaders == other.httpPrefixHeaders;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, httpResponseCode.hashCode), httpHeaders.hashCode),
        httpPrefixHeaders.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpOutputTraits')
          ..add('httpResponseCode', httpResponseCode)
          ..add('httpHeaders', httpHeaders)
          ..add('httpPrefixHeaders', httpPrefixHeaders))
        .toString();
  }
}

class HttpOutputTraitsBuilder
    implements
        Builder<HttpOutputTraits, HttpOutputTraitsBuilder>,
        HttpResponseTraitsBuilder {
  _$HttpOutputTraits? _$v;

  MemberShapeBuilder? _httpResponseCode;
  MemberShapeBuilder get httpResponseCode =>
      _$this._httpResponseCode ??= new MemberShapeBuilder();
  set httpResponseCode(covariant MemberShapeBuilder? httpResponseCode) =>
      _$this._httpResponseCode = httpResponseCode;

  MapBuilder<String, MemberShape>? _httpHeaders;
  MapBuilder<String, MemberShape> get httpHeaders =>
      _$this._httpHeaders ??= new MapBuilder<String, MemberShape>();
  set httpHeaders(covariant MapBuilder<String, MemberShape>? httpHeaders) =>
      _$this._httpHeaders = httpHeaders;

  HttpPrefixHeadersBuilder? _httpPrefixHeaders;
  HttpPrefixHeadersBuilder get httpPrefixHeaders =>
      _$this._httpPrefixHeaders ??= new HttpPrefixHeadersBuilder();
  set httpPrefixHeaders(
          covariant HttpPrefixHeadersBuilder? httpPrefixHeaders) =>
      _$this._httpPrefixHeaders = httpPrefixHeaders;

  HttpOutputTraitsBuilder();

  HttpOutputTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpResponseCode = $v.httpResponseCode?.toBuilder();
      _httpHeaders = $v.httpHeaders.toBuilder();
      _httpPrefixHeaders = $v.httpPrefixHeaders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HttpOutputTraits other) {
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
              httpResponseCode: _httpResponseCode?.build(),
              httpHeaders: httpHeaders.build(),
              httpPrefixHeaders: _httpPrefixHeaders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'httpResponseCode';
        _httpResponseCode?.build();
        _$failedField = 'httpHeaders';
        httpHeaders.build();
        _$failedField = 'httpPrefixHeaders';
        _httpPrefixHeaders?.build();
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
  final ShapeId shapeId;
  @override
  final ErrorKind kind;
  @override
  final Reference symbol;
  @override
  final RetryConfig? retryConfig;
  @override
  final int? statusCode;
  @override
  final BuiltMap<String, MemberShape> httpHeaders;
  @override
  final HttpPrefixHeaders? httpPrefixHeaders;

  factory _$HttpErrorTraits([void Function(HttpErrorTraitsBuilder)? updates]) =>
      (new HttpErrorTraitsBuilder()..update(updates)).build();

  _$HttpErrorTraits._(
      {required this.shapeId,
      required this.kind,
      required this.symbol,
      this.retryConfig,
      this.statusCode,
      required this.httpHeaders,
      this.httpPrefixHeaders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, 'HttpErrorTraits', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(kind, 'HttpErrorTraits', 'kind');
    BuiltValueNullFieldError.checkNotNull(symbol, 'HttpErrorTraits', 'symbol');
    BuiltValueNullFieldError.checkNotNull(
        httpHeaders, 'HttpErrorTraits', 'httpHeaders');
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
        shapeId == other.shapeId &&
        kind == other.kind &&
        symbol == other.symbol &&
        retryConfig == other.retryConfig &&
        statusCode == other.statusCode &&
        httpHeaders == other.httpHeaders &&
        httpPrefixHeaders == other.httpPrefixHeaders;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, shapeId.hashCode), kind.hashCode),
                        symbol.hashCode),
                    retryConfig.hashCode),
                statusCode.hashCode),
            httpHeaders.hashCode),
        httpPrefixHeaders.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpErrorTraits')
          ..add('shapeId', shapeId)
          ..add('kind', kind)
          ..add('symbol', symbol)
          ..add('retryConfig', retryConfig)
          ..add('statusCode', statusCode)
          ..add('httpHeaders', httpHeaders)
          ..add('httpPrefixHeaders', httpPrefixHeaders))
        .toString();
  }
}

class HttpErrorTraitsBuilder
    implements
        Builder<HttpErrorTraits, HttpErrorTraitsBuilder>,
        HttpResponseTraitsBuilder {
  _$HttpErrorTraits? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  ErrorKind? _kind;
  ErrorKind? get kind => _$this._kind;
  set kind(covariant ErrorKind? kind) => _$this._kind = kind;

  Reference? _symbol;
  Reference? get symbol => _$this._symbol;
  set symbol(covariant Reference? symbol) => _$this._symbol = symbol;

  RetryConfig? _retryConfig;
  RetryConfig? get retryConfig => _$this._retryConfig;
  set retryConfig(covariant RetryConfig? retryConfig) =>
      _$this._retryConfig = retryConfig;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(covariant int? statusCode) => _$this._statusCode = statusCode;

  MapBuilder<String, MemberShape>? _httpHeaders;
  MapBuilder<String, MemberShape> get httpHeaders =>
      _$this._httpHeaders ??= new MapBuilder<String, MemberShape>();
  set httpHeaders(covariant MapBuilder<String, MemberShape>? httpHeaders) =>
      _$this._httpHeaders = httpHeaders;

  HttpPrefixHeadersBuilder? _httpPrefixHeaders;
  HttpPrefixHeadersBuilder get httpPrefixHeaders =>
      _$this._httpPrefixHeaders ??= new HttpPrefixHeadersBuilder();
  set httpPrefixHeaders(
          covariant HttpPrefixHeadersBuilder? httpPrefixHeaders) =>
      _$this._httpPrefixHeaders = httpPrefixHeaders;

  HttpErrorTraitsBuilder();

  HttpErrorTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _kind = $v.kind;
      _symbol = $v.symbol;
      _retryConfig = $v.retryConfig;
      _statusCode = $v.statusCode;
      _httpHeaders = $v.httpHeaders.toBuilder();
      _httpPrefixHeaders = $v.httpPrefixHeaders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HttpErrorTraits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpErrorTraits;
  }

  @override
  void update(void Function(HttpErrorTraitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpErrorTraits build() {
    _$HttpErrorTraits _$result;
    try {
      _$result = _$v ??
          new _$HttpErrorTraits._(
              shapeId: BuiltValueNullFieldError.checkNotNull(
                  shapeId, 'HttpErrorTraits', 'shapeId'),
              kind: BuiltValueNullFieldError.checkNotNull(
                  kind, 'HttpErrorTraits', 'kind'),
              symbol: BuiltValueNullFieldError.checkNotNull(
                  symbol, 'HttpErrorTraits', 'symbol'),
              retryConfig: retryConfig,
              statusCode: statusCode,
              httpHeaders: httpHeaders.build(),
              httpPrefixHeaders: _httpPrefixHeaders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'httpHeaders';
        httpHeaders.build();
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

class _$PaginationItem extends PaginationItem {
  @override
  final MemberShape member;
  @override
  final bool isNullable;
  @override
  final Expression Function(Expression) buildExpression;
  @override
  final Reference symbol;

  factory _$PaginationItem([void Function(PaginationItemBuilder)? updates]) =>
      (new PaginationItemBuilder()..update(updates)).build();

  _$PaginationItem._(
      {required this.member,
      required this.isNullable,
      required this.buildExpression,
      required this.symbol})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(member, 'PaginationItem', 'member');
    BuiltValueNullFieldError.checkNotNull(
        isNullable, 'PaginationItem', 'isNullable');
    BuiltValueNullFieldError.checkNotNull(
        buildExpression, 'PaginationItem', 'buildExpression');
    BuiltValueNullFieldError.checkNotNull(symbol, 'PaginationItem', 'symbol');
  }

  @override
  PaginationItem rebuild(void Function(PaginationItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginationItemBuilder toBuilder() =>
      new PaginationItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is PaginationItem &&
        member == other.member &&
        isNullable == other.isNullable &&
        buildExpression == _$dynamicOther.buildExpression &&
        symbol == other.symbol;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, member.hashCode), isNullable.hashCode),
            buildExpression.hashCode),
        symbol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaginationItem')
          ..add('member', member)
          ..add('isNullable', isNullable)
          ..add('buildExpression', buildExpression)
          ..add('symbol', symbol))
        .toString();
  }
}

class PaginationItemBuilder
    implements Builder<PaginationItem, PaginationItemBuilder> {
  _$PaginationItem? _$v;

  MemberShapeBuilder? _member;
  MemberShapeBuilder get member => _$this._member ??= new MemberShapeBuilder();
  set member(MemberShapeBuilder? member) => _$this._member = member;

  bool? _isNullable;
  bool? get isNullable => _$this._isNullable;
  set isNullable(bool? isNullable) => _$this._isNullable = isNullable;

  Expression Function(Expression)? _buildExpression;
  Expression Function(Expression)? get buildExpression =>
      _$this._buildExpression;
  set buildExpression(Expression Function(Expression)? buildExpression) =>
      _$this._buildExpression = buildExpression;

  Reference? _symbol;
  Reference? get symbol => _$this._symbol;
  set symbol(Reference? symbol) => _$this._symbol = symbol;

  PaginationItemBuilder();

  PaginationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _member = $v.member.toBuilder();
      _isNullable = $v.isNullable;
      _buildExpression = $v.buildExpression;
      _symbol = $v.symbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginationItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaginationItem;
  }

  @override
  void update(void Function(PaginationItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaginationItem build() {
    _$PaginationItem _$result;
    try {
      _$result = _$v ??
          new _$PaginationItem._(
              member: member.build(),
              isNullable: BuiltValueNullFieldError.checkNotNull(
                  isNullable, 'PaginationItem', 'isNullable'),
              buildExpression: BuiltValueNullFieldError.checkNotNull(
                  buildExpression, 'PaginationItem', 'buildExpression'),
              symbol: BuiltValueNullFieldError.checkNotNull(
                  symbol, 'PaginationItem', 'symbol'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'member';
        member.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PaginationItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PaginatedTraits extends PaginatedTraits {
  @override
  final String? inputTokenPath;
  @override
  final PaginationItem? inputToken;
  @override
  final String? outputTokenPath;
  @override
  final PaginationItem? outputToken;
  @override
  final String? pageSizePath;
  @override
  final PaginationItem? pageSize;
  @override
  final String? itemsPath;
  @override
  final PaginationItem? items;

  factory _$PaginatedTraits([void Function(PaginatedTraitsBuilder)? updates]) =>
      (new PaginatedTraitsBuilder()..update(updates)).build();

  _$PaginatedTraits._(
      {this.inputTokenPath,
      this.inputToken,
      this.outputTokenPath,
      this.outputToken,
      this.pageSizePath,
      this.pageSize,
      this.itemsPath,
      this.items})
      : super._();

  @override
  PaginatedTraits rebuild(void Function(PaginatedTraitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedTraitsBuilder toBuilder() =>
      new PaginatedTraitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedTraits &&
        inputTokenPath == other.inputTokenPath &&
        inputToken == other.inputToken &&
        outputTokenPath == other.outputTokenPath &&
        outputToken == other.outputToken &&
        pageSizePath == other.pageSizePath &&
        pageSize == other.pageSize &&
        itemsPath == other.itemsPath &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, inputTokenPath.hashCode),
                                inputToken.hashCode),
                            outputTokenPath.hashCode),
                        outputToken.hashCode),
                    pageSizePath.hashCode),
                pageSize.hashCode),
            itemsPath.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaginatedTraits')
          ..add('inputTokenPath', inputTokenPath)
          ..add('inputToken', inputToken)
          ..add('outputTokenPath', outputTokenPath)
          ..add('outputToken', outputToken)
          ..add('pageSizePath', pageSizePath)
          ..add('pageSize', pageSize)
          ..add('itemsPath', itemsPath)
          ..add('items', items))
        .toString();
  }
}

class PaginatedTraitsBuilder
    implements Builder<PaginatedTraits, PaginatedTraitsBuilder> {
  _$PaginatedTraits? _$v;

  String? _inputTokenPath;
  String? get inputTokenPath => _$this._inputTokenPath;
  set inputTokenPath(String? inputTokenPath) =>
      _$this._inputTokenPath = inputTokenPath;

  PaginationItemBuilder? _inputToken;
  PaginationItemBuilder get inputToken =>
      _$this._inputToken ??= new PaginationItemBuilder();
  set inputToken(PaginationItemBuilder? inputToken) =>
      _$this._inputToken = inputToken;

  String? _outputTokenPath;
  String? get outputTokenPath => _$this._outputTokenPath;
  set outputTokenPath(String? outputTokenPath) =>
      _$this._outputTokenPath = outputTokenPath;

  PaginationItemBuilder? _outputToken;
  PaginationItemBuilder get outputToken =>
      _$this._outputToken ??= new PaginationItemBuilder();
  set outputToken(PaginationItemBuilder? outputToken) =>
      _$this._outputToken = outputToken;

  String? _pageSizePath;
  String? get pageSizePath => _$this._pageSizePath;
  set pageSizePath(String? pageSizePath) => _$this._pageSizePath = pageSizePath;

  PaginationItemBuilder? _pageSize;
  PaginationItemBuilder get pageSize =>
      _$this._pageSize ??= new PaginationItemBuilder();
  set pageSize(PaginationItemBuilder? pageSize) => _$this._pageSize = pageSize;

  String? _itemsPath;
  String? get itemsPath => _$this._itemsPath;
  set itemsPath(String? itemsPath) => _$this._itemsPath = itemsPath;

  PaginationItemBuilder? _items;
  PaginationItemBuilder get items =>
      _$this._items ??= new PaginationItemBuilder();
  set items(PaginationItemBuilder? items) => _$this._items = items;

  PaginatedTraitsBuilder();

  PaginatedTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inputTokenPath = $v.inputTokenPath;
      _inputToken = $v.inputToken?.toBuilder();
      _outputTokenPath = $v.outputTokenPath;
      _outputToken = $v.outputToken?.toBuilder();
      _pageSizePath = $v.pageSizePath;
      _pageSize = $v.pageSize?.toBuilder();
      _itemsPath = $v.itemsPath;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginatedTraits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaginatedTraits;
  }

  @override
  void update(void Function(PaginatedTraitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaginatedTraits build() {
    _$PaginatedTraits _$result;
    try {
      _$result = _$v ??
          new _$PaginatedTraits._(
              inputTokenPath: inputTokenPath,
              inputToken: _inputToken?.build(),
              outputTokenPath: outputTokenPath,
              outputToken: _outputToken?.build(),
              pageSizePath: pageSizePath,
              pageSize: _pageSize?.build(),
              itemsPath: itemsPath,
              items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputToken';
        _inputToken?.build();

        _$failedField = 'outputToken';
        _outputToken?.build();

        _$failedField = 'pageSize';
        _pageSize?.build();

        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PaginatedTraits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

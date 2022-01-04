// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol_traits.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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

class _$HttpQuery extends HttpQuery {
  @override
  final HttpQueryTrait trait;
  @override
  final MemberShape member;

  factory _$HttpQuery([void Function(HttpQueryBuilder)? updates]) =>
      (new HttpQueryBuilder()..update(updates)).build();

  _$HttpQuery._({required this.trait, required this.member}) : super._() {
    BuiltValueNullFieldError.checkNotNull(trait, 'HttpQuery', 'trait');
    BuiltValueNullFieldError.checkNotNull(member, 'HttpQuery', 'member');
  }

  @override
  HttpQuery rebuild(void Function(HttpQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpQueryBuilder toBuilder() => new HttpQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpQuery && trait == other.trait && member == other.member;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, trait.hashCode), member.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpQuery')
          ..add('trait', trait)
          ..add('member', member))
        .toString();
  }
}

class HttpQueryBuilder implements Builder<HttpQuery, HttpQueryBuilder> {
  _$HttpQuery? _$v;

  HttpQueryTrait? _trait;
  HttpQueryTrait? get trait => _$this._trait;
  set trait(HttpQueryTrait? trait) => _$this._trait = trait;

  MemberShapeBuilder? _member;
  MemberShapeBuilder get member => _$this._member ??= new MemberShapeBuilder();
  set member(MemberShapeBuilder? member) => _$this._member = member;

  HttpQueryBuilder();

  HttpQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trait = $v.trait;
      _member = $v.member.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpQuery other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpQuery;
  }

  @override
  void update(void Function(HttpQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpQuery build() {
    _$HttpQuery _$result;
    try {
      _$result = _$v ??
          new _$HttpQuery._(
              trait: BuiltValueNullFieldError.checkNotNull(
                  trait, 'HttpQuery', 'trait'),
              member: member.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'member';
        member.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HttpQuery', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

abstract class HttpProtocolTraitsBuilder {
  void replace(HttpProtocolTraits other);
  void update(void Function(HttpProtocolTraitsBuilder) updates);
  HttpTrait? get http;
  set http(HttpTrait? http);

  MapBuilder<String, MemberShape> get httpHeaders;
  set httpHeaders(MapBuilder<String, MemberShape>? httpHeaders);

  SetBuilder<MemberShape> get httpLabels;
  set httpLabels(SetBuilder<MemberShape>? httpLabels);

  MemberShapeBuilder get httpPayload;
  set httpPayload(MemberShapeBuilder? httpPayload);

  HttpPrefixHeadersBuilder get httpPrefixHeaders;
  set httpPrefixHeaders(HttpPrefixHeadersBuilder? httpPrefixHeaders);

  MemberShapeBuilder get hostLabel;
  set hostLabel(MemberShapeBuilder? hostLabel);

  HttpQueryBuilder get httpQuery;
  set httpQuery(HttpQueryBuilder? httpQuery);

  MemberShapeBuilder get httpQueryParams;
  set httpQueryParams(MemberShapeBuilder? httpQueryParams);
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
  @override
  final HttpTrait http;
  @override
  final BuiltMap<String, MemberShape> httpHeaders;
  @override
  final BuiltSet<MemberShape> httpLabels;
  @override
  final MemberShape? httpPayload;
  @override
  final HttpPrefixHeaders? httpPrefixHeaders;
  @override
  final MemberShape? hostLabel;
  @override
  final HttpQuery? httpQuery;
  @override
  final MemberShape? httpQueryParams;

  factory _$RestJson1ProtocolTraits(
          [void Function(RestJson1ProtocolTraitsBuilder)? updates]) =>
      (new RestJson1ProtocolTraitsBuilder()..update(updates)).build();

  _$RestJson1ProtocolTraits._(
      {required this.memberWireNames,
      required this.http,
      required this.httpHeaders,
      required this.httpLabels,
      this.httpPayload,
      this.httpPrefixHeaders,
      this.hostLabel,
      this.httpQuery,
      this.httpQueryParams})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        memberWireNames, 'RestJson1ProtocolTraits', 'memberWireNames');
    BuiltValueNullFieldError.checkNotNull(
        http, 'RestJson1ProtocolTraits', 'http');
    BuiltValueNullFieldError.checkNotNull(
        httpHeaders, 'RestJson1ProtocolTraits', 'httpHeaders');
    BuiltValueNullFieldError.checkNotNull(
        httpLabels, 'RestJson1ProtocolTraits', 'httpLabels');
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
        memberWireNames == other.memberWireNames &&
        http == other.http &&
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
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, memberWireNames.hashCode),
                                    http.hashCode),
                                httpHeaders.hashCode),
                            httpLabels.hashCode),
                        httpPayload.hashCode),
                    httpPrefixHeaders.hashCode),
                hostLabel.hashCode),
            httpQuery.hashCode),
        httpQueryParams.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestJson1ProtocolTraits')
          ..add('memberWireNames', memberWireNames)
          ..add('http', http)
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

class RestJson1ProtocolTraitsBuilder
    implements
        Builder<RestJson1ProtocolTraits, RestJson1ProtocolTraitsBuilder>,
        ProtocolTraitsBuilder,
        HttpProtocolTraitsBuilder {
  _$RestJson1ProtocolTraits? _$v;

  MapBuilder<MemberShape, String>? _memberWireNames;
  MapBuilder<MemberShape, String> get memberWireNames =>
      _$this._memberWireNames ??= new MapBuilder<MemberShape, String>();
  set memberWireNames(
          covariant MapBuilder<MemberShape, String>? memberWireNames) =>
      _$this._memberWireNames = memberWireNames;

  HttpTrait? _http;
  HttpTrait? get http => _$this._http;
  set http(covariant HttpTrait? http) => _$this._http = http;

  MapBuilder<String, MemberShape>? _httpHeaders;
  MapBuilder<String, MemberShape> get httpHeaders =>
      _$this._httpHeaders ??= new MapBuilder<String, MemberShape>();
  set httpHeaders(covariant MapBuilder<String, MemberShape>? httpHeaders) =>
      _$this._httpHeaders = httpHeaders;

  SetBuilder<MemberShape>? _httpLabels;
  SetBuilder<MemberShape> get httpLabels =>
      _$this._httpLabels ??= new SetBuilder<MemberShape>();
  set httpLabels(covariant SetBuilder<MemberShape>? httpLabels) =>
      _$this._httpLabels = httpLabels;

  MemberShapeBuilder? _httpPayload;
  MemberShapeBuilder get httpPayload =>
      _$this._httpPayload ??= new MemberShapeBuilder();
  set httpPayload(covariant MemberShapeBuilder? httpPayload) =>
      _$this._httpPayload = httpPayload;

  HttpPrefixHeadersBuilder? _httpPrefixHeaders;
  HttpPrefixHeadersBuilder get httpPrefixHeaders =>
      _$this._httpPrefixHeaders ??= new HttpPrefixHeadersBuilder();
  set httpPrefixHeaders(
          covariant HttpPrefixHeadersBuilder? httpPrefixHeaders) =>
      _$this._httpPrefixHeaders = httpPrefixHeaders;

  MemberShapeBuilder? _hostLabel;
  MemberShapeBuilder get hostLabel =>
      _$this._hostLabel ??= new MemberShapeBuilder();
  set hostLabel(covariant MemberShapeBuilder? hostLabel) =>
      _$this._hostLabel = hostLabel;

  HttpQueryBuilder? _httpQuery;
  HttpQueryBuilder get httpQuery =>
      _$this._httpQuery ??= new HttpQueryBuilder();
  set httpQuery(covariant HttpQueryBuilder? httpQuery) =>
      _$this._httpQuery = httpQuery;

  MemberShapeBuilder? _httpQueryParams;
  MemberShapeBuilder get httpQueryParams =>
      _$this._httpQueryParams ??= new MemberShapeBuilder();
  set httpQueryParams(covariant MemberShapeBuilder? httpQueryParams) =>
      _$this._httpQueryParams = httpQueryParams;

  RestJson1ProtocolTraitsBuilder();

  RestJson1ProtocolTraitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memberWireNames = $v.memberWireNames.toBuilder();
      _http = $v.http;
      _httpHeaders = $v.httpHeaders.toBuilder();
      _httpLabels = $v.httpLabels.toBuilder();
      _httpPayload = $v.httpPayload?.toBuilder();
      _httpPrefixHeaders = $v.httpPrefixHeaders?.toBuilder();
      _hostLabel = $v.hostLabel?.toBuilder();
      _httpQuery = $v.httpQuery?.toBuilder();
      _httpQueryParams = $v.httpQueryParams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
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
              memberWireNames: memberWireNames.build(),
              http: BuiltValueNullFieldError.checkNotNull(
                  http, 'RestJson1ProtocolTraits', 'http'),
              httpHeaders: httpHeaders.build(),
              httpLabels: httpLabels.build(),
              httpPayload: _httpPayload?.build(),
              httpPrefixHeaders: _httpPrefixHeaders?.build(),
              hostLabel: _hostLabel?.build(),
              httpQuery: _httpQuery?.build(),
              httpQueryParams: _httpQueryParams?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'memberWireNames';
        memberWireNames.build();

        _$failedField = 'httpHeaders';
        httpHeaders.build();
        _$failedField = 'httpLabels';
        httpLabels.build();
        _$failedField = 'httpPayload';
        _httpPayload?.build();
        _$failedField = 'httpPrefixHeaders';
        _httpPrefixHeaders?.build();
        _$failedField = 'hostLabel';
        _hostLabel?.build();
        _$failedField = 'httpQuery';
        _httpQuery?.build();
        _$failedField = 'httpQueryParams';
        _httpQueryParams?.build();
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

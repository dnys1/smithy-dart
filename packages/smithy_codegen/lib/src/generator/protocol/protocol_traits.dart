import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'protocol_traits.g.dart';

@BuiltValue(instantiable: false)
abstract class ProtocolTraits {
  BuiltMap<MemberShape, String> get memberWireNames;
}

abstract class HttpPrefixHeaders
    implements Built<HttpPrefixHeaders, HttpPrefixHeadersBuilder> {
  factory HttpPrefixHeaders([void Function(HttpPrefixHeadersBuilder) updates]) =
      _$HttpPrefixHeaders;
  HttpPrefixHeaders._();

  HttpPrefixHeadersTrait get trait;
  MemberShape get member;
}

abstract class HttpQuery implements Built<HttpQuery, HttpQueryBuilder> {
  factory HttpQuery([void Function(HttpQueryBuilder) updates]) = _$HttpQuery;
  HttpQuery._();

  HttpQueryTrait get trait;
  MemberShape get member;
}

@BuiltValue(instantiable: false)
abstract class HttpProtocolTraits {
  HttpTrait get http;
  BuiltMap<String, MemberShape> get httpHeaders;
  BuiltSet<MemberShape> get httpLabels;
  MemberShape? get httpPayload;
  HttpPrefixHeaders? get httpPrefixHeaders;
  MemberShape? get hostLabel;
  HttpQuery? get httpQuery;
  MemberShape? get httpQueryParams;
}

abstract class JsonProtocolTraits
    implements
        ProtocolTraits,
        Built<JsonProtocolTraits, JsonProtocolTraitsBuilder> {
  factory JsonProtocolTraits(
          [void Function(JsonProtocolTraitsBuilder) updates]) =
      _$JsonProtocolTraits;
  JsonProtocolTraits._();
}

abstract class RestJson1ProtocolTraits
    implements
        ProtocolTraits,
        HttpProtocolTraits,
        Built<RestJson1ProtocolTraits, RestJson1ProtocolTraitsBuilder> {
  factory RestJson1ProtocolTraits(
          [void Function(RestJson1ProtocolTraitsBuilder) updates]) =
      _$RestJson1ProtocolTraits;
  RestJson1ProtocolTraits._();
}

abstract class XmlProtocolTraits
    implements
        ProtocolTraits,
        Built<XmlProtocolTraits, XmlProtocolTraitsBuilder> {
  factory XmlProtocolTraits([void Function(XmlProtocolTraitsBuilder) updates]) =
      _$XmlProtocolTraits;
  XmlProtocolTraits._();

  String? get wireName;
  XmlNamespaceTrait get namespace;
  BuiltSet<MemberShape> get attributeMembers;
  BuiltSet<MemberShape> get flattenedMembers;
  BuiltMap<MemberShape, XmlNamespaceTrait> get memberNamespaces;
}

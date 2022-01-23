import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:code_builder/code_builder.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'protocol_traits.g.dart';

@BuiltValue(instantiable: false)
abstract class ProtocolTraits {
  BuiltMap<MemberShape, String> get memberWireNames;
}

abstract class ProtocolTraitsBuilder {
  MapBuilder<MemberShape, String> get memberWireNames;
  set memberWireNames(MapBuilder<MemberShape, String> memberWireNames);
  ProtocolTraits build();
}

abstract class HttpPayload implements Built<HttpPayload, HttpPayloadBuilder> {
  factory HttpPayload([void Function(HttpPayloadBuilder) updates]) =
      _$HttpPayload;
  HttpPayload._();

  Reference get symbol;
  MemberShape? get member;
}

abstract class HttpPrefixHeaders
    implements Built<HttpPrefixHeaders, HttpPrefixHeadersBuilder> {
  factory HttpPrefixHeaders([void Function(HttpPrefixHeadersBuilder) updates]) =
      _$HttpPrefixHeaders;
  HttpPrefixHeaders._();

  HttpPrefixHeadersTrait get trait;
  MemberShape get member;
}

@BuiltValue(instantiable: false)
abstract class HttpTraits {}

abstract class HttpInputTraits
    implements Built<HttpInputTraits, HttpInputTraitsBuilder> {
  factory HttpInputTraits([void Function(HttpInputTraitsBuilder) updates]) =
      _$HttpInputTraits;
  HttpInputTraits._();

  BuiltMap<String, MemberShape> get httpHeaders;

  /// Shapes marked with an [HttpLabelTrait] annotation.
  BuiltSet<MemberShape> get httpLabels;
  HttpPrefixHeaders? get httpPrefixHeaders;
  MemberShape? get hostLabel;
  BuiltMap<String, MemberShape> get httpQuery;
  MemberShape? get httpQueryParams;
}

@BuiltValue(instantiable: false)
abstract class HttpResponseTraits {
  BuiltMap<String, MemberShape> get httpHeaders;
  HttpPrefixHeaders? get httpPrefixHeaders;
}

abstract class HttpOutputTraits
    implements
        HttpResponseTraits,
        Built<HttpOutputTraits, HttpOutputTraitsBuilder> {
  factory HttpOutputTraits([void Function(HttpOutputTraitsBuilder) updates]) =
      _$HttpOutputTraits;
  HttpOutputTraits._();

  MemberShape? get httpResponseCode;
}

abstract class HttpErrorTraits
    implements
        HttpResponseTraits,
        Built<HttpErrorTraits, HttpErrorTraitsBuilder> {
  factory HttpErrorTraits([void Function(HttpErrorTraitsBuilder) updates]) =
      _$HttpErrorTraits;
  HttpErrorTraits._();

  ShapeId get shapeId;
  ErrorKind get kind;
  Reference get symbol;
  RetryConfig? get retryConfig;
  int? get statusCode;
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

@BuiltValue(nestedBuilders: false)
abstract class PaginatedTraits
    implements Built<PaginatedTraits, PaginatedTraitsBuilder> {
  factory PaginatedTraits([void Function(PaginatedTraitsBuilder) updates]) =
      _$PaginatedTraits;
  PaginatedTraits._();

  String? get inputTokenPath;
  String? get outputTokenPath;
  String? get pageSizePath;
  String? get itemsPath;

  MemberShape? get inputTokenMember;

  /// The expression to retrieve the input token from a variable.
  Expression Function(Expression)? get inputTokenExpression;

  Reference? get tokenSymbol;

  MemberShape? get outputTokenMember;

  /// The expression to retrieve the output token from a variable.
  Expression Function(Expression)? get outputTokenExpression;

  MemberShape? get itemsMember;

  /// The expression to retrieve the items from a variable
  Expression Function(Expression)? get itemsExpression;

  Reference? get itemsSymbol;

  MemberShape? get pageSizeMember;

  Reference? get pageSizeSymbol;

  /// The expression to retrieve the pageSize from a variable.
  Expression Function(Expression)? get pageSizeExpression;
}

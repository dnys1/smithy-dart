import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'http_request_test_case.g.dart';

@JsonSerializable()
@ShapeIdConverter()
@NullableShapeIdConverter()
class HttpRequestTestCase extends HttpMessageTestCase<HttpRequestTestCase>
    with AWSSerializable, AWSEquatable<HttpRequestTestCase> {
  const HttpRequestTestCase({
    required String id,
    String? documentation,
    required ShapeId protocol,
    ShapeId? authScheme,
    String? body,
    String? bodyMediaType,
    Map<String, Object?> params = const {},
    ShapeId? vendorParamsShape,
    Map<String, Object?> vendorParams = const {},
    Map<String, String> headers = const {},
    List<String> forbidHeaders = const [],
    List<String> requireHeaders = const [],
    List<String> tags = const [],
    AppliesTo? appliesTo,
    required this.method,
    required this.uri,
    this.host,
    this.resolvedHost,
    this.queryParams = const [],
    this.forbidQueryParams = const [],
    this.requireQueryParams = const [],
  }) : super(
          id: id,
          documentation: documentation,
          protocol: protocol,
          authScheme: authScheme,
          body: body,
          bodyMediaType: bodyMediaType,
          params: params,
          vendorParamsShape: vendorParamsShape,
          headers: headers,
          forbidHeaders: forbidHeaders,
          requireHeaders: requireHeaders,
          tags: tags,
          appliesTo: appliesTo,
        );

  factory HttpRequestTestCase.fromJson(Map<String, Object?> json) =>
      _$HttpRequestTestCaseFromJson(json);

  final String method;
  final String uri;
  final String? host;
  final String? resolvedHost;
  final List<String> queryParams;

  /// A list of query string parameter names that must not appear in the
  /// serialized HTTP request.
  ///
  /// Each value MUST appear in the format in which it is sent over the wire;
  /// if a key needs to be percent-encoded, then it MUST appear percent-encoded
  /// in this list.
  final List<String> forbidQueryParams;

  /// A list of query string parameter names that MUST appear in the serialized
  /// request URI, but no assertion is made on the value.
  ///
  /// Each value MUST appear in the format in which it is sent over the wire;
  /// if a key needs to be percent-encoded, then it MUST appear percent-encoded
  /// in this list.
  final List<String> requireQueryParams;

  @override
  List<Object?> get props => [
        ...super.props,
        method,
        uri,
        host,
        resolvedHost,
        queryParams,
        forbidQueryParams,
        requireQueryParams,
      ];

  @override
  Map<String, Object?> toJson() => _$HttpRequestTestCaseToJson(this);
}

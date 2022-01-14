import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'http_request_tests_trait.g.dart';

/// Defines protocol tests for malformed HTTP request handling.
@ShapeIdConverter()
@JsonSerializable()
class HttpRequestTestsTrait
    with AWSSerializable
    implements Trait<HttpRequestTestsTrait> {
  const HttpRequestTestsTrait(this.testCases);

  factory HttpRequestTestsTrait.fromJson(Object? json) =>
      _$HttpRequestTestsTraitFromJson({'testCases': json});

  static const id =
      ShapeId(namespace: 'smithy.test', shape: 'httpRequestTests');

  final List<HttpRequestTestCase> testCases;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [testCases];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpRequestTestsTraitToJson(this);

  @override
  HttpRequestTestsTrait get value => this;
}

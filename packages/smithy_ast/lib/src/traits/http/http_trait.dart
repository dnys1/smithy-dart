import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_ast/src/pattern/uri_pattern.dart';

part 'http_trait.g.dart';

/// Defines the HTTP request and response code bindings of an operation.
@ShapeIdConverter()
@JsonSerializable()
class HttpTrait with AWSSerializable implements Trait<HttpTrait> {
  const HttpTrait({
    required this.method,
    required this.uri,
    this.code = 200,
  });

  factory HttpTrait.fromJson(Object? json) =>
      _$HttpTraitFromJson((json as Map).cast());

  static const id = ShapeId.core('http');

  final String method;
  final UriPattern uri;
  final int code;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [code];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpTraitToJson(this);

  @override
  HttpTrait get value => this;
}

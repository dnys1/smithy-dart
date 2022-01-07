import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'parameterized_http_malformed_test_case.g.dart';

@JsonSerializable()
@ShapeIdConverter()
class ParameterizedHttpMalformedRequestTestCase
    with
        AWSSerializable,
        AWSEquatable<ParameterizedHttpMalformedRequestTestCase> {
  const ParameterizedHttpMalformedRequestTestCase({
    this.documentation,
    required this.id,
    required this.protocol,
    required this.request,
    required this.response,
    this.tags = const [],
    this.testParameters = const {},
  });

  factory ParameterizedHttpMalformedRequestTestCase.fromJson(
          Map<String, Object?> json) =>
      _$ParameterizedHttpMalformedRequestTestCaseFromJson(json);

  final String? documentation;
  final String id;
  final ShapeId protocol;
  final HttpMalformedRequestDefinition request;
  final HttpMalformedResponseDefinition response;
  final List<String> tags;
  final Map<String, List<String>> testParameters;

  Iterable<HttpMalformedRequestTestCase> get testCasesFromParameters sync* {
    if (testParameters.isEmpty) {
      yield HttpMalformedRequestTestCase(
        id: id,
        protocol: protocol,
        request: request,
        response: response,
        tags: tags,
        documentation: documentation,
      );
      return;
    }

    final numParams = testParameters.values.first.length;
    for (var i = 0; i < numParams; i++) {
      final Map<String, String> caseParamaters =
          Map.fromEntries(testParameters.entries.map((entry) {
        return MapEntry(entry.key, entry.value[i]);
      }));

      yield HttpMalformedRequestTestCase(
        id: '${id}_case$i',
        protocol: protocol,
        request: request,
        response: response,
        tags: tags,
        documentation: documentation,
      );
    }
  }

  @override
  Map<String, Object?> toJson() =>
      _$ParameterizedHttpMalformedRequestTestCaseToJson(this);

  @override
  List<Object?> get props => [
        documentation,
        id,
        protocol,
        request,
        response,
        tags,
        testParameters,
      ];
}

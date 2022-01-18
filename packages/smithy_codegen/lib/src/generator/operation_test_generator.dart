import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';

/// Generates test classes for shapes with HTTP tests.
class OperationTestGenerator extends LibraryGenerator<OperationShape>
    with OperationGenerationContext {
  OperationTestGenerator(OperationShape shape, CodegenContext context)
      : super(shape, context: context);

  @override
  Library generate() {
    builder.name = builder.name! + '_test';
    builder.body.addAll([
      _mainMethod,
    ]);

    return builder.build();
  }

  /// The `main` test method.
  Method get _mainMethod => Method.returnsVoid(
        (b) => b
          ..name = 'main'
          ..body = Block.of([
            ..._httpRequestTests,
          ]),
      );

  /// HTTP request tests.
  Iterable<Code> get _httpRequestTests sync* {
    final httpRequestTestCases =
        shape.getTrait<HttpRequestTestsTrait>()?.testCases ?? const [];
    for (var testCase in httpRequestTestCases) {
      yield DartTypes.smithyTest.httpRequestTest.call([], {
        'operation': symbol.newInstance([]),
        'testCaseJson': literalMap(testCase.toJson()),
        'input': inputSymbol.newInstance([
          Method((m) => m
            ..requiredParameters.add(Parameter((p) => p..name = 'b'))
            ..body = _buildInput(testCase.params)).closure,
        ])
      }).statement;
    }
  }

  Code _buildInput(Map<String, Object?> params) {
    Expression builder = refer('b');
    params.forEach((key, value) {
      builder = builder.cascade(key).assign(literal(value));
    });
    return builder.code;
  }
}

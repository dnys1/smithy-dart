import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';

/// Generates test classes for shapes with HTTP tests.
class OperationTestGenerator extends LibraryGenerator<OperationShape>
    with OperationGenerationContext {
  OperationTestGenerator(OperationShape shape, CodegenContext context)
      : super(shape, context: context);

  late final httpRequestTestCases =
      shape.getTrait<HttpRequestTestsTrait>()?.testCases ?? const [];
  late final testProtocols = httpRequestTestCases
      .map((t) => t.protocol)
      .toSet()
      .map((protocol) =>
          context.serviceProtocols.firstWhere((p) => p.shapeId == protocol))
      .toList();
  late final testSerializers = {
    for (final protocol in testProtocols)
      protocol.shapeId: StructureSerializerGenerator(
        inputShape,
        context,
        protocol,
        config: const SerializerConfig.test(),
      ).generate(),
  };

  @override
  Library generate() {
    builder.name = builder.name! + '_test';

    // Generic JSON serializer for deserializing the input params
    builder.body.addAll([
      _mainMethod,
      ...testSerializers.values.whereType<Class>(),
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
    for (var testCase in httpRequestTestCases) {
      final serializer = testSerializers[testCase.protocol];
      yield DartTypes.smithyTest.httpRequestTest.call([], {
        'operation': symbol.newInstance([]),
        'testCaseJson': literalMap(testCase.toJson()),
        if (serializer != null)
          'inputSerializer': refer(serializer.name).constInstance([]),
      }).statement;
    }
  }
}

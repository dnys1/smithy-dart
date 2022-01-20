import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';

/// Generates test classes for shapes with HTTP tests.
class OperationTestGenerator extends LibraryGenerator<OperationShape>
    with OperationGenerationContext {
  OperationTestGenerator(OperationShape shape, CodegenContext context)
      : super(shape, context: context);

  late final httpRequestTestCases = shape
          .getTrait<HttpRequestTestsTrait>()
          ?.testCases
          .where((t) => t.appliesTo != AppliesTo.server) ??
      const [];
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
        'testCase': DartTypes.smithyTest.httpRequestTestCase.constInstance([], {
          'id': literal(testCase.id),
          'documentation': literal(testCase.documentation),
          'protocol': DartTypes.smithy.shapeId.constInstance([], {
            'namespace': literalString(testCase.protocol.namespace),
            'shape': literalString(testCase.protocol.shape),
          }),
          'authScheme': literal(testCase.authScheme),
          'body': literal(testCase.body),
          'bodyMediaType': literal(testCase.bodyMediaType),
          'params': literal(testCase.params),
          'vendorParamsShape': testCase.vendorParamsShape == null
              ? literalNull
              : DartTypes.smithy.shapeId.constInstance([], {
                  'namespace':
                      literalString(testCase.vendorParamsShape!.namespace),
                  'shape': literalString(testCase.vendorParamsShape!.shape),
                }),
          'vendorParams': literal(testCase.vendorParams),
          'headers': literal(testCase.headers),
          'forbidHeaders': literal(testCase.forbidHeaders),
          'requireHeaders': literal(testCase.requireHeaders),
          'tags': literal(testCase.tags),
          'appliesTo': testCase.appliesTo == null
              ? literalNull
              : DartTypes.smithyTest.appliesTo
                  .property(testCase.appliesTo!.name),
          'method': literal(testCase.method),
          'uri': literal(testCase.uri),
          'host': literal(testCase.host),
          'resolvedHost': literal(testCase.resolvedHost),
          'queryParams': literal(testCase.queryParams),
          'forbidQueryParams': literal(testCase.forbidQueryParams),
          'requireQueryParams': literal(testCase.requireQueryParams),
        }),
        if (serializer != null)
          'inputSerializer': refer(serializer.name).constInstance([]),
      }).statement;
    }
  }
}

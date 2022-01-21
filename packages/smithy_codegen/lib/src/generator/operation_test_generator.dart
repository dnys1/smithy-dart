import 'dart:collection';

import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/serialization/structure_serializer_generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

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
  late final httpResponseTestCases = shape
          .getTrait<HttpResponseTestsTrait>()
          ?.testCases
          .where((t) => t.appliesTo != AppliesTo.server) ??
      const [];
  late final errorShapes = shape.errors
      .map((err) => context.shapeFor(err.target))
      .cast<StructureShape>()
      .toList();
  late final httpErrorResponseTestCases = {
    for (final shape in errorShapes)
      shape: shape
              .getTrait<HttpResponseTestsTrait>()
              ?.testCases
              .where((t) => t.appliesTo != AppliesTo.server) ??
          const [],
  };

  late final testProtocols = {
    ...httpRequestTestCases.map((t) => t.protocol),
    ...httpResponseTestCases.map((t) => t.protocol),
    ...httpErrorResponseTestCases.values
        .expand((el) => el)
        .map((t) => t.protocol),
  }
      .map((protocol) =>
          context.serviceProtocols.firstWhere((p) => p.shapeId == protocol))
      .toList();

  late final inputSerializers = {
    for (final protocol in testProtocols)
      protocol.shapeId: StructureSerializerGenerator(
        inputShape,
        context,
        protocol,
        config: const SerializerConfig.test(),
      ).generate(),
  };
  late final outputSerializers = {
    for (final protocol in testProtocols)
      protocol.shapeId: StructureSerializerGenerator(
        outputShape,
        context,
        protocol,
        config: const SerializerConfig.test(),
      ).generate(),
  };
  late final errorSerializers = {
    for (final errorShape in errorShapes)
      errorShape: {
        for (final protocol in testProtocols)
          protocol.shapeId: StructureSerializerGenerator(
            errorShape,
            context,
            protocol,
            config: const SerializerConfig.test(),
          ).generate(),
      }
  };

  @override
  Library generate() {
    builder.name = builder.name! + '_test';

    // Generic JSON serializer for deserializing the input params
    builder.body.addAll([
      _mainMethod,
      ...LinkedHashSet<Class>(
        equals: (a, b) => a.name == b.name,
        hashCode: (key) => key.name.hashCode,
      )..addAll([
          ...inputSerializers.values.whereType<Class>(),
          ...outputSerializers.values.whereType<Class>(),
          ...errorSerializers.values
              .expand((el) => el.values)
              .whereType<Class>()
        ]),
    ]);

    return builder.build();
  }

  /// The `main` test method.
  Method get _mainMethod => Method.returnsVoid(
        (b) => b
          ..name = 'main'
          ..body = Block.of([
            ..._httpRequestTests,
            ..._httpResponseTests,
            ..._httpErrorResponseTests,
          ]),
      );

  /// HTTP request tests.
  Iterable<Code> get _httpRequestTests sync* {
    for (var testCase in httpRequestTestCases) {
      final serializer = inputSerializers[testCase.protocol];
      final testCall = DartTypes.smithyTest.httpRequestTest.call([], {
        'operation': symbol.newInstance([]),
        'testCase': DartTypes.smithyTest.httpRequestTestCase.constInstance([], {
          'id': literal(testCase.id),
          'documentation': literal(testCase.documentation),
          'protocol': testCase.protocol.constructed,
          'authScheme': literal(testCase.authScheme),
          'body': testCase.body == null
              ? literalNull
              : literalString(_escapeBody(testCase.body!)),
          'bodyMediaType': literal(testCase.bodyMediaType),
          'params': literal(_escapeParams(testCase.params)),
          'vendorParamsShape':
              testCase.vendorParamsShape?.constructed ?? literalNull,
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
      });
      yield _buildTest(testCase, testCall);
    }
  }

  /// HTTP response tests.
  ///
  /// https://awslabs.github.io/smithy/1.0/spec/http-protocol-compliance-tests.html#httpresponsetests
  Iterable<Code> get _httpResponseTests sync* {
    for (var testCase in httpResponseTestCases) {
      final serializer = outputSerializers[testCase.protocol];
      final testCall = DartTypes.smithyTest.httpResponseTest.call([], {
        'operation': symbol.newInstance([]),
        'testCase': _buildResponseTestCase(testCase),
        if (serializer != null)
          'outputSerializer': refer(serializer.name).constInstance([]),
      });
      yield _buildTest(testCase, testCall);
    }
  }

  /// HTTP error response tests.
  ///
  /// https://awslabs.github.io/smithy/1.0/spec/http-protocol-compliance-tests.html#httpresponsetests
  Iterable<Code> get _httpErrorResponseTests sync* {
    for (final shape in errorShapes) {
      final testCases = httpErrorResponseTestCases[shape]!;
      for (var testCase in testCases) {
        final serializer = errorSerializers[shape]![testCase.protocol];
        final testCall = DartTypes.smithyTest.httpErrorResponseTest.call([], {
          'operation': symbol.newInstance([]),
          'testCase': _buildResponseTestCase(testCase),
          if (serializer != null)
            'errorSerializer': refer(serializer.name).constInstance([]),
        });
        yield _buildTest(testCase, testCall);
      }
    }
  }

  Code _buildTest(HttpMessageTestCase testCase, Expression testCall) {
    return Block.of([
      Code.scope((allocate) =>
          allocate(DartTypes.test.test) +
          "('${testCase.id} (${testCase.protocol.shape})', () async {"),
      testCall.awaited.statement,
      Code('});'),
    ]);
  }

  Expression _buildResponseTestCase(HttpResponseTestCase testCase) =>
      DartTypes.smithyTest.httpResponseTestCase.constInstance([], {
        'id': literal(testCase.id),
        'documentation': literal(testCase.documentation),
        'protocol': testCase.protocol.constructed,
        'authScheme': literal(testCase.authScheme),
        'body': testCase.body == null
            ? literalNull
            : literalString(_escapeBody(testCase.body!)),
        'bodyMediaType': literal(testCase.bodyMediaType),
        'params': literal(_escapeParams(testCase.params)),
        'vendorParamsShape':
            testCase.vendorParamsShape?.constructed ?? literalNull,
        'vendorParams': literal(testCase.vendorParams),
        'headers': literal(testCase.headers),
        'forbidHeaders': literal(testCase.forbidHeaders),
        'requireHeaders': literal(testCase.requireHeaders),
        'tags': literal(testCase.tags),
        'appliesTo': testCase.appliesTo == null
            ? literalNull
            : DartTypes.smithyTest.appliesTo.property(testCase.appliesTo!.name),
        'code': literal(testCase.code),
      });

  String _escapeBody(String body) => body.replaceAll('\$', '\\\$');

  Map<String, Object?> _escapeParams(Map<String, Object?> params) =>
      {...params}..updateAll((key, value) {
          if (value is String) {
            return _escapeBody(value);
          }
          if (value is Map) {
            return _escapeParams(value.cast());
          }
          return value;
        });
}

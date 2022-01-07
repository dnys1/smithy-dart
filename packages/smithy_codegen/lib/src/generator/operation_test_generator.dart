import 'package:code_builder/code_builder.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';

/// Generates test classes for shapes with HTTP tests.
class OperationTestGenerator extends LibraryGenerator<OperationShape> {
  OperationTestGenerator(OperationShape shape, CodegenContext context)
      : super(shape, context: context);

  @override
  Library generate() {
    builder.body.addAll([
      _mainMethod,
    ]);

    return builder.build();
  }

  /// The `main` test method.
  Method get _mainMethod => Method.returnsVoid(
        (b) => b
          ..name = 'main'
          ..body = Block.of(_protocolTestMethods),
      );

  Iterable<Code> get _protocolTestMethods sync* {
    final httpRequestTestCases =
        shape.getTrait<HttpRequestTestsTrait>()?.testCases ?? const [];
    for (var testCase in httpRequestTestCases) {
      final protocol = context.serviceProtocols
          .singleWhere((def) => def.shapeId == testCase.protocol);
      yield DartTypes.smithyTest.httpRequestTest.call([
        DartTypes.smithyTest.httpRequestTestCase.newInstanceNamed('fromJson', [
          literalMap(testCase.toJson()),
        ]),
        protocol.instantiableProtocolSymbol.constInstance([]),
      ]).statement;
    }
  }
}

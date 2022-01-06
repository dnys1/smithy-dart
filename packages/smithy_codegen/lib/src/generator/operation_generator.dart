import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/structure_generation_context.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

class OperationGenerator extends LibraryGenerator<OperationShape>
    with HttpGenerationContext {
  OperationGenerator(OperationShape shape, CodegenContext context)
      : super(shape, context: context);

  late final inputShape =
      context.shapeFor(shape.input?.target ?? Shape.unit) as StructureShape;

  late final inputSymbol = context.symbolFor(shape.input?.target ?? Shape.unit);

  late final _inputPayload = httpPayload(inputShape, inputSymbol);

  late final outputShape =
      context.shapeFor(shape.output?.target ?? Shape.unit) as StructureShape;

  late final outputSymbol =
      context.symbolFor(shape.output?.target ?? Shape.unit);

  late final errorSymbols =
      shape.errors.map((error) => context.symbolFor(error.target));

  late final _httpTrait = shape.getTrait<HttpTrait>();

  @override
  String get className {
    if (super.className.endsWith('Operation')) {
      return super.className;
    }
    return '${super.className}_Operation'.pascalCase;
  }

  @override
  Library generate() {
    builder.body.add(_operationClass);

    return builder.build();
  }

  /// The operation's implementation class.
  Class get _operationClass => Class(
        (c) => c
          ..docs.addAll([
            if (shape.docs != null) formatDocs(shape.docs!),
          ])
          ..extend = DartTypes.smithy.httpOperation(
            _inputPayload.symbol,
            inputSymbol,
            outputSymbol,
          )
          ..constructors.add(_primaryConstructor)
          ..methods.addAll([
            if (_httpTrait != null) ..._httpOverrides(_httpTrait!),
            _protocolsGetter,
          ]),
      );

  /// The primary, const constructor.
  Constructor get _primaryConstructor => Constructor((c) => c..constant = true);

  /// The required HTTP operation overrides.
  Iterable<Method> _httpOverrides(HttpTrait http) sync* {
    // The `baseUri` getter
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.uri
        ..type = MethodType.getter
        ..name = 'baseUri'
        ..lambda = true
        ..body = const Code('Uri()'),
    );

    // The `method` getter
    final method = http.method;
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.string
        ..type = MethodType.getter
        ..name = 'method'
        ..lambda = true
        ..body = literalString(method).code,
    );

    // The `path` getter
    final path = http.uri;
    yield Method(
      (m) => m
        ..annotations.add(DartTypes.core.override)
        ..returns = DartTypes.core.string
        ..type = MethodType.getter
        ..name = 'path'
        ..lambda = true
        ..body = literalString(path).code,
    );
  }

  /// The `protocols` override getter.
  Method get _protocolsGetter => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.list(
            // TODO: Support non-HTTP calls
            DartTypes.smithy.httpProtocol(
              _inputPayload.symbol,
              inputSymbol,
              outputSymbol,
            ),
          )
          ..name = 'protocols'
          ..type = MethodType.getter
          ..name = 'protocols'
          ..body = literalConstList([
            for (var protocol in context.serviceProtocols)
              protocol.instantiableProtocolSymbol.constInstance([]),
          ]).code,
      );
}

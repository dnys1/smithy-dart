import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';

class ServiceClientGenerator extends LibraryGenerator<ServiceShape> {
  ServiceClientGenerator(ServiceShape shape, CodegenContext context)
      : super(shape, context: context);

  late final List<OperationShape> _operations =
      context.shapes.values.whereType<OperationShape>().toList();

  @override
  String get className => context.serviceClientName;

  @override
  Library generate() {
    builder
      ..name = context.serviceClientLibrary.libraryName
      ..body.add(_clientClass);
    return builder.build();
  }

  Class get _clientClass => Class((c) {
        c
          ..name = className
          ..constructors.add(_clientConstructor)
          ..methods.addAll(_operationMethods);
      });

  Constructor get _clientConstructor => Constructor();

  /// Generate a callable method for each operation.
  Iterable<Method> get _operationMethods sync* {
    for (final operation in _operations) {
      if (!operation.hasTrait<HttpTrait>()) {
        continue;
      }
      final operationInput = operation.inputSymbol(context);
      var operationOutput = operation.outputSymbol(context);
      // Replace Unit with void for nicer DX
      if (operationOutput == DartTypes.smithy.unit) {
        operationOutput = DartTypes.core.void$;
      }
      yield Method(
        (m) => m
          ..returns = operation.isStreaming
              ? DartTypes.async.stream(operationOutput)
              : DartTypes.async.future(operationOutput)
          ..name = operation.dartName.camelCase
          ..lambda = false
          ..requiredParameters.add(Parameter((p) => p
            ..type = operationInput
            ..name = 'input'))
          ..body = context
              .symbolFor(operation.shapeId)
              .newInstance([])
              .property('run')
              .call([
                refer('input'),
              ])
              .returned
              .statement,
      );
    }
  }
}

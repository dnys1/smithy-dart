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
          ..fields.addAll(_operationFields)
          ..methods.addAll(_operationMethods);
      });

  Constructor get _clientConstructor => Constructor();

  /// The late final fields for the operations, so that they
  /// only need to be built once.
  Iterable<Field> get _operationFields sync* {
    for (final operation in _operations) {
      yield Field(
        (f) => f
          ..late = true
          ..modifier = FieldModifier.final$
          ..name = '_' + operation.dartName.camelCase
          ..assignment =
              context.symbolFor(operation.shapeId).newInstance([]).code,
      );
    }
  }

  /// Generate a callable method for each operation.
  Iterable<Method> get _operationMethods sync* {
    for (final operation in _operations) {
      final fieldName = '_' + operation.dartName.camelCase;
      final operationInput = operation.inputSymbol(context);
      final operationOutput = operation.outputSymbol(context);
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
          ..body = refer(fieldName)
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

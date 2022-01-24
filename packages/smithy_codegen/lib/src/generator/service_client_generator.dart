import 'dart:collection';

import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

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
          ..methods.addAll(_operationMethods)
          ..fields.addAll([
            ...LinkedHashSet<Field>(
              equals: (a, b) => a.name == b.name,
              hashCode: (key) => key.name.hashCode,
            )..addAll(_operations.expand((op) => op.protocolFields(context))),
          ]);
      });

  Constructor get _clientConstructor => Constructor(
        (ctor) => ctor
          ..constant = true
          ..optionalParameters.addAll([
            ...LinkedHashSet<Parameter>(
              equals: (a, b) => a.name == b.name,
              hashCode: (key) => key.name.hashCode,
            )..addAll(
                _operations.expand((op) => op.constructorParameters(context)),
              ),
          ]),
      );

  /// Generate a callable method for each operation.
  Iterable<Method> get _operationMethods sync* {
    for (final operation in _operations) {
      final httpTrait = operation.httpTrait(context);
      if (httpTrait == null) {
        continue;
      }
      final operationInput = operation.inputSymbol(context);
      var operationOutput = operation.outputSymbol(context);
      // Replace Unit with void for nicer DX
      if (operationOutput == DartTypes.smithy.unit) {
        operationOutput = DartTypes.core.void$;
      }
      final paginatedTraits = operation.paginatedTraits(context);
      final isPaginated = paginatedTraits != null;
      yield Method(
        (m) => m
          ..docs.addAll([
            if (operation.docs != null) formatDocs(operation.docs!),
          ])
          ..returns = isPaginated
              ? DartTypes.async.future(DartTypes.smithy.paginatedResult(
                  paginatedTraits.items?.symbol.unboxed ?? DartTypes.core.void$,
                  paginatedTraits.pageSize?.symbol.unboxed ??
                      DartTypes.core.void$,
                ))
              : DartTypes.async.future(operationOutput)
          ..name = operation.shapeId.shape.camelCase
          ..lambda = false
          ..requiredParameters.addAll([
            if (operationInput != DartTypes.smithy.unit)
              Parameter((p) => p
                ..type = operationInput
                ..name = 'input')
          ])
          ..body = context
              .symbolFor(operation.shapeId)
              .newInstance([], {
                for (final field in operation.protocolFields(context))
                  field.name: refer(field.name),
              })
              .property(isPaginated ? 'runPaginated' : 'run')
              .call([
                if (operationInput == DartTypes.smithy.unit)
                  DartTypes.smithy.unit.constInstance([])
                else
                  refer('input'),
              ])
              .returned
              .statement,
      );
    }
  }
}

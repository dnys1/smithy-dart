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
  ServiceClientGenerator(
    ServiceShape shape,
    CodegenContext context, {
    SmithyLibrary? smithyLibrary,
  }) : super(
          shape,
          context: context,
          smithyLibrary: smithyLibrary,
        );

  late final List<OperationShape> _operations =
      context.shapes.values.whereType<OperationShape>().toList();

  bool get isAwsService => shape.hasTrait<ServiceTrait>();

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
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..constructors.add(_clientConstructor)
          ..methods.addAll(_operationMethods)
          ..fields.addAll([
            ...LinkedHashSet<Field>(
              equals: (a, b) => a.name == b.name,
              hashCode: (key) => key.name.hashCode,
            )..addAll(
                _operations.expand((op) => op.protocolFields(context)),
              ),
          ]);
      });

  Constructor get _clientConstructor => Constructor(
        (ctor) => ctor
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..constant = true
          ..optionalParameters.addAll([
            ...LinkedHashSet<Parameter>(
              equals: (a, b) => a.name == b.name,
              hashCode: (key) => key.name.hashCode,
            )..addAll(
                _operations.expand((op) => op.constructorParameters(context)),
              ),
          ])
          ..initializers.addAll({
            ..._operations.expand((op) => op.constructorInitializers(context))
          }.map(
            (params) => refer(params.item1).assign(refer(params.item2)).code,
          )),
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
      String _public(String s) => s.startsWith('_') ? s.substring(1) : s;
      yield Method(
        (m) => m
          ..docs.addAll([
            if (operation.hasDocs(context)) operation.formattedDocs(context),
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
                  _public(field.name): refer(field.name),
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

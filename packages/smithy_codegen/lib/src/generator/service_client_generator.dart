import 'dart:collection';

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/config_parameter.dart';
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
    if (_operations.isNotEmpty) {
      builder
        ..name = context.serviceClientLibrary.libraryName
        ..body.add(_clientClass);
    }
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
          ..fields.addAll(protocolFields);
      });

  Constructor get _clientConstructor => Constructor(
        (ctor) => ctor
          ..docs.addAll([
            if (shape.hasDocs(context)) shape.formattedDocs(context),
          ])
          ..constant = true
          ..optionalParameters.addAll(constructorParameters)
          ..initializers.addAll(constructorInitializers),
      );

  Iterable<Field> get protocolFields => LinkedHashSet<Field>(
        equals: (a, b) => a.name == b.name,
        hashCode: (key) => key.name.hashCode,
      )..addAll(
          _operations.expand((op) => op.protocolFields(context)).map(
                // Fields won't be overriding anything on the service client
                (field) => field.rebuild((f) {
                  f.annotations.clear();
                  if (!f.name!.startsWith('_')) {
                    f.name = '_${f.name}';
                  }
                }),
              ),
        );

  Iterable<Parameter> get constructorParameters =>
      operationParameters.where((p) => p.location.inConstructor).map((param) {
        return Parameter(
          (p) => p
            ..type = param.type
            ..required = param.required
            ..name = param.name
            ..named = true,
        );
      });

  Iterable<ConfigParameter> get operationParameters =>
      LinkedHashSet<ConfigParameter>(
        equals: (a, b) => a.name == b.name,
        hashCode: (key) => key.name.hashCode,
      )..addAll(
          _operations.expand((op) => op.operationParameters(context)),
        );

  Iterable<Code> get constructorInitializers => constructorParameters.map(
        (param) => refer('_${param.name}').assign(refer(param.name)).code,
      );

  /// Generate a callable method for each operation.
  Iterable<Method> get _operationMethods sync* {
    for (final operation in _operations) {
      final httpTrait = operation.httpTrait(context);
      if (httpTrait == null) {
        continue;
      }
      final operationContext = OperationGenerationContext(context, operation);
      final operationInput = operationContext.inputSymbol;
      var operationOutput = operationContext.outputSymbol;
      // Replace Unit with void for nicer DX
      if (operationOutput == DartTypes.smithy.unit) {
        operationOutput = DartTypes.core.void$;
      }
      final Reference returnType;
      final paginatedTraits = operationContext.paginatedTraits;
      final isPaginated = paginatedTraits != null;
      if (isPaginated) {
        returnType = DartTypes.async.future(DartTypes.smithy.paginatedResult(
          paginatedTraits.items?.symbol.unboxed ?? DartTypes.core.void$,
          paginatedTraits.pageSize?.symbol.unboxed ?? DartTypes.core.void$,
        ));
      } else {
        if (operationContext.isEventStreamOperation) {
          returnType = DartTypes.smithy.streamConnection(
            operationInput,
            operationOutput,
          );
        } else {
          returnType = DartTypes.async.future(operationOutput);
        }
      }
      String _public(String s) => s.startsWith('_') ? s.substring(1) : s;
      yield Method(
        (m) => m
          ..docs.addAll([
            if (operation.hasDocs(context)) operation.formattedDocs(context),
          ])
          ..returns = returnType
          ..name = operation.shapeId.shape.camelCase
          ..lambda = false
          ..requiredParameters.addAll([
            if (operationInput != DartTypes.smithy.unit)
              Parameter((p) => p
                ..type = operationInput
                ..name = 'input')
          ])
          ..optionalParameters.addAll(
              operationParameters.where((p) => p.location.inRun).map((param) {
            return Parameter(
              (p) => p
                ..required = false
                ..toThis = false
                ..type = param.type.boxed
                ..name = param.name
                ..named = true,
            );
          }))
          ..body = context
              .symbolFor(operation.shapeId)
              .newInstance([], {
                for (final field in protocolFields)
                  _public(field.name): refer(field.name),
              })
              .property(isPaginated ? 'runPaginated' : 'run')
              .call([
                if (operationInput == DartTypes.smithy.unit)
                  DartTypes.smithy.unit.constInstance([])
                else
                  refer('input'),
              ], {
                for (final param
                    in operationParameters.where((p) => p.location.inRun))
                  param.name: refer(param.name)
              })
              .returned
              .statement,
      );
    }
  }
}

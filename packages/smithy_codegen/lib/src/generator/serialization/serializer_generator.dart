import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/generation_context.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/serializer_config.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/protocol_ext.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

/// Generates a serializer class for [shape] and [protocol].
abstract class SerializerGenerator<S extends NamedMembersShape>
    extends ShapeGenerator<S, Class?> with NamedMembersGenerationContext {
  SerializerGenerator(
    S shape,
    CodegenContext context,
    this.protocol, {
    SerializerConfig? config,
  }) : super(shape, context) {
    this.config = config ?? protocol.serializerConfig;
  }

  late final SerializerConfig config;
  final ProtocolDefinitionTrait protocol;

  String get serializerClassName {
    final withProtocolName = protocol.isSynthetic ? '' : protocol.shapeId.shape;
    return '_' +
        '${shape.shapeId.shape}_${withProtocolName}_Serializer'.pascalCase;
  }

  /// The symbol to be serialized.
  ///
  /// When generating test case serializers, it's always the full symbol.
  Reference get serializedSymbol;

  /// The primary, unnamed initializer.
  Constructor get constructor => Constructor(
        (c) => c
          ..constant = true
          ..initializers.add(
            refer('super').call([
              // Use the unprocessed shape name as the wire name, since this is
              // what we can expect to see for protocols which use it like XML.
              literalString(shape.shapeId.shape),
            ]).code,
          ),
      );

  /// The `supportedProtocols` getter.
  Method get supportedProtocols => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.iterable(DartTypes.smithy.shapeId)
          ..type = MethodType.getter
          ..name = 'supportedProtocols'
          ..lambda = true
          ..body = literalConstList([
            if (!protocol.isSynthetic) protocol.shapeId.constructed,
          ]).code,
      );

  /// The deserialize method.
  Method get deserialize => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = serializedSymbol
          ..name = 'deserialize'
          ..requiredParameters.addAll([
            Parameter((p) => p
              ..type = DartTypes.builtValue.serializers
              ..name = 'serializers'),
            Parameter((p) => p
              ..type = DartTypes.core.iterable(DartTypes.core.object.boxed)
              ..name = 'serialized'),
          ])
          ..optionalParameters.add(
            Parameter((p) => p
              ..type = DartTypes.builtValue.fullType
              ..named = true
              ..name = 'specifiedType'
              ..defaultTo =
                  DartTypes.builtValue.fullType.property('unspecified').code),
          )
          ..body = deserializeCode,
      );

  /// Returns the code needed to deserialize [shape].
  Code get deserializeCode;

  // The serialize method.
  Method get serialize => Method(
        (m) => m
          ..annotations.add(DartTypes.core.override)
          ..returns = DartTypes.core.iterable(DartTypes.core.object.boxed)
          ..name = 'serialize'
          ..requiredParameters.addAll([
            Parameter((p) => p
              ..type = DartTypes.builtValue.serializers
              ..name = 'serializers'),
            Parameter((p) => p
              ..type = DartTypes.core.object.boxed
              ..name = 'object'),
          ])
          ..optionalParameters.add(
            Parameter((p) => p
              ..type = DartTypes.builtValue.fullType
              ..named = true
              ..name = 'specifiedType'
              ..defaultTo =
                  DartTypes.builtValue.fullType.property('unspecified').code),
          )
          ..body = serializeCode,
      );

  /// Returns the code needed to serialize [shape].
  Code get serializeCode;

  /// Serializes [member] as a timestamp shape.
  Expression serializerFor(MemberShape member, Expression memberRef) {
    final type = context.shapeFor(member.target).getType();

    // For timestamps, check if there is a custom serializer needed.
    if (type == ShapeType.timestamp) {
      final format = member.timestampFormat ?? shape.timestampFormat;
      if (format != null) {
        return refer('serializers').property('serializeWith').call([
          DartTypes.smithy.timestampSerializer.property(format.name),
          memberRef,
        ]);
      }
    }

    // For timestamps without custom serialization annotations, and all other
    // shapes, use the default serializer for the context.
    return refer('serializers').property('serialize').call([
      memberRef,
    ], {
      'specifiedType': memberSymbols[member]!.fullType,
    });
  }

  /// Deserializes [member] using `built_value` constructs.
  Expression deserializerFor(
    MemberShape member, {
    Expression value = const Reference('value'),
    Reference? memberSymbol,
  }) {
    final type = context.shapeFor(member.target).getType();

    // For timestamps, check if there is a custom serializer needed.
    if (type == ShapeType.timestamp) {
      final format = member.timestampFormat ?? shape.timestampFormat;
      if (format != null) {
        return refer('serializers').property('deserializeWith').call([
          DartTypes.smithy.timestampSerializer.property(format.name),
          value,
        ]);
      }
    }

    // For timestamps without custom serialization annotations, and all other
    // shapes, use the default serializer for the context.
    return refer('serializers').property('deserialize').call([
      value,
    ], {
      'specifiedType': (memberSymbol ?? memberSymbols[member])!.fullType,
    });
  }
}

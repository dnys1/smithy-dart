import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/model/smithy_library.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

class HttpPayload {
  const HttpPayload(this.symbol, [this.member]);

  final Reference symbol;
  final MemberShape? member;
}

/// Useful properties when generating structure shapes.
mixin StructureGenerationContext<U> on ShapeGenerator<StructureShape, U> {
  /// All members on [shape] which are generated.
  ///
  /// Can be overriden to limit the members to be code generated.
  Iterable<MemberShape> get members => shape.members.values;

  /// Members sorted by their re-cased Dart name.
  late final List<MemberShape> sortedMembers = members.toList()
    ..sort((a, b) {
      return a.dartName.compareTo(b.dartName);
    });

  /// Member shapes and their [Reference] types.
  late final Map<MemberShape, Reference> memberSymbols = {
    for (var member in sortedMembers)
      member: context
          .symbolFor(member.target, shape)
          .withBoxed(member.isNullable(shape)),
  };

  /// The symbol for the built class, to be generated by `built_value`.
  late final Reference builtSymbol =
      symbol.typeRef.rebuild((t) => t.symbol = '_\$$className');

  /// The symbol for the builder class, to be generated by `built_value`.
  late final Reference builderSymbol =
      symbol.typeRef.rebuild((t) => t.symbol = '${className}Builder');
}

mixin HttpGenerationContext<S extends Shape, U> on ShapeGenerator<S, U> {
  /// The symbol for the HTTP payload, or [symbol] if not supported.
  HttpPayload httpPayload(StructureShape shape, Reference symbol) {
    final payloadMember = shape.members.values.firstWhereOrNull((shape) {
      return shape.hasTrait<HttpPayloadTrait>();
    });
    if (payloadMember == null) {
      return HttpPayload(symbol);
    }
    return HttpPayload(
      context.symbolFor(payloadMember.target, shape),
      payloadMember,
    );
  }
}

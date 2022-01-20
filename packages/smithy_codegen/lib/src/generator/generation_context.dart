import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/generator.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

mixin NamedMembersGenerationContext<S extends NamedMembersShape, U>
    on ShapeGenerator<S, U> {
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
}

/// Useful properties when generating union shapes.
mixin UnionGenerationContext<U> on ShapeGenerator<UnionShape, U>
    implements NamedMembersGenerationContext<UnionShape, U> {
  static const sdkUnknown = 'sdkUnknown';

  late final MemberShape unknownMember = MemberShape(
    (s) => s
      ..memberName = sdkUnknown
      ..shapeId = shape.shapeId.replace(member: sdkUnknown)
      ..target = ShapeId.core('Document'),
  );
  late final Reference unknownMemberSymbol =
      context.symbolFor(unknownMember.target, shape).unboxed;

  late final List<MemberShape> allMembers = [...sortedMembers, unknownMember];

  /// Whether this represents the unknown value type.
  bool isUnknownMember(MemberShape member) =>
      member.memberName == UnionGenerationContext.sdkUnknown;

  /// The name of this member as a union variant.
  String variantName(MemberShape member) => member.memberName.camelCase;

  /// The name of the union variant's private class name.
  String variantClassName(MemberShape member) =>
      '_' + '${className}_${member.memberName}'.pascalCase;
}

/// Useful properties when generating structure shapes.
mixin StructureGenerationContext<U> on ShapeGenerator<StructureShape, U>
    implements NamedMembersGenerationContext<StructureShape, U> {
  /// The symbol for the HTTP payload.
  late final Reference? payloadSymbol = (httpInputTraits?.httpPayload ??
          httpOutputTraits?.httpPayload ??
          httpErrorTraits?.httpPayload)
      ?.symbol;

  /// The symbol for the built class, to be generated by `built_value`.
  late final Reference builtSymbol =
      symbol.typeRef.rebuild((t) => t.symbol = '_\$$className');

  /// The symbol for the builder class, to be generated by `built_value`.
  late final Reference builderSymbol =
      symbol.typeRef.rebuild((t) => t.symbol = '${className}Builder');

  /// The symbol for the built payload class, to be generated by `built_value`.
  late final Reference? builtPayloadSymbol = hasBuiltPayload
      ? symbol.typeRef.rebuild((t) => t.symbol = '_\$${className}Payload')
      : null;

  /// The symbol for the payload's builder class, to be generated by
  /// `built_value`.
  late final Reference? payloadBuilderSymbol = hasBuiltPayload
      ? symbol.typeRef.rebuild((t) => t.symbol = '${className}PayloadBuilder')
      : null;

  /// The resolved HTTP input traits.
  late final HttpInputTraits? httpInputTraits = shape.httpInputTraits(context);

  /// The resolved HTTP output traits.
  late final HttpOutputTraits? httpOutputTraits =
      shape.httpOutputTraits(context);

  /// The resolved HTTP error traits.
  late final HttpErrorTraits? httpErrorTraits = shape.httpErrorTraits(context);

  /// The member shape to serialize when [HttpPayloadTrait] is used.
  late final MemberShape? payloadShape = httpInputTraits?.httpPayload.member ??
      httpOutputTraits?.httpPayload.member ??
      httpErrorTraits?.httpPayload.member;

  /// The list of all members which convey some information about the request,
  /// and for most protocols are not included in the body of the request.
  late final List<MemberShape> metadataMembers = shape.metadataMembers(context);

  /// The list of all members which should always be included in the body of
  /// the request.
  late final List<MemberShape> payloadMembers = shape.payloadMembers(context);

  /// Whether the structure has an HTTP payload.
  late final bool hasPayload = shape.hasPayload;

  /// Whether the structure needs a payload struct.
  late final bool hasBuiltPayload = shape.hasBuiltPayload(context);

  /// Whether the structure has a streaming payload.
  late final bool hasStreamingPayload = shape.hasStreamingPayload(context);
}

mixin OperationGenerationContext<U> on ShapeGenerator<OperationShape, U> {
  late final inputShape = shape.inputShape(context);
  late final inputSymbol = shape.inputSymbol(context);
  late final inputPayload = inputShape.httpPayload(context);
  late final outputShape = shape.outputShape(context);
  late final outputSymbol = shape.outputSymbol(context);
  late final outputPayload = outputShape.httpPayload(context);

  late final List<HttpErrorTraits> errorSymbols = [
    ...?context.service?.errors,
    ...shape.errors,
  ].whereType<ShapeRef>().map((error) {
    final shape = context.shapeFor(error.target) as StructureShape;
    return shape.httpErrorTraits(context)!;
  }).toList();

  late final HttpTrait? httpTrait = () {
    final trait = shape.getTrait<HttpTrait>();
    if (trait != null) {
      return trait;
    }
    final protocol = context.serviceProtocols;
    if (protocol.singleOrNull?.shapeId == AwsJson1_0Trait.id) {
      return HttpTrait(method: 'POST', uri: '/');
    }
    return null;
  }();
  late final httpInputTraits = inputShape.httpInputTraits(context)!;
  late final httpOutputTraits = outputShape.httpOutputTraits(context)!;
}

import 'package:code_builder/code_builder.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';

extension SimpleShapeUtil on SimpleShape {
  Reference get typeReference {
    switch (getType()) {
      case ShapeType.bigDecimal:
        throw UnimplementedError();
      case ShapeType.bigInteger:
        return DartTypes.core.bigInt;
      case ShapeType.blob:
        if (isStreaming) {
          return DartTypes.async
              .stream(DartTypes.core.list(DartTypes.core.int));
        }
        return DartTypes.typedData.uint8List;
      case ShapeType.boolean:
        return DartTypes.core.bool;
      case ShapeType.byte:
        return DartTypes.core.int;
      case ShapeType.document:
        return DartTypes.core.object;
      case ShapeType.double:
        return DartTypes.core.double;
      case ShapeType.float:
        return DartTypes.core.double;
      case ShapeType.integer:
        return DartTypes.core.int;
      case ShapeType.long:
        return DartTypes.fixNum.int64;
      case ShapeType.short:
        return DartTypes.core.int;
      case ShapeType.string:
        return DartTypes.core.string;
      case ShapeType.timestamp:
        return DartTypes.core.dateTime;
      default:
        throw ArgumentError('Invalid simple shape: ${getType()}');
    }
  }
}

extension MemberShapeUtils on MemberShape {
  /// The name of this shape in a Dart struct.
  String get dartName => memberName.camelCase;
}

extension ShapeUtils on Shape {
  /// Documentation for the shape.
  String? get docs => getTrait<DocumentationTrait>()?.value;

  Expression? get deprecatedAnnotation {
    const defaultMessage =
        'No longer recommended for use. See API documentation for more details.';
    final trait = getTrait<DeprecatedTrait>();
    if (trait == null) {
      return null;
    }
    final since = trait.since;
    var message = trait.message ?? defaultMessage;
    if (since != null) {
      message = 'Since $since. $message';
    }
    return DartTypes.core.deprecated.newInstance([
      literalString(message),
    ]);
  }

  /// The default value of this shape when not boxed.
  Expression? get defaultValue {
    switch (getType()) {
      case ShapeType.byte:
      case ShapeType.short:
      case ShapeType.integer:
      case ShapeType.float:
      case ShapeType.double:
        return literalNum(0);
      case ShapeType.long:
        return DartTypes.fixNum.int64.property('ZERO');
      case ShapeType.boolean:
        return literalFalse;
      default:
        return null;
    }
  }

  /// The absolute `package` path of the library generated for this shape.
  String libraryUrl(CodegenContext context) =>
      smithyLibrary(context).libraryUrl;

  /// The library directive name for this shape.
  String libraryName(CodegenContext context) {
    return smithyLibrary(context).libraryName;
  }

  /// The library type generated for this shape.
  SmithyLibrary_LibraryType get libraryType {
    switch (getType()) {
      case ShapeType.service:
        return SmithyLibrary_LibraryType.CLIENT;
      case ShapeType.operation:
        return SmithyLibrary_LibraryType.OPERATION;
      case ShapeType.structure:
      case ShapeType.union:
        return SmithyLibrary_LibraryType.MODEL;
      default:
        return isEnum
            ? SmithyLibrary_LibraryType.MODEL
            : throw ArgumentError('Invalid shape type: ${getType()}');
    }
  }

  /// The smithy library for this shape.
  SmithyLibrary smithyLibrary(CodegenContext context) {
    return SmithyLibrary()
      ..packageName = context.packageName
      ..serviceName = context.serviceName
      ..libraryType = libraryType
      ..filename = shapeId.shape.snakeCase;
  }
}

extension OperationShapeUtil on OperationShape {
  /// The name of this operation as a Dart class.
  String get dartName {
    final shapeName = shapeId.shape.pascalCase;
    if (shapeName.endsWith('Operation')) {
      return shapeName;
    }
    return '${shapeName}_Operation'.pascalCase;
  }

  /// The shape for the operation's input.
  StructureShape inputShape(CodegenContext context) =>
      context.shapeFor(input?.target ?? Shape.unit) as StructureShape;

  /// The symbol for the operation's input.
  Reference inputSymbol(CodegenContext context) =>
      context.symbolFor(input?.target ?? Shape.unit);

  /// The shape for the operation's output.
  StructureShape outputShape(CodegenContext context) =>
      context.shapeFor(output?.target ?? Shape.unit) as StructureShape;

  /// The symbol for the operation's output.
  Reference outputSymbol(CodegenContext context) =>
      context.symbolFor(output?.target ?? Shape.unit);
}

extension StructureShapeUtil on StructureShape {
  /// The symbol for the HTTP payload, or `this` if not supported.
  HttpPayload httpPayload(CodegenContext context) {
    final payloadMember = members.values.firstWhereOrNull((shape) {
      return shape.hasTrait<HttpPayloadTrait>();
    });
    if (payloadMember == null) {
      var symbol = context.symbolFor(shapeId);
      if (shapeId != Shape.unit) {
        symbol = symbol.typeRef.rebuild((t) => t.symbol = '${t.symbol}Payload');
      }
      return HttpPayload((b) => b.symbol = symbol);
    }
    return HttpPayload(
      (b) => b
        ..symbol = context.symbolFor(payloadMember.target, this)
        ..member.replace(payloadMember),
    );
  }

  /// HTTP metadata on operation output structures.
  HttpOutputTraits? httpOutputTraits(CodegenContext context) {
    if (!isOutputShape && shapeId != Shape.unit) {
      return null;
    }
    final builder = HttpOutputTraitsBuilder();
    builder.httpPayload.replace(httpPayload(context));
    for (var member in members.values) {
      final headerTrait = member.getTrait<HttpHeaderTrait>();
      if (headerTrait != null) {
        builder.httpHeaders[headerTrait.value] = member;
      }
      final prefixHeadersTrait = member.getTrait<HttpPrefixHeadersTrait>();
      if (prefixHeadersTrait != null) {
        builder.httpPrefixHeaders
          ..member.replace(member)
          ..trait = prefixHeadersTrait;
      }
      if (member.hasTrait<HttpResponseCodeTrait>()) {
        builder.httpResponseCode.replace(member);
      }
    }
    return builder.build();
  }

  /// HTTP metadata on operation input structures.
  HttpInputTraits? httpInputTraits(CodegenContext context) {
    if (!isInputShape && shapeId != Shape.unit) {
      return null;
    }
    final builder = HttpInputTraitsBuilder();
    builder.httpPayload.replace(httpPayload(context));
    for (var member in members.values) {
      final headerTrait = member.getTrait<HttpHeaderTrait>();
      if (headerTrait != null) {
        builder.httpHeaders[headerTrait.value] = member;
      }
      if (member.hasTrait<HttpLabelTrait>()) {
        builder.httpLabels.add(member);
      }
      final prefixHeadersTrait = member.getTrait<HttpPrefixHeadersTrait>();
      if (prefixHeadersTrait != null) {
        builder.httpPrefixHeaders
          ..member.replace(member)
          ..trait = prefixHeadersTrait;
      }
      if (member.hasTrait<HostLabelTrait>()) {
        builder.hostLabel.replace(member);
      }
      final queryTrait = member.getTrait<HttpQueryTrait>();
      if (queryTrait != null) {
        builder.httpQuery[queryTrait.value] = member;
      }
      if (member.hasTrait<HttpQueryParamsTrait>()) {
        builder.httpQueryParams.replace(member);
      }
    }
    return builder.build();
  }

  HttpErrorTraits? httpErrorTraits(CodegenContext context) {
    if (!isError) {
      return null;
    }
    final builder = HttpErrorTraitsBuilder();
    builder.symbol = context.symbolFor(shapeId);
    final errorTrait = expectTrait<ErrorTrait>();
    builder.kind = errorTrait.type;
    final httpErrorTrait = getTrait<HttpErrorTrait>();
    if (httpErrorTrait != null) {
      builder.statusCode = httpErrorTrait.code;
    }
    final retryTrait = getTrait<RetryableTrait>();
    if (retryTrait != null) {
      builder.retryConfig = RetryConfig(
        isThrottlingError: retryTrait.throttling,
      );
    }
    builder.httpPayload.replace(httpPayload(context));
    for (var member in members.values) {
      final headerTrait = member.getTrait<HttpHeaderTrait>();
      if (headerTrait != null) {
        builder.httpHeaders[headerTrait.value] = member;
      }
      final prefixHeadersTrait = member.getTrait<HttpPrefixHeadersTrait>();
      if (prefixHeadersTrait != null) {
        builder.httpPrefixHeaders
          ..member.replace(member)
          ..trait = prefixHeadersTrait;
      }
    }
    return builder.build();
  }

  /// Member shapes and their [Reference] types.
  Map<MemberShape, Reference> memberSymbols(CodegenContext context) => {
        for (var member in sortedMembers)
          member: context
              .symbolFor(member.target, this)
              .withBoxed(member.isNullable(this)),
      };

  /// Members sorted by their re-cased Dart name.
  List<MemberShape> get sortedMembers => members.values.toList()
    ..sort((a, b) {
      return a.dartName.compareTo(b.dartName);
    });

  /// The member shape to serialize when [HttpPayloadTrait] is used.
  MemberShape? payloadShape(CodegenContext context) =>
      httpInputTraits(context)?.httpPayload.member ??
      httpOutputTraits(context)?.httpPayload.member ??
      httpErrorTraits(context)?.httpPayload.member;

  /// The list of all members which convey some information about the request,
  /// and for most protocols are not included in the body of the request.
  List<MemberShape> metadataMembers(CodegenContext context) {
    final httpInputTraits = this.httpInputTraits(context);
    final httpOutputTraits = this.httpOutputTraits(context);
    final httpErrorTraits = this.httpErrorTraits(context);

    return <MemberShape?>{
      httpInputTraits?.hostLabel,
      ...?httpInputTraits?.httpHeaders.values,
      httpInputTraits?.httpQueryParams,
      ...?httpInputTraits?.httpLabels,
      httpInputTraits?.httpPayload.member,
      httpInputTraits?.httpPrefixHeaders?.member,
      ...?httpInputTraits?.httpQuery.values,
      httpOutputTraits?.httpResponseCode,
      ...?httpOutputTraits?.httpHeaders.values,
      httpOutputTraits?.httpPayload.member,
      httpOutputTraits?.httpPrefixHeaders?.member,
      ...?httpErrorTraits?.httpHeaders.values,
      httpErrorTraits?.httpPayload.member,
      httpErrorTraits?.httpPrefixHeaders?.member,
    }.whereType<MemberShape>().toList()
      ..sorted((a, b) => a.dartName.compareTo(b.dartName));
  }

  /// The list of all members which should always be included in the body of
  /// the request.
  List<MemberShape> payloadMembers(CodegenContext context) => sortedMembers
      .where((member) => !metadataMembers(context).contains(member))
      .toList();

  /// Whether the structure has an HTTP payload.
  bool get hasPayload => isInputShape || isOutputShape || isError;

  /// Whether the structure needs a payload struct.
  bool hasBuiltPayload(CodegenContext context) =>
      hasPayload && payloadShape(context) == null;

  /// Whether the structure has a streaming payload.
  bool hasStreamingPayload(CodegenContext context) {
    final payloadShape = this.payloadShape(context);
    return hasPayload &&
        payloadShape != null &&
        (payloadShape.isStreaming ||
            context.shapeFor(payloadShape.target).isStreaming);
  }
}

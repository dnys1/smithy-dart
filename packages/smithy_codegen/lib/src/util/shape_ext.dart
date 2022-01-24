import 'package:code_builder/code_builder.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/core/reserved_words.dart';
import 'package:smithy_codegen/src/generator/serialization/protocol_traits.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/generator/visitors/symbol_visitor.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/util/symbol_ext.dart';
import 'package:tuple/tuple.dart';

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
        return DartTypes.builtValue.jsonObject;
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
  String get dartName {
    var name = memberName.camelCase;
    if (hardReservedWords.contains(name)) {
      name = '$name\$';
    }
    return name;
  }
}

extension ShapeUtils on Shape {
  /// The rename for the shape in the service closure.
  String? rename(CodegenContext context) =>
      context.service?.rename[shapeId.toString()];

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
    final rename = this.rename(context);
    return SmithyLibrary()
      ..packageName = context.packageName
      ..serviceName = context.serviceName
      ..libraryType = libraryType
      ..filename = (rename ?? shapeId.shape).snakeCase;
  }

  PaginatedTraits? get _paginatedTraits {
    if (this is! OperationShape && this is! ServiceShape) {
      return null;
    }
    final trait = getTrait<PaginatedTrait>();
    if (trait == null) {
      return null;
    }
    return PaginatedTraits(
      (b) => b
        ..inputTokenPath = trait.inputToken
        ..outputTokenPath = trait.outputToken
        ..itemsPath = trait.items
        ..pageSizePath = trait.pageSize,
    );
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

  PaginatedTraits? paginatedTraits(CodegenContext context) {
    final serviceShape = context.service;
    PaginatedTraits? traits;
    if (serviceShape != null) {
      traits = serviceShape._paginatedTraits;
    }
    final operationTraits = _paginatedTraits;
    return (traits ?? operationTraits)?.rebuild((b) {
      if (operationTraits?.inputTokenPath != null) {
        b.inputTokenPath = operationTraits!.inputTokenPath;
      }
      if (operationTraits?.outputTokenPath != null) {
        b.outputTokenPath = operationTraits!.outputTokenPath;
      }
      if (operationTraits?.itemsPath != null) {
        b.itemsPath = operationTraits!.itemsPath;
      }
      if (operationTraits?.pageSizePath != null) {
        b.pageSizePath = operationTraits!.pageSizePath;
      }

      Tuple3<MemberShape, Expression Function(Expression), Reference>
          _parsePath(StructureShape s, String p) {
        final path = p.split('.');
        final List<Expression Function(Expression)> exps = [];
        NamedMembersShape shape = s;
        bool isNullable = false;
        late MemberShape member;
        late Reference symbol;
        while (path.isNotEmpty) {
          final memberName = path.removeAt(0);
          member = shape.members[memberName]!;
          final _isNullable = isNullable; // local copy for capture
          exps.add(
            (exp) => exp.nullableProperty(member.dartName, _isNullable),
          );
          isNullable = member.isNullable(shape);
          symbol = context.symbolFor(member.target, shape);
          final targetShape = context.shapeFor(member.target);
          if (path.isNotEmpty) {
            shape = targetShape as NamedMembersShape;
          }
        }
        return Tuple3(
          member,
          (exp) => exps.fold(exp, (exp, el) => el(exp)),
          symbol,
        );
      }

      if (b.inputTokenPath != null) {
        final parsed = _parsePath(
          inputShape(context),
          b.inputTokenPath!,
        );
        b.inputTokenMember = parsed.item1;
        b.inputTokenExpression = parsed.item2;
        b.tokenSymbol = parsed.item3;
      }

      if (b.outputTokenPath != null) {
        final parsed = _parsePath(
          outputShape(context),
          b.outputTokenPath!,
        );
        b.outputTokenMember = parsed.item1;
        b.outputTokenExpression = parsed.item2;
        final tokenSymbol = parsed.item3;
        if (b.inputTokenMember != null) {
          assert(b.tokenSymbol == tokenSymbol);
        }
        b.tokenSymbol = tokenSymbol;
      }

      if (b.itemsPath != null) {
        final parsed = _parsePath(
          outputShape(context),
          b.itemsPath!,
        );
        b.itemsMember = parsed.item1;
        b.itemsExpression = parsed.item2;
        b.itemsSymbol = parsed.item3;
      }

      if (b.pageSizePath != null) {
        final parsed = _parsePath(
          inputShape(context),
          b.pageSizePath!,
        );
        b.pageSizeMember = parsed.item1;
        b.pageSizeExpression = parsed.item2;
        b.pageSizeSymbol = parsed.item3;
      }
    });
  }

  HttpTrait? httpTrait(CodegenContext context) {
    final trait = getTrait<HttpTrait>();
    if (trait != null) {
      return trait;
    }
    final protocol = context.serviceProtocols;

    // awsJson1_0 and awsJson1_1 are
    // "an HTTP protocol that sends "POST" requests and responses with JSON documents."
    //
    // See:
    // - https://awslabs.github.io/smithy/1.0/spec/aws/aws-json-1_0-protocol.html
    // - https://awslabs.github.io/smithy/1.0/spec/aws/aws-json-1_1-protocol.html
    if ([AwsJson1_0Trait.id, AwsJson1_1Trait.id]
        .contains(protocol.singleOrNull?.shapeId)) {
      return HttpTrait(method: 'POST', uri: '/');
    }
    return null;
  }

  /// Fields which should be generated for the operation and its service client
  /// based off the traits attached to this shape's service.
  Iterable<Field> protocolFields(CodegenContext context) sync* {
    final serviceShape = context.service;
    if (serviceShape == null) {
      return;
    }
    if (serviceShape.hasTrait<ServiceTrait>()) {
      yield Field(
        (f) => f
          ..type = DartTypes.core.string
          ..name = 'region'
          ..modifier = FieldModifier.final$,
      );
    }
    if (serviceShape.hasTrait<SigV4Trait>()) {
      yield Field(
        (f) => f
          ..type = DartTypes.awsSigV4.awsCredentialsProvider
          ..name = 'credentialsProvider'
          ..modifier = FieldModifier.final$,
      );
    }
  }

  /// Constructor parameters which should be generated for the operation and its
  /// service client based off the traits attached to this shape's service.
  Iterable<Parameter> constructorParameters(CodegenContext context) sync* {
    final serviceShape = context.service;
    if (serviceShape == null) {
      return;
    }
    if (serviceShape.hasTrait<ServiceTrait>()) {
      yield Parameter(
        (p) => p
          ..toThis = true
          ..required = true
          ..name = 'region'
          ..named = true,
      );
    }
    if (serviceShape.hasTrait<SigV4Trait>()) {
      yield Parameter(
        (p) => p
          ..toThis = true
          ..defaultTo = DartTypes.awsSigV4.awsCredentialsProvider
              .constInstanceNamed('dartEnvironment', []).code
          ..name = 'credentialsProvider'
          ..named = true,
      );
    }
  }
}

extension StructureShapeUtil on StructureShape {
  /// The symbol for the HTTP payload, or `this` if not supported.
  HttpPayload httpPayload(CodegenContext context) {
    final payloadMember = members.values.firstWhereOrNull((shape) {
      return shape.hasTrait<HttpPayloadTrait>();
    });
    if (payloadMember == null) {
      var symbol = context.symbolFor(shapeId);
      if (hasPayload(context) && shapeId != Shape.unit) {
        symbol = symbol.typeRef.rebuild((t) => t.symbol = '${t.symbol}Payload');
      }
      return HttpPayload((b) => b.symbol = symbol);
    }
    return HttpPayload(
      (b) => b
        ..symbol = payloadMember.accept(SymbolVisitor(context), this)
        ..member.replace(payloadMember),
    );
  }

  /// HTTP metadata on operation output structures.
  HttpOutputTraits? httpOutputTraits(
    CodegenContext context, {
    bool overrideTrait = false,
  }) {
    if (!isOutputShape && !overrideTrait && Shape.unit != shapeId) {
      return null;
    }
    final builder = HttpOutputTraitsBuilder();
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
  HttpInputTraits? httpInputTraits(
    CodegenContext context, {
    bool overrideTrait = false,
  }) {
    if (!isInputShape && !overrideTrait && Shape.unit != shapeId) {
      return null;
    }
    final builder = HttpInputTraitsBuilder();
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
    builder.shapeId = shapeId;
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
      httpPayload(context).member;

  /// The list of all members which convey some information about the request,
  /// and for most protocols are not included in the body of the request.
  List<MemberShape> metadataMembers(CodegenContext context) {
    final httpInputTraits = this.httpInputTraits(context);
    final httpOutputTraits = this.httpOutputTraits(context);
    final httpErrorTraits = this.httpErrorTraits(context);

    return <MemberShape?>{
      ...?httpInputTraits?.httpHeaders.values,
      httpInputTraits?.httpQueryParams,
      ...?httpInputTraits?.httpLabels,
      httpInputTraits?.httpPrefixHeaders?.member,
      ...?httpInputTraits?.httpQuery.values,
      httpOutputTraits?.httpResponseCode,
      ...?httpOutputTraits?.httpHeaders.values,
      httpOutputTraits?.httpPrefixHeaders?.member,
      ...?httpErrorTraits?.httpHeaders.values,
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
  bool hasPayload(CodegenContext context) =>
      (isInputShape || isOutputShape || isError) &&
      (metadataMembers(context).isNotEmpty ||
          members.values.any((shape) => shape.hasTrait<HttpPayloadTrait>()));

  /// Whether the structure needs a payload struct.
  bool hasBuiltPayload(CodegenContext context) =>
      hasPayload(context) && payloadShape(context) == null;

  /// Whether the structure has a streaming payload.
  bool hasStreamingPayload(CodegenContext context) {
    final payloadShape = this.payloadShape(context);
    return hasPayload(context) &&
        payloadShape != null &&
        (payloadShape.isStreaming ||
            context.shapeFor(payloadShape.target).isStreaming);
  }
}

extension ShapeIdUtil on ShapeId {
  /// A constructed ShapeId expression.
  Expression get constructed => DartTypes.smithy.shapeId.constInstance([], {
        'namespace': literalString(namespace),
        'shape': literalString(shape),
        if (member != null) 'member': literalString(member!),
      });
}

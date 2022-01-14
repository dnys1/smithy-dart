import 'package:code_builder/code_builder.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/model/smithy_library.dart';
import 'package:smithy_codegen/src/service/codegen.pb.dart';
import 'package:smithy_codegen/src/util/recase.dart';

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
  String libraryUrl(String packageName, String serviceName) {
    final smithyLibrary = this.smithyLibrary(packageName, serviceName);
    return 'package:$packageName/${smithyLibrary.libRelativePath}';
  }

  /// The library directive name for this shape.
  String libraryName(String packageName, String serviceName) {
    return smithyLibrary(packageName, serviceName).libraryName;
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
  SmithyLibrary smithyLibrary(String packageName, String serviceName) {
    return SmithyLibrary()
      ..packageName = packageName
      ..serviceName = serviceName
      ..libraryType = libraryType
      ..filename = shapeId.shape.snakeCase;
  }

  HttpError get httpError {
    final errorTrait = expectTrait<ErrorTrait>();
    final httpErrorTrait = getTrait<HttpErrorTrait>();
    final retryTrait = getTrait<RetryableTrait>();
    return HttpError(
      errorTrait.type,
      Never,
      retryConfig: retryTrait == null
          ? null
          : RetryConfig(
              isThrottlingError: retryTrait.throttling,
            ),
      statusCode: httpErrorTrait?.code,
    );
  }
}

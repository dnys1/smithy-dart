import 'package:code_builder/code_builder.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/model/smithy_library.dart';
import 'package:smithy_codegen/src/service/codegen.pb.dart';
import 'package:smithy_codegen/src/util/recase.dart';

extension ShapeUtils on Shape {
  /// Documentation for the shape.
  String? get docs => getTrait<DocumentationTrait>()?.value;

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
      ..filename = shapeId.name.snakeCase;
  }
}

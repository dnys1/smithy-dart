import 'package:smithy_codegen/src/service/codegen.pbgrpc.dart';
import 'package:smithy_codegen/src/util/recase.dart';

SmithyLibrary smithyLibraryFromName(String libraryName) {
  final parts = libraryName.split('.');
  switch (parts.length) {
    case 2:
      return SmithyLibrary()
        ..packageName = parts[0]
        ..serviceName = parts[1]
        ..libraryType = SmithyLibrary_LibraryType.SERVICE
        ..filename = parts[1];
    case 3:
      return SmithyLibrary()
        ..packageName = parts[0]
        ..serviceName = parts[1]
        ..libraryType = SmithyLibrary_LibraryType.CLIENT
        ..filename = parts[2];
    case 4:
      return SmithyLibrary()
        ..packageName = parts[0]
        ..serviceName = parts[1]
        ..libraryType = SmithyLibrary_LibraryType.values
            .firstWhere((el) => el.name.toLowerCase() == parts[2])
        ..filename = parts[3];
    default:
      throw ArgumentError('Cannot parse path: $libraryName');
  }
}

extension SmithyLibraryX on SmithyLibrary {
  static String _sanitize(String name) =>
      name.replaceAll(RegExp(r'.dart$'), '').snakeCase;

  /// The `lib/`-relative path.
  String get libRelativePath {
    final serviceName = _sanitize(this.serviceName);
    final filename = _sanitize(this.filename);
    switch (libraryType) {
      case SmithyLibrary_LibraryType.CLIENT:
        return 'src/$serviceName/$filename.dart';
      case SmithyLibrary_LibraryType.MODEL:
        return 'src/$serviceName/model/$filename.dart';
      case SmithyLibrary_LibraryType.SERVICE:
        return '$filename.dart';
    }
    throw ArgumentError('Invalid library type: $libraryType');
  }

  /// Renders `this` as a library name.
  String get libraryName {
    final packageName = _sanitize(this.packageName);
    final serviceName = _sanitize(this.serviceName);
    final filename = _sanitize(this.filename);
    switch (libraryType) {
      case SmithyLibrary_LibraryType.CLIENT:
        return '$packageName.$serviceName.$filename';
      case SmithyLibrary_LibraryType.MODEL:
        return '$packageName.$serviceName.model.$filename';
      case SmithyLibrary_LibraryType.SERVICE:
        return '$packageName.$serviceName';
    }
    throw ArgumentError('Invalid library type: $libraryType');
  }
}

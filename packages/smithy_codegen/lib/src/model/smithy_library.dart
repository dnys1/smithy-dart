import 'package:collection/collection.dart';
import 'package:smithy_codegen/src/util/recase.dart';
import 'package:smithy_codegen/src/service/codegen.pb.dart';

extension SmithyLibraryX on SmithyLibrary {
  /// Creates a [SmithyLibrary] with sanitized inputs.
  static SmithyLibrary create({
    required String packageName,
    required String serviceName,
    required SmithyLibrary_LibraryType libraryType,
    required String filename,
  }) =>
      SmithyLibrary(
        packageName: _sanitize(packageName),
        serviceName: _sanitize(serviceName),
        libraryType: libraryType,
        filename: _sanitize(filename),
      );

  /// Creates a [SmithyLibrary] from a [libraryName].
  static SmithyLibrary fromLibraryName(String libraryName) {
    final parts = libraryName.split('.');
    return fromParts(parts);
  }

  /// Creates a [SmithyLibrary] from the segments of its library name.
  static SmithyLibrary fromParts(List<String> parts) {
    switch (parts.length) {
      case 2:
        return SmithyLibrary(
          packageName: _sanitize(parts[0]),
          serviceName: _sanitize(parts[1]),
          libraryType: SmithyLibrary_LibraryType.SERVICE,
          filename: _sanitize(parts[1]),
        );
      case 3:
        return SmithyLibrary(
          packageName: _sanitize(parts[0]),
          serviceName: _sanitize(parts[1]),
          libraryType: SmithyLibrary_LibraryType.CLIENT,
          filename: _sanitize(parts[2]),
        );
      case 4:
        return SmithyLibrary(
          packageName: _sanitize(parts[0]),
          serviceName: _sanitize(parts[1]),
          libraryType: SmithyLibrary_LibraryType.values
              .firstWhere((el) => _sanitize(el.name) == _sanitize(parts[2])),
          filename: _sanitize(parts[3]),
        );
      default:
        throw ArgumentError('Cannot parse path: ${parts.join('.')}');
    }
  }

  /// Creates a [SmithyLibrary] from a `lib/`-relative [path].
  static SmithyLibrary fromPath(String packageName, String path) {
    final formattedPath = path.replaceAll(RegExp(r'.dart$'), '');
    final parts = formattedPath.split('/');

    if (parts.length > 1 && parts.first != 'src') {
      throw ArgumentError.value(
        path,
        'path',
        'Invalid path. Paths must be to top-level library files, or begin with src/.',
      );
    }

    return fromParts([
      packageName,
      ...parts.whereIndexed((index, part) {
        return index > 0 || part != 'src';
      }),
    ]);
  }

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
      case SmithyLibrary_LibraryType.OPERATION:
        return 'src/$serviceName/operation/$filename.dart';
      case SmithyLibrary_LibraryType.SERVICE:
        return '$filename.dart';
      case SmithyLibrary_LibraryType.SERIALIZERS:
        return 'src/$serviceName/serializers.dart';
      case SmithyLibrary_LibraryType.TEST:
        break;
    }
    throw ArgumentError('Invalid library type: $libraryType');
  }

  /// The path relative to the project root.
  String get projectRelativePath {
    var filename = _sanitize(this.filename);
    switch (libraryType) {
      case SmithyLibrary_LibraryType.CLIENT:
      case SmithyLibrary_LibraryType.MODEL:
      case SmithyLibrary_LibraryType.OPERATION:
      case SmithyLibrary_LibraryType.SERVICE:
      case SmithyLibrary_LibraryType.SERIALIZERS:
        return 'lib/$libRelativePath';
      case SmithyLibrary_LibraryType.TEST:
        if (!filename.endsWith('_test')) {
          filename = '${filename}_test';
        }
        return 'test/$serviceName/$filename.dart';
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
      case SmithyLibrary_LibraryType.OPERATION:
        return '$packageName.$serviceName.operation.$filename';
      case SmithyLibrary_LibraryType.SERVICE:
        return '$packageName.$serviceName';
      case SmithyLibrary_LibraryType.SERIALIZERS:
        return '$packageName.$serviceName.serializers';
      case SmithyLibrary_LibraryType.TEST:
        return '$packageName.$serviceName.test.$filename';
    }
    throw ArgumentError('Invalid library type: $libraryType');
  }

  /// The absolute `package` URL.
  String get libraryUrl => 'package:$packageName/$libRelativePath';
}

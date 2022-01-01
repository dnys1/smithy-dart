import 'package:smithy_codegen/src/model/smithy_library.dart';
import 'package:smithy_codegen/src/service/codegen.pb.dart';
import 'package:test/test.dart';

void main() {
  const packageName = 'example';
  const serviceName = 'Foo';
  const clientName = 'FooClient';
  const modelName = 'GetFooInput';

  group('SmithyLibrary', () {
    test('valid service', () {
      final expected = SmithyLibraryX.create(
        packageName: packageName,
        serviceName: serviceName,
        libraryType: SmithyLibrary_LibraryType.SERVICE,
        filename: '$serviceName.dart',
      );

      final fromParts = SmithyLibraryX.fromParts([packageName, serviceName]);
      expect(fromParts, equals(expected));

      final fromPath = SmithyLibraryX.fromPath(packageName, serviceName);
      expect(fromPath, equals(expected));

      final fromLibraryName =
          SmithyLibraryX.fromLibraryName('$packageName.$serviceName');
      expect(fromLibraryName, equals(expected));
    });

    test('valid client', () {
      const filename = '$clientName.dart';
      final expected = SmithyLibraryX.create(
        packageName: packageName,
        serviceName: serviceName,
        libraryType: SmithyLibrary_LibraryType.CLIENT,
        filename: filename,
      );

      final fromParts =
          SmithyLibraryX.fromParts([packageName, serviceName, clientName]);
      expect(fromParts, equals(expected));

      final fromPath =
          SmithyLibraryX.fromPath(packageName, 'src/$serviceName/$filename');
      expect(fromPath, equals(expected));

      final fromLibraryName = SmithyLibraryX.fromLibraryName(
        '$packageName.$serviceName.$clientName',
      );
      expect(fromLibraryName, equals(expected));
    });

    test('valid model', () {
      const filename = '$modelName.dart';
      final expected = SmithyLibraryX.create(
        packageName: packageName,
        serviceName: serviceName,
        libraryType: SmithyLibrary_LibraryType.MODEL,
        filename: filename,
      );

      final fromParts = SmithyLibraryX.fromParts([
        packageName,
        serviceName,
        'model',
        modelName,
      ]);
      expect(fromParts, equals(expected));

      final fromPath = SmithyLibraryX.fromPath(
        packageName,
        'src/$serviceName/model/$filename',
      );
      expect(fromPath, equals(expected));

      final fromLibraryName = SmithyLibraryX.fromLibraryName(
        '$packageName.$serviceName.model.$modelName',
      );
      expect(fromLibraryName, equals(expected));
    });

    test('invalid path', () {
      // paths must begin with src/ or point to top-level libraries.
      const invalidPath = '$serviceName/$modelName.dart';
      expect(
        () => SmithyLibraryX.fromPath(packageName, invalidPath),
        throwsArgumentError,
      );
    });

    test('invalid LibraryType', () {
      // `blah` is not a valid library type.
      const invalidLibraryType = 'src/$serviceName/blah/$modelName.dart';
      expect(
        () => SmithyLibraryX.fromPath(packageName, invalidLibraryType),
        throwsStateError,
      );
    });
  });
}

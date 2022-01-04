import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/types.dart';
import 'package:smithy_codegen/src/model/smithy_library.dart';

/// Operates similar to [Allocator.simplePrefixing], prefixing symbols using
/// a simple incrementor.
///
/// Unlike [Allocator.simplePrefixing], though, it does prefix `dart:core`
/// types, and accepts a [library] parameter so that references to values in the
/// same file are not prefixed.
class SmithyAllocator implements Allocator {
  SmithyAllocator(this.library);

  static const _doNotPrefix = [
    'dart:core',
    BuiltValue.mainUrl,
    BuiltValue.serializerUrl,
  ];

  final _imports = <String, int>{};
  var _keys = 1;

  final Library library;
  String get libraryUrl {
    final smithyLibrary = SmithyLibraryX.fromLibraryName(library.name!);
    return 'package:${smithyLibrary.packageName}/${smithyLibrary.libRelativePath}';
  }

  @override
  String allocate(Reference reference) {
    final symbol = reference.symbol;
    final url = reference.url;
    if (url == null || url == libraryUrl) {
      return symbol!;
    }
    if (_doNotPrefix.contains(url)) {
      _imports[url] = -1;
      return symbol!;
    }
    // if (url == 'dart:core') {
    //   return '_i${_imports[url] = 0}.$symbol';
    // }
    return '_i${_imports.putIfAbsent(url, _nextKey)}.$symbol';
  }

  int _nextKey() => _keys++;

  @override
  Iterable<Directive> get imports => _imports.keys.map(
        (u) => Directive.import(
          u,
          as: _doNotPrefix.contains(u) ? null : '_i${_imports[u]}',
        ),
      );
}

import 'dart:async';

import 'package:angular/angular.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_playground/model/tree_node.dart';

@Component(
  selector: 'tree',
  templateUrl: 'tree_component.html',
  styleUrls: [
    'tree_component.css',
  ],
  directives: [
    coreDirectives,
    TreeComponent,
  ],
)
class TreeComponent {
  TreeComponent();

  @Input()
  late List<SmithyLibrary> libraries;

  final _indexController = StreamController<int>();
  @Output('indexChange')
  Stream<int> get indexChange => _indexController.stream;

  void visit(SmithyLibrary library) {
    _indexController.add(libraries.indexOf(library));
  }

  String filename(SmithyLibrary library) {
    return library.sanitizedFilename + '.dart';
  }

  String testPath(SmithyLibrary library) {
    return library.projectRelativePath.split('/').sublist(1).join('/');
  }

  Iterable<SmithyLibrary> get models => libraries
      .where((lib) => lib.libraryType == SmithyLibrary_LibraryType.MODEL);

  Iterable<SmithyLibrary> get commons => libraries
      .where((lib) => lib.libraryType == SmithyLibrary_LibraryType.COMMON);

  Iterable<SmithyLibrary> get clients => libraries
      .where((lib) => lib.libraryType == SmithyLibrary_LibraryType.CLIENT);

  Iterable<SmithyLibrary> get operations => libraries
      .where((lib) => lib.libraryType == SmithyLibrary_LibraryType.OPERATION);

  Iterable<SmithyLibrary> get services => libraries
      .where((lib) => lib.libraryType == SmithyLibrary_LibraryType.SERVICE);

  Iterable<SmithyLibrary> get tests => libraries
      .where((lib) => lib.libraryType == SmithyLibrary_LibraryType.TEST);
}

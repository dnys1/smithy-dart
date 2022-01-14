import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/src/service/codegen.pb.dart';

class GeneratedLibrary {
  const GeneratedLibrary(this.smithyLibrary, this.library);

  final SmithyLibrary smithyLibrary;
  final Library library;
}

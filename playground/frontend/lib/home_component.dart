import 'dart:async';
import 'dart:collection';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_playground/editor/editor_component.dart';
import 'package:smithy_playground/model/tree_node.dart';
import 'package:smithy_playground/service/transform_service.dart';
import 'package:fo_components/fo_components.dart';

import 'tree_component.dart';

class TransformOutput {
  const TransformOutput(this.lang, this.doc);

  final String lang;
  final String doc;
}

@Component(
  selector: 'home',
  templateUrl: 'home_component.html',
  styleUrls: [
    'home_component.css',
  ],
  directives: [
    coreDirectives,
    EditorComponent,
    FoIconComponent,
    FoModalComponent,
    FoCheckComponent,
    FoRadioComponent,
    FoRadioGroupComponent,
    FoDropdownSelectComponent,
    FoLoadIndicatorComponent,
    FoTabComponent,
    FoTabPanelComponent,
    TreeComponent,
  ],
)
class HomeComponent implements AfterContentInit {
  HomeComponent(this.transformService);

  final TransformerService transformService;

  final LinkedHashMap<String, TransformOutput> outputs = LinkedHashMap();

  List<SmithyLibrary> libraries = const [];

  String editorText = defaultText;
  String? errorText;

  int tabIndex = 0;

  @ViewChild('button')
  ButtonElement? buttonElement;

  bool isLoading = false;

  void goToFile(int index) => tabIndex = index + 2; // for files + AST

  Future<void> transform() async {
    if (isLoading) {
      return;
    }
    setBusy(true);
    try {
      final astJson = await transformService.transform(editorText);

      // Code generate libraries for AST
      try {
        final ast = parseAstJson(astJson);
        final libraries = generateForAst(ast, packageName: 'example');
        this.libraries = libraries.map((lib) => lib.smithyLibrary).toList();
        final formattedLibraries =
            await Future.wait<MapEntry<String, TransformOutput>>(
          libraries.map((lib) async {
            return MapEntry(
              lib.smithyLibrary.filename + '.dart',
              TransformOutput(
                'dart',
                await transformService.format(lib.emit(
                  withPrefixing: false,
                )),
              ),
            );
          }),
        );
        outputs['AST'] = TransformOutput('application/json', astJson);
        outputs.addEntries(formattedLibraries);
        errorText = null;
      } catch (e, st) {
        window.console.error(e);
        window.console.error(st);
        errorText = e.toString();
      }
    } on TransformException catch (e) {
      window.console.error(e);
      errorText = e.message;
    } on Exception catch (e) {
      window.console.error(e);
      errorText = 'An unknown error occurred. Please try again.';
    } finally {
      setBusy(false);
    }
  }

  void setBusy(bool busy) {
    isLoading = busy;
  }

  @override
  void ngAfterContentInit() {
    updateText(editorText);
  }

  void updateText(String text) {
    editorText = text;
  }
}

const defaultText = '''
namespace com.test

service MyService {
  version: "1.0.0",
  operations: [GetFoo]
}

@enum([
  {
    value: "rawValue1",
    name: "Variant1"
  },
  {
    value: "rawValue2",
    name: "Variant2"
  }
])
string MyEnum

union MyUnion {
  anInt: Integer,
  aLong: Long
}

@http(method: "POST", uri: "/foo")
operation GetFoo {
  input: GetFooInput,
  output: GetFooOutput
}

@input
structure GetFooInput {
  input: MyEnum
}

@output
structure GetFooOutput {
  output: MyUnion
}
''';

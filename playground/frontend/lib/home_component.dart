import 'dart:async';
import 'dart:collection';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_playground/editor/editor_component.dart';
import 'package:smithy_playground/service/transform_service.dart';
import 'package:fo_components/fo_components.dart';

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
  ],
)
class HomeComponent implements AfterContentInit {
  HomeComponent(this.transformService, this._ref);

  final ChangeDetectorRef _ref;
  final TransformerService transformService;

  final LinkedHashMap<String, TransformOutput> outputs = LinkedHashMap();

  String editorText = defaultText;
  String? errorText;

  @ViewChild('button')
  ButtonElement? buttonElement;

  bool isLoading = false;

  Future<void> transform() async {
    if (isLoading) {
      return;
    }
    setBusy(true);
    try {
      final response = await transformService.transform(editorText);
      final error = response.errors.trim();
      errorText = error.isEmpty ? null : error;

      if (errorText != null) {
        return;
      }

      final astStr = response.ast.trim();
      outputs['AST'] = TransformOutput('application/json', astStr);

      // Code generate libraries for AST
      try {
        final ast = parseAstJson(astStr);
        final libraries = generateForAst(
          ast,
          packageName: 'example',
          serviceName: 'MyService',
        );
        print('Outputted libraries: $libraries');
        libraries.forEach((lib, definition) {
          outputs[lib.filename + '.dart'] = TransformOutput('dart', definition);
        });
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
    _ref.markForCheck();
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
  operations: ["GetFoo"]
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

operation GetFoo {
  input: GetFooInput,
  output: GetFooOutput
}

structure GetFooInput {
  input: MyEnum
}

structure GetFooOutput {
  output: MyUnion
}
''';

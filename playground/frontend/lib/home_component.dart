import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:smithy_playground/editor/editor_component.dart';
import 'package:smithy_playground/service/transform_service.dart';
import 'package:fo_components/fo_components.dart';

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
  ],
)
class HomeComponent implements OnInit, AfterContentInit {
  HomeComponent(this.transformService, this._changeDetectorRef);

  final TransformerService transformService;
  final ChangeDetectorRef _changeDetectorRef;

  String editorText = '';
  String outputText = '';
  String? errorText;
  bool isModalShown = false;

  @ViewChild('button')
  ButtonElement? buttonElement;

  @ViewChild('dropdown')
  TemplateRef? dropdownTemplate;

  int? innerWidth;
  bool get showHeaderDropdown => innerWidth != null && innerWidth! >= 600;

  bool isLoading = false;

  @override
  void ngOnInit() {
    innerWidth = window.innerWidth;
    window.onResize.listen((event) {
      innerWidth = window.innerWidth;
    });
  }

  Future<void> transform() async {
    if (isLoading) {
      return;
    }
    setBusy(true);
    try {
      final response = await transformService.transform(editorText);
      outputText = response.ast.trim();
      errorText = response.errors.trim();
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
    _changeDetectorRef.markForCheck();
  }

  void showModal() {
    isModalShown = true;
  }
}

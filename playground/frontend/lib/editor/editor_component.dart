import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:codemirror/codemirror.dart';
import 'package:stream_transform/stream_transform.dart';

@Component(
  selector: 'editor',
  templateUrl: 'editor_component.html',
  styleUrls: ['editor_component.css'],
)
class EditorComponent implements AfterContentInit {
  CodeMirror? _editor;

  final StreamController<String> _outputController = StreamController();
  final Element _hostEl;

  EditorComponent(this._hostEl);

  @Input()
  bool readOnly = false;

  @Input()
  String? lang;

  @override
  void ngAfterContentInit() {
    _editor = CodeMirror.fromElement(
      _hostEl,
      options: <String, dynamic>{
        'lineNumbers': !readOnly,
        'autoCloseBrackets': true,
        'matchBrackets': true,
        'tabSize': 2,
        'lineWrapping': true,
        'extraKeys': {
          'Cmd-/': 'toggleComment',
          'Ctrl-/': 'toggleComment',
          'Tab': 'insertSoftTab'
        },
        if (lang != null) 'mode': lang,
      },
    );
    _editor!.callArgs('setSize', <String>['100%', '100%']);
    if (readOnly) {
      _editor!.setReadOnly(true, true);
    } else {
      _outputController.addStream(
        _editor!.onChange.map((dynamic event) {
          return _editor!.doc.getValue('\n') ?? '';
        }).cast<String>(),
      );
    }
    _editor!.doc.setValue(_text ?? '');
  }

  String? _text;

  /// Returns one of:
  /// 1. The initial text, if available
  /// 2. The document text, if created
  /// 3. An empty string
  String get text => _text ?? _editor?.doc.getValue('\n') ?? '';

  @Input()
  set text(String text) {
    if (text == '') {
      return;
    }
    var doc = _editor?.doc;

    if (doc == null) {
      // Sets the initial text (before content has initialized).
      _text = text;
    } else {
      // Sets the editor text while preserving cursor position (would reset
      // otherwise).
      var cursorPos = doc.getCursor();
      doc.setValue(text);
      doc.setCursor(cursorPos);
      _text = null;
    }
  }

  @Output()
  Stream<String> get textChange =>
      _outputController.stream.debounce(const Duration(milliseconds: 400));
}

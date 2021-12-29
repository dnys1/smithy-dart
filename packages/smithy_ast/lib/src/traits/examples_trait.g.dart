// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'examples_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExamplesTrait> _$examplesTraitSerializer =
    new _$ExamplesTraitSerializer();
Serializer<Example> _$exampleSerializer = new _$ExampleSerializer();
Serializer<ErrorExample> _$errorExampleSerializer =
    new _$ErrorExampleSerializer();

class _$ExamplesTraitSerializer implements StructuredSerializer<ExamplesTrait> {
  @override
  final Iterable<Type> types = const [ExamplesTrait, _$ExamplesTrait];
  @override
  final String wireName = 'ExamplesTrait';

  @override
  Iterable<Object?> serialize(Serializers serializers, ExamplesTrait object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'examples',
      serializers.serialize(object.examples,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Example)])),
      'isSynthetic',
      serializers.serialize(object.isSynthetic,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  ExamplesTrait deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExamplesTraitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'examples':
          result.examples.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Example)]))!
              as BuiltList<Object?>);
          break;
        case 'isSynthetic':
          result.isSynthetic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ExampleSerializer implements StructuredSerializer<Example> {
  @override
  final Iterable<Type> types = const [Example, _$Example];
  @override
  final String wireName = 'Example';

  @override
  Iterable<Object?> serialize(Serializers serializers, Example object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(String)),
      'output',
      serializers.serialize(object.output,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.documentation;
    if (value != null) {
      result
        ..add('documentation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ErrorExample)));
    }
    return result;
  }

  @override
  Example deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExampleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'documentation':
          result.documentation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'input':
          result.input = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'output':
          result.output = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(ErrorExample))! as ErrorExample);
          break;
      }
    }

    return result.build();
  }
}

class _$ErrorExampleSerializer implements StructuredSerializer<ErrorExample> {
  @override
  final Iterable<Type> types = const [ErrorExample, _$ErrorExample];
  @override
  final String wireName = 'ErrorExample';

  @override
  Iterable<Object?> serialize(Serializers serializers, ErrorExample object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'shapeId',
      serializers.serialize(object.shapeId,
          specifiedType: const FullType(ShapeId)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ErrorExample deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ErrorExampleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'shapeId':
          result.shapeId.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeId))! as ShapeId);
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ExamplesTrait extends ExamplesTrait {
  @override
  final BuiltList<Example> examples;
  @override
  final bool isSynthetic;

  factory _$ExamplesTrait([void Function(ExamplesTraitBuilder)? updates]) =>
      (new ExamplesTraitBuilder()..update(updates)).build();

  _$ExamplesTrait._({required this.examples, required this.isSynthetic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        examples, 'ExamplesTrait', 'examples');
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'ExamplesTrait', 'isSynthetic');
  }

  @override
  ExamplesTrait rebuild(void Function(ExamplesTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExamplesTraitBuilder toBuilder() => new ExamplesTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExamplesTrait &&
        examples == other.examples &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, examples.hashCode), isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExamplesTrait')
          ..add('examples', examples)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class ExamplesTraitBuilder
    implements Builder<ExamplesTrait, ExamplesTraitBuilder>, TraitBuilder {
  _$ExamplesTrait? _$v;

  ListBuilder<Example>? _examples;
  ListBuilder<Example> get examples =>
      _$this._examples ??= new ListBuilder<Example>();
  set examples(covariant ListBuilder<Example>? examples) =>
      _$this._examples = examples;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(covariant bool? isSynthetic) =>
      _$this._isSynthetic = isSynthetic;

  ExamplesTraitBuilder() {
    ExamplesTrait._init(this);
  }

  ExamplesTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _examples = $v.examples.toBuilder();
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ExamplesTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExamplesTrait;
  }

  @override
  void update(void Function(ExamplesTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExamplesTrait build() {
    _$ExamplesTrait _$result;
    try {
      _$result = _$v ??
          new _$ExamplesTrait._(
              examples: examples.build(),
              isSynthetic: BuiltValueNullFieldError.checkNotNull(
                  isSynthetic, 'ExamplesTrait', 'isSynthetic'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'examples';
        examples.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExamplesTrait', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Example extends Example {
  @override
  final String title;
  @override
  final String? documentation;
  @override
  final String input;
  @override
  final String output;
  @override
  final ErrorExample? error;

  factory _$Example([void Function(ExampleBuilder)? updates]) =>
      (new ExampleBuilder()..update(updates)).build();

  _$Example._(
      {required this.title,
      this.documentation,
      required this.input,
      required this.output,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'Example', 'title');
    BuiltValueNullFieldError.checkNotNull(input, 'Example', 'input');
    BuiltValueNullFieldError.checkNotNull(output, 'Example', 'output');
  }

  @override
  Example rebuild(void Function(ExampleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExampleBuilder toBuilder() => new ExampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Example &&
        title == other.title &&
        documentation == other.documentation &&
        input == other.input &&
        output == other.output &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, title.hashCode), documentation.hashCode),
                input.hashCode),
            output.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Example')
          ..add('title', title)
          ..add('documentation', documentation)
          ..add('input', input)
          ..add('output', output)
          ..add('error', error))
        .toString();
  }
}

class ExampleBuilder implements Builder<Example, ExampleBuilder> {
  _$Example? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _documentation;
  String? get documentation => _$this._documentation;
  set documentation(String? documentation) =>
      _$this._documentation = documentation;

  String? _input;
  String? get input => _$this._input;
  set input(String? input) => _$this._input = input;

  String? _output;
  String? get output => _$this._output;
  set output(String? output) => _$this._output = output;

  ErrorExampleBuilder? _error;
  ErrorExampleBuilder get error => _$this._error ??= new ErrorExampleBuilder();
  set error(ErrorExampleBuilder? error) => _$this._error = error;

  ExampleBuilder();

  ExampleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _documentation = $v.documentation;
      _input = $v.input;
      _output = $v.output;
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Example other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Example;
  }

  @override
  void update(void Function(ExampleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Example build() {
    _$Example _$result;
    try {
      _$result = _$v ??
          new _$Example._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'Example', 'title'),
              documentation: documentation,
              input: BuiltValueNullFieldError.checkNotNull(
                  input, 'Example', 'input'),
              output: BuiltValueNullFieldError.checkNotNull(
                  output, 'Example', 'output'),
              error: _error?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Example', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ErrorExample extends ErrorExample {
  @override
  final ShapeId shapeId;
  @override
  final String content;

  factory _$ErrorExample([void Function(ErrorExampleBuilder)? updates]) =>
      (new ErrorExampleBuilder()..update(updates)).build();

  _$ErrorExample._({required this.shapeId, required this.content}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'ErrorExample', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(content, 'ErrorExample', 'content');
  }

  @override
  ErrorExample rebuild(void Function(ErrorExampleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorExampleBuilder toBuilder() => new ErrorExampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorExample &&
        shapeId == other.shapeId &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorExample')
          ..add('shapeId', shapeId)
          ..add('content', content))
        .toString();
  }
}

class ErrorExampleBuilder
    implements Builder<ErrorExample, ErrorExampleBuilder> {
  _$ErrorExample? _$v;

  ShapeIdBuilder? _shapeId;
  ShapeIdBuilder get shapeId => _$this._shapeId ??= new ShapeIdBuilder();
  set shapeId(ShapeIdBuilder? shapeId) => _$this._shapeId = shapeId;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ErrorExampleBuilder();

  ErrorExampleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId.toBuilder();
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorExample other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorExample;
  }

  @override
  void update(void Function(ErrorExampleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorExample build() {
    _$ErrorExample _$result;
    try {
      _$result = _$v ??
          new _$ErrorExample._(
              shapeId: shapeId.build(),
              content: BuiltValueNullFieldError.checkNotNull(
                  content, 'ErrorExample', 'content'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shapeId';
        shapeId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ErrorExample', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

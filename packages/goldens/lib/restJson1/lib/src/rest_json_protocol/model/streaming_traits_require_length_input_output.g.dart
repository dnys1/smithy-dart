// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.streaming_traits_require_length_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StreamingTraitsRequireLengthInputOutput
    extends StreamingTraitsRequireLengthInputOutput {
  @override
  final _i2.Stream<List<int>>? blob;
  @override
  final String? foo;

  factory _$StreamingTraitsRequireLengthInputOutput(
          [void Function(StreamingTraitsRequireLengthInputOutputBuilder)?
              updates]) =>
      (new StreamingTraitsRequireLengthInputOutputBuilder()..update(updates))
          .build();

  _$StreamingTraitsRequireLengthInputOutput._({this.blob, this.foo})
      : super._();

  @override
  StreamingTraitsRequireLengthInputOutput rebuild(
          void Function(StreamingTraitsRequireLengthInputOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamingTraitsRequireLengthInputOutputBuilder toBuilder() =>
      new StreamingTraitsRequireLengthInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamingTraitsRequireLengthInputOutput &&
        blob == other.blob &&
        foo == other.foo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, blob.hashCode), foo.hashCode));
  }
}

class StreamingTraitsRequireLengthInputOutputBuilder
    implements
        Builder<StreamingTraitsRequireLengthInputOutput,
            StreamingTraitsRequireLengthInputOutputBuilder> {
  _$StreamingTraitsRequireLengthInputOutput? _$v;

  _i2.Stream<List<int>>? _blob;
  _i2.Stream<List<int>>? get blob => _$this._blob;
  set blob(_i2.Stream<List<int>>? blob) => _$this._blob = blob;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  StreamingTraitsRequireLengthInputOutputBuilder() {
    StreamingTraitsRequireLengthInputOutput._init(this);
  }

  StreamingTraitsRequireLengthInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamingTraitsRequireLengthInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreamingTraitsRequireLengthInputOutput;
  }

  @override
  void update(
      void Function(StreamingTraitsRequireLengthInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StreamingTraitsRequireLengthInputOutput build() {
    final _$result = _$v ??
        new _$StreamingTraitsRequireLengthInputOutput._(blob: blob, foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

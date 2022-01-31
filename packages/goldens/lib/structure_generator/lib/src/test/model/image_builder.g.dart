// GENERATED CODE - DO NOT MODIFY BY HAND

part of structure_generator.test.model.image_builder;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageBuilder extends ImageBuilder {
  factory _$ImageBuilder([void Function(ImageBuilderBuilder)? updates]) =>
      (new ImageBuilderBuilder()..update(updates)).build();

  _$ImageBuilder._() : super._();

  @override
  ImageBuilder rebuild(void Function(ImageBuilderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageBuilderBuilder toBuilder() => new ImageBuilderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageBuilder;
  }

  @override
  int get hashCode {
    return 997513257;
  }
}

class ImageBuilderBuilder
    implements Builder<ImageBuilder, ImageBuilderBuilder> {
  _$ImageBuilder? _$v;

  ImageBuilderBuilder() {
    ImageBuilder._init(this);
  }

  @override
  void replace(ImageBuilder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageBuilder;
  }

  @override
  void update(void Function(ImageBuilderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageBuilder build() {
    final _$result = _$v ?? new _$ImageBuilder._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

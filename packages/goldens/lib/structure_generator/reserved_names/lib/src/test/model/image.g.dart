// GENERATED CODE - DO NOT MODIFY BY HAND

part of reserved_names.test.model.image;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Image$ extends Image$ {
  factory _$Image$([void Function(Image$Builder)? updates]) =>
      (new Image$Builder()..update(updates)).build();

  _$Image$._() : super._();

  @override
  Image$ rebuild(void Function(Image$Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Image$Builder toBuilder() => new Image$Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Image$;
  }

  @override
  int get hashCode {
    return 338483629;
  }
}

class Image$Builder implements Builder<Image$, Image$Builder> {
  _$Image$? _$v;

  Image$Builder() {
    Image$._init(this);
  }

  @override
  void replace(Image$ other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Image$;
  }

  @override
  void update(void Function(Image$Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Image$ build() {
    final _$result = _$v ?? new _$Image$._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

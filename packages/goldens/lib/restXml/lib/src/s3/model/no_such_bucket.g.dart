// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.s3.model.no_such_bucket;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchBucket extends NoSuchBucket {
  factory _$NoSuchBucket([void Function(NoSuchBucketBuilder)? updates]) =>
      (new NoSuchBucketBuilder()..update(updates)).build();

  _$NoSuchBucket._() : super._();

  @override
  NoSuchBucket rebuild(void Function(NoSuchBucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchBucketBuilder toBuilder() => new NoSuchBucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchBucket;
  }

  @override
  int get hashCode {
    return 317849630;
  }
}

class NoSuchBucketBuilder
    implements Builder<NoSuchBucket, NoSuchBucketBuilder> {
  _$NoSuchBucket? _$v;

  NoSuchBucketBuilder() {
    NoSuchBucket._init(this);
  }

  @override
  void replace(NoSuchBucket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchBucket;
  }

  @override
  void update(void Function(NoSuchBucketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NoSuchBucket build() {
    final _$result = _$v ?? new _$NoSuchBucket._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.json_protocol.model.error_without_members;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorWithoutMembers extends ErrorWithoutMembers {
  factory _$ErrorWithoutMembers(
          [void Function(ErrorWithoutMembersBuilder)? updates]) =>
      (new ErrorWithoutMembersBuilder()..update(updates)).build();

  _$ErrorWithoutMembers._() : super._();

  @override
  ErrorWithoutMembers rebuild(
          void Function(ErrorWithoutMembersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorWithoutMembersBuilder toBuilder() =>
      new ErrorWithoutMembersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorWithoutMembers;
  }

  @override
  int get hashCode {
    return 496951678;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ErrorWithoutMembers').toString();
  }
}

class ErrorWithoutMembersBuilder
    implements Builder<ErrorWithoutMembers, ErrorWithoutMembersBuilder> {
  _$ErrorWithoutMembers? _$v;

  ErrorWithoutMembersBuilder() {
    ErrorWithoutMembers._init(this);
  }

  @override
  void replace(ErrorWithoutMembers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorWithoutMembers;
  }

  @override
  void update(void Function(ErrorWithoutMembersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorWithoutMembers build() {
    final _$result = _$v ?? new _$ErrorWithoutMembers._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

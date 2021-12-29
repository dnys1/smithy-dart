// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_header_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventHeaderTrait extends EventHeaderTrait {
  @override
  final bool isSynthetic;

  factory _$EventHeaderTrait(
          [void Function(EventHeaderTraitBuilder)? updates]) =>
      (new EventHeaderTraitBuilder()..update(updates)).build();

  _$EventHeaderTrait._({required this.isSynthetic}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'EventHeaderTrait', 'isSynthetic');
  }

  @override
  EventHeaderTrait rebuild(void Function(EventHeaderTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventHeaderTraitBuilder toBuilder() =>
      new EventHeaderTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventHeaderTrait && isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc(0, isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventHeaderTrait')
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class EventHeaderTraitBuilder
    implements Builder<EventHeaderTrait, EventHeaderTraitBuilder> {
  _$EventHeaderTrait? _$v;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(bool? isSynthetic) => _$this._isSynthetic = isSynthetic;

  EventHeaderTraitBuilder() {
    EventHeaderTrait._init(this);
  }

  EventHeaderTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventHeaderTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventHeaderTrait;
  }

  @override
  void update(void Function(EventHeaderTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventHeaderTrait build() {
    final _$result = _$v ??
        new _$EventHeaderTrait._(
            isSynthetic: BuiltValueNullFieldError.checkNotNull(
                isSynthetic, 'EventHeaderTrait', 'isSynthetic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

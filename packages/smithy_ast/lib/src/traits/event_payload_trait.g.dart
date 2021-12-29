// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_payload_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventPayloadTrait extends EventPayloadTrait {
  @override
  final bool isSynthetic;

  factory _$EventPayloadTrait(
          [void Function(EventPayloadTraitBuilder)? updates]) =>
      (new EventPayloadTraitBuilder()..update(updates)).build();

  _$EventPayloadTrait._({required this.isSynthetic}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'EventPayloadTrait', 'isSynthetic');
  }

  @override
  EventPayloadTrait rebuild(void Function(EventPayloadTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventPayloadTraitBuilder toBuilder() =>
      new EventPayloadTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventPayloadTrait && isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc(0, isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventPayloadTrait')
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class EventPayloadTraitBuilder
    implements Builder<EventPayloadTrait, EventPayloadTraitBuilder> {
  _$EventPayloadTrait? _$v;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(bool? isSynthetic) => _$this._isSynthetic = isSynthetic;

  EventPayloadTraitBuilder() {
    EventPayloadTrait._init(this);
  }

  EventPayloadTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventPayloadTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventPayloadTrait;
  }

  @override
  void update(void Function(EventPayloadTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventPayloadTrait build() {
    final _$result = _$v ??
        new _$EventPayloadTrait._(
            isSynthetic: BuiltValueNullFieldError.checkNotNull(
                isSynthetic, 'EventPayloadTrait', 'isSynthetic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

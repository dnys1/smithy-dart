// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shape_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShapeId extends ShapeId {
  @override
  final String namespace;
  @override
  final String name;
  @override
  final String? member;

  factory _$ShapeId([void Function(ShapeIdBuilder)? updates]) =>
      (new ShapeIdBuilder()..update(updates)).build();

  _$ShapeId._({required this.namespace, required this.name, this.member})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(namespace, 'ShapeId', 'namespace');
    BuiltValueNullFieldError.checkNotNull(name, 'ShapeId', 'name');
  }

  @override
  ShapeId rebuild(void Function(ShapeIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShapeIdBuilder toBuilder() => new ShapeIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShapeId &&
        namespace == other.namespace &&
        name == other.name &&
        member == other.member;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, namespace.hashCode), name.hashCode), member.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShapeId')
          ..add('namespace', namespace)
          ..add('name', name)
          ..add('member', member))
        .toString();
  }
}

class ShapeIdBuilder implements Builder<ShapeId, ShapeIdBuilder> {
  _$ShapeId? _$v;

  String? _namespace;
  String? get namespace => _$this._namespace;
  set namespace(String? namespace) => _$this._namespace = namespace;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _member;
  String? get member => _$this._member;
  set member(String? member) => _$this._member = member;

  ShapeIdBuilder();

  ShapeIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _namespace = $v.namespace;
      _name = $v.name;
      _member = $v.member;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShapeId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShapeId;
  }

  @override
  void update(void Function(ShapeIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShapeId build() {
    final _$result = _$v ??
        new _$ShapeId._(
            namespace: BuiltValueNullFieldError.checkNotNull(
                namespace, 'ShapeId', 'namespace'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'ShapeId', 'name'),
            member: member);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

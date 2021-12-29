// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deprecated_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeprecatedTrait> _$deprecatedTraitSerializer =
    new _$DeprecatedTraitSerializer();

class _$DeprecatedTraitSerializer
    implements StructuredSerializer<DeprecatedTrait> {
  @override
  final Iterable<Type> types = const [DeprecatedTrait, _$DeprecatedTrait];
  @override
  final String wireName = 'DeprecatedTrait';

  @override
  Iterable<Object?> serialize(Serializers serializers, DeprecatedTrait object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'since',
      serializers.serialize(object.since,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'isSynthetic',
      serializers.serialize(object.isSynthetic,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  DeprecatedTrait deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeprecatedTraitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'since':
          result.since = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$DeprecatedTrait extends DeprecatedTrait {
  @override
  final String since;
  @override
  final String message;
  @override
  final bool isSynthetic;

  factory _$DeprecatedTrait([void Function(DeprecatedTraitBuilder)? updates]) =>
      (new DeprecatedTraitBuilder()..update(updates)).build();

  _$DeprecatedTrait._(
      {required this.since, required this.message, required this.isSynthetic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(since, 'DeprecatedTrait', 'since');
    BuiltValueNullFieldError.checkNotNull(
        message, 'DeprecatedTrait', 'message');
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'DeprecatedTrait', 'isSynthetic');
  }

  @override
  DeprecatedTrait rebuild(void Function(DeprecatedTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeprecatedTraitBuilder toBuilder() =>
      new DeprecatedTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeprecatedTrait &&
        since == other.since &&
        message == other.message &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, since.hashCode), message.hashCode), isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeprecatedTrait')
          ..add('since', since)
          ..add('message', message)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class DeprecatedTraitBuilder
    implements Builder<DeprecatedTrait, DeprecatedTraitBuilder>, TraitBuilder {
  _$DeprecatedTrait? _$v;

  String? _since;
  String? get since => _$this._since;
  set since(covariant String? since) => _$this._since = since;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(covariant bool? isSynthetic) =>
      _$this._isSynthetic = isSynthetic;

  DeprecatedTraitBuilder();

  DeprecatedTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _since = $v.since;
      _message = $v.message;
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DeprecatedTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeprecatedTrait;
  }

  @override
  void update(void Function(DeprecatedTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeprecatedTrait build() {
    final _$result = _$v ??
        new _$DeprecatedTrait._(
            since: BuiltValueNullFieldError.checkNotNull(
                since, 'DeprecatedTrait', 'since'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'DeprecatedTrait', 'message'),
            isSynthetic: BuiltValueNullFieldError.checkNotNull(
                isSynthetic, 'DeprecatedTrait', 'isSynthetic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EndpointTrait> _$endpointTraitSerializer =
    new _$EndpointTraitSerializer();

class _$EndpointTraitSerializer implements StructuredSerializer<EndpointTrait> {
  @override
  final Iterable<Type> types = const [EndpointTrait, _$EndpointTrait];
  @override
  final String wireName = 'EndpointTrait';

  @override
  Iterable<Object?> serialize(Serializers serializers, EndpointTrait object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hostPrefix',
      serializers.serialize(object.hostPrefix,
          specifiedType: const FullType(String)),
      'isSynthetic',
      serializers.serialize(object.isSynthetic,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  EndpointTrait deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EndpointTraitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hostPrefix':
          result.hostPrefix = serializers.deserialize(value,
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

class _$EndpointTrait extends EndpointTrait {
  @override
  final String hostPrefix;
  @override
  final bool isSynthetic;

  factory _$EndpointTrait([void Function(EndpointTraitBuilder)? updates]) =>
      (new EndpointTraitBuilder()..update(updates)).build();

  _$EndpointTrait._({required this.hostPrefix, required this.isSynthetic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hostPrefix, 'EndpointTrait', 'hostPrefix');
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'EndpointTrait', 'isSynthetic');
  }

  @override
  EndpointTrait rebuild(void Function(EndpointTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointTraitBuilder toBuilder() => new EndpointTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointTrait &&
        hostPrefix == other.hostPrefix &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, hostPrefix.hashCode), isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EndpointTrait')
          ..add('hostPrefix', hostPrefix)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class EndpointTraitBuilder
    implements Builder<EndpointTrait, EndpointTraitBuilder>, TraitBuilder {
  _$EndpointTrait? _$v;

  String? _hostPrefix;
  String? get hostPrefix => _$this._hostPrefix;
  set hostPrefix(covariant String? hostPrefix) =>
      _$this._hostPrefix = hostPrefix;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(covariant bool? isSynthetic) =>
      _$this._isSynthetic = isSynthetic;

  EndpointTraitBuilder() {
    EndpointTrait._init(this);
  }

  EndpointTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostPrefix = $v.hostPrefix;
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EndpointTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointTrait;
  }

  @override
  void update(void Function(EndpointTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EndpointTrait build() {
    final _$result = _$v ??
        new _$EndpointTrait._(
            hostPrefix: BuiltValueNullFieldError.checkNotNull(
                hostPrefix, 'EndpointTrait', 'hostPrefix'),
            isSynthetic: BuiltValueNullFieldError.checkNotNull(
                isSynthetic, 'EndpointTrait', 'isSynthetic'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

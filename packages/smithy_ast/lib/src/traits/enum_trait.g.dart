// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnumTrait> _$enumTraitSerializer = new _$EnumTraitSerializer();

class _$EnumTraitSerializer implements StructuredSerializer<EnumTrait> {
  @override
  final Iterable<Type> types = const [EnumTrait, _$EnumTrait];
  @override
  final String wireName = 'EnumTrait';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnumTrait object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'definitions',
      serializers.serialize(object.definitions,
          specifiedType: const FullType(
              BuiltList, const [const FullType(EnumDefinition)])),
      'isSynthetic',
      serializers.serialize(object.isSynthetic,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  EnumTrait deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnumTraitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'definitions':
          result.definitions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EnumDefinition)]))!
              as BuiltList<Object?>);
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

class _$EnumTrait extends EnumTrait {
  @override
  final BuiltList<EnumDefinition> definitions;
  @override
  final bool isSynthetic;

  factory _$EnumTrait([void Function(EnumTraitBuilder)? updates]) =>
      (new EnumTraitBuilder()..update(updates)).build();

  _$EnumTrait._({required this.definitions, required this.isSynthetic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        definitions, 'EnumTrait', 'definitions');
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'EnumTrait', 'isSynthetic');
  }

  @override
  EnumTrait rebuild(void Function(EnumTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnumTraitBuilder toBuilder() => new EnumTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnumTrait &&
        definitions == other.definitions &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, definitions.hashCode), isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EnumTrait')
          ..add('definitions', definitions)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class EnumTraitBuilder
    implements Builder<EnumTrait, EnumTraitBuilder>, TraitBuilder {
  _$EnumTrait? _$v;

  ListBuilder<EnumDefinition>? _definitions;
  ListBuilder<EnumDefinition> get definitions =>
      _$this._definitions ??= new ListBuilder<EnumDefinition>();
  set definitions(covariant ListBuilder<EnumDefinition>? definitions) =>
      _$this._definitions = definitions;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(covariant bool? isSynthetic) =>
      _$this._isSynthetic = isSynthetic;

  EnumTraitBuilder() {
    EnumTrait._init(this);
  }

  EnumTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _definitions = $v.definitions.toBuilder();
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EnumTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnumTrait;
  }

  @override
  void update(void Function(EnumTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EnumTrait build() {
    _$EnumTrait _$result;
    try {
      _$result = _$v ??
          new _$EnumTrait._(
              definitions: definitions.build(),
              isSynthetic: BuiltValueNullFieldError.checkNotNull(
                  isSynthetic, 'EnumTrait', 'isSynthetic'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'definitions';
        definitions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EnumTrait', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

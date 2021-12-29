// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_definition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnumDefinition> _$enumDefinitionSerializer =
    new _$EnumDefinitionSerializer();

class _$EnumDefinitionSerializer
    implements StructuredSerializer<EnumDefinition> {
  @override
  final Iterable<Type> types = const [EnumDefinition, _$EnumDefinition];
  @override
  final String wireName = 'EnumDefinition';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnumDefinition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'deprecated',
      serializers.serialize(object.deprecated,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.documentation;
    if (value != null) {
      result
        ..add('documentation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EnumDefinition deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnumDefinitionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'documentation':
          result.documentation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deprecated':
          result.deprecated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$EnumDefinition extends EnumDefinition {
  @override
  final String value;
  @override
  final String? documentation;
  @override
  final BuiltList<String> tags;
  @override
  final String? name;
  @override
  final bool deprecated;

  factory _$EnumDefinition([void Function(EnumDefinitionBuilder)? updates]) =>
      (new EnumDefinitionBuilder()..update(updates)).build();

  _$EnumDefinition._(
      {required this.value,
      this.documentation,
      required this.tags,
      this.name,
      required this.deprecated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'EnumDefinition', 'value');
    BuiltValueNullFieldError.checkNotNull(tags, 'EnumDefinition', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        deprecated, 'EnumDefinition', 'deprecated');
  }

  @override
  EnumDefinition rebuild(void Function(EnumDefinitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnumDefinitionBuilder toBuilder() =>
      new EnumDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnumDefinition &&
        value == other.value &&
        documentation == other.documentation &&
        tags == other.tags &&
        name == other.name &&
        deprecated == other.deprecated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, value.hashCode), documentation.hashCode),
                tags.hashCode),
            name.hashCode),
        deprecated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EnumDefinition')
          ..add('value', value)
          ..add('documentation', documentation)
          ..add('tags', tags)
          ..add('name', name)
          ..add('deprecated', deprecated))
        .toString();
  }
}

class EnumDefinitionBuilder
    implements Builder<EnumDefinition, EnumDefinitionBuilder> {
  _$EnumDefinition? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _documentation;
  String? get documentation => _$this._documentation;
  set documentation(String? documentation) =>
      _$this._documentation = documentation;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _deprecated;
  bool? get deprecated => _$this._deprecated;
  set deprecated(bool? deprecated) => _$this._deprecated = deprecated;

  EnumDefinitionBuilder();

  EnumDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _documentation = $v.documentation;
      _tags = $v.tags.toBuilder();
      _name = $v.name;
      _deprecated = $v.deprecated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnumDefinition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnumDefinition;
  }

  @override
  void update(void Function(EnumDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EnumDefinition build() {
    _$EnumDefinition _$result;
    try {
      _$result = _$v ??
          new _$EnumDefinition._(
              value: BuiltValueNullFieldError.checkNotNull(
                  value, 'EnumDefinition', 'value'),
              documentation: documentation,
              tags: tags.build(),
              name: name,
              deprecated: BuiltValueNullFieldError.checkNotNull(
                  deprecated, 'EnumDefinition', 'deprecated'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EnumDefinition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_trait.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CorsTrait> _$corsTraitSerializer = new _$CorsTraitSerializer();

class _$CorsTraitSerializer implements StructuredSerializer<CorsTrait> {
  @override
  final Iterable<Type> types = const [CorsTrait, _$CorsTrait];
  @override
  final String wireName = 'CorsTrait';

  @override
  Iterable<Object?> serialize(Serializers serializers, CorsTrait object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'origin',
      serializers.serialize(object.origin,
          specifiedType: const FullType(String)),
      'maxAge',
      serializers.serialize(object.maxAge, specifiedType: const FullType(int)),
      'additionalAllowedHeaders',
      serializers.serialize(object.additionalAllowedHeaders,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(String)])),
      'additionalExposedHeaders',
      serializers.serialize(object.additionalExposedHeaders,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(String)])),
      'isSynthetic',
      serializers.serialize(object.isSynthetic,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  CorsTrait deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CorsTraitBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'origin':
          result.origin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maxAge':
          result.maxAge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'additionalAllowedHeaders':
          result.additionalAllowedHeaders.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(String)]))!
              as BuiltSet<Object?>);
          break;
        case 'additionalExposedHeaders':
          result.additionalExposedHeaders.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(String)]))!
              as BuiltSet<Object?>);
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

class _$CorsTrait extends CorsTrait {
  @override
  final String origin;
  @override
  final int maxAge;
  @override
  final BuiltSet<String> additionalAllowedHeaders;
  @override
  final BuiltSet<String> additionalExposedHeaders;
  @override
  final bool isSynthetic;

  factory _$CorsTrait([void Function(CorsTraitBuilder)? updates]) =>
      (new CorsTraitBuilder()..update(updates)).build();

  _$CorsTrait._(
      {required this.origin,
      required this.maxAge,
      required this.additionalAllowedHeaders,
      required this.additionalExposedHeaders,
      required this.isSynthetic})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(origin, 'CorsTrait', 'origin');
    BuiltValueNullFieldError.checkNotNull(maxAge, 'CorsTrait', 'maxAge');
    BuiltValueNullFieldError.checkNotNull(
        additionalAllowedHeaders, 'CorsTrait', 'additionalAllowedHeaders');
    BuiltValueNullFieldError.checkNotNull(
        additionalExposedHeaders, 'CorsTrait', 'additionalExposedHeaders');
    BuiltValueNullFieldError.checkNotNull(
        isSynthetic, 'CorsTrait', 'isSynthetic');
  }

  @override
  CorsTrait rebuild(void Function(CorsTraitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsTraitBuilder toBuilder() => new CorsTraitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsTrait &&
        origin == other.origin &&
        maxAge == other.maxAge &&
        additionalAllowedHeaders == other.additionalAllowedHeaders &&
        additionalExposedHeaders == other.additionalExposedHeaders &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, origin.hashCode), maxAge.hashCode),
                additionalAllowedHeaders.hashCode),
            additionalExposedHeaders.hashCode),
        isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CorsTrait')
          ..add('origin', origin)
          ..add('maxAge', maxAge)
          ..add('additionalAllowedHeaders', additionalAllowedHeaders)
          ..add('additionalExposedHeaders', additionalExposedHeaders)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class CorsTraitBuilder
    implements Builder<CorsTrait, CorsTraitBuilder>, TraitBuilder {
  _$CorsTrait? _$v;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(covariant String? origin) => _$this._origin = origin;

  int? _maxAge;
  int? get maxAge => _$this._maxAge;
  set maxAge(covariant int? maxAge) => _$this._maxAge = maxAge;

  SetBuilder<String>? _additionalAllowedHeaders;
  SetBuilder<String> get additionalAllowedHeaders =>
      _$this._additionalAllowedHeaders ??= new SetBuilder<String>();
  set additionalAllowedHeaders(
          covariant SetBuilder<String>? additionalAllowedHeaders) =>
      _$this._additionalAllowedHeaders = additionalAllowedHeaders;

  SetBuilder<String>? _additionalExposedHeaders;
  SetBuilder<String> get additionalExposedHeaders =>
      _$this._additionalExposedHeaders ??= new SetBuilder<String>();
  set additionalExposedHeaders(
          covariant SetBuilder<String>? additionalExposedHeaders) =>
      _$this._additionalExposedHeaders = additionalExposedHeaders;

  bool? _isSynthetic;
  bool? get isSynthetic => _$this._isSynthetic;
  set isSynthetic(covariant bool? isSynthetic) =>
      _$this._isSynthetic = isSynthetic;

  CorsTraitBuilder();

  CorsTraitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _origin = $v.origin;
      _maxAge = $v.maxAge;
      _additionalAllowedHeaders = $v.additionalAllowedHeaders.toBuilder();
      _additionalExposedHeaders = $v.additionalExposedHeaders.toBuilder();
      _isSynthetic = $v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CorsTrait other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CorsTrait;
  }

  @override
  void update(void Function(CorsTraitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CorsTrait build() {
    _$CorsTrait _$result;
    try {
      _$result = _$v ??
          new _$CorsTrait._(
              origin: BuiltValueNullFieldError.checkNotNull(
                  origin, 'CorsTrait', 'origin'),
              maxAge: BuiltValueNullFieldError.checkNotNull(
                  maxAge, 'CorsTrait', 'maxAge'),
              additionalAllowedHeaders: additionalAllowedHeaders.build(),
              additionalExposedHeaders: additionalExposedHeaders.build(),
              isSynthetic: BuiltValueNullFieldError.checkNotNull(
                  isSynthetic, 'CorsTrait', 'isSynthetic'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'additionalAllowedHeaders';
        additionalAllowedHeaders.build();
        _$failedField = 'additionalExposedHeaders';
        additionalExposedHeaders.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CorsTrait', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.model.my_struct;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyStruct> _$myStructSerializer = new _$MyStructSerializer();

class _$MyStructSerializer implements StructuredSerializer<MyStruct> {
  @override
  final Iterable<Type> types = const [MyStruct, _$MyStruct];
  @override
  final String wireName = 'MyStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'bar',
      serializers.serialize(object.bar, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.baz;
    if (value != null) {
      result
        ..add('baz')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.byteValue;
    if (value != null) {
      result
        ..add('byteValue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.foo;
    if (value != null) {
      result
        ..add('foo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.object;
    if (value != null) {
      result
        ..add('object')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quux;
    if (value != null) {
      result
        ..add('quux')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.Qux)));
    }
    return result;
  }

  @override
  MyStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bar':
          result.bar = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'baz':
          result.baz = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'byteValue':
          result.byteValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'foo':
          result.foo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'object':
          result.object = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quux':
          result.quux.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.Qux))! as _i1.Qux);
          break;
      }
    }

    return result.build();
  }
}

class _$MyStruct extends MyStruct {
  @override
  final int bar;
  @override
  final int? baz;
  @override
  final int? byteValue;
  @override
  final String? foo;
  @override
  final String? object;
  @override
  final _i1.Qux? quux;

  factory _$MyStruct([void Function(MyStructBuilder)? updates]) =>
      (new MyStructBuilder()..update(updates)).build();

  _$MyStruct._(
      {required this.bar,
      this.baz,
      this.byteValue,
      this.foo,
      this.object,
      this.quux})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bar, 'MyStruct', 'bar');
  }

  @override
  MyStruct rebuild(void Function(MyStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyStructBuilder toBuilder() => new MyStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyStruct &&
        bar == other.bar &&
        baz == other.baz &&
        byteValue == other.byteValue &&
        foo == other.foo &&
        object == other.object &&
        quux == other.quux;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, bar.hashCode), baz.hashCode),
                    byteValue.hashCode),
                foo.hashCode),
            object.hashCode),
        quux.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MyStruct')
          ..add('bar', bar)
          ..add('baz', baz)
          ..add('byteValue', byteValue)
          ..add('foo', foo)
          ..add('object', object)
          ..add('quux', quux))
        .toString();
  }
}

class MyStructBuilder implements Builder<MyStruct, MyStructBuilder> {
  _$MyStruct? _$v;

  int? _bar;
  int? get bar => _$this._bar;
  set bar(int? bar) => _$this._bar = bar;

  int? _baz;
  int? get baz => _$this._baz;
  set baz(int? baz) => _$this._baz = baz;

  int? _byteValue;
  int? get byteValue => _$this._byteValue;
  set byteValue(int? byteValue) => _$this._byteValue = byteValue;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  String? _object;
  String? get object => _$this._object;
  set object(String? object) => _$this._object = object;

  _i1.QuxBuilder? _quux;
  _i1.QuxBuilder get quux => _$this._quux ??= new _i1.QuxBuilder();
  set quux(_i1.QuxBuilder? quux) => _$this._quux = quux;

  MyStructBuilder() {
    MyStruct._init(this);
  }

  MyStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bar = $v.bar;
      _baz = $v.baz;
      _byteValue = $v.byteValue;
      _foo = $v.foo;
      _object = $v.object;
      _quux = $v.quux?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyStruct;
  }

  @override
  void update(void Function(MyStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MyStruct build() {
    _$MyStruct _$result;
    try {
      _$result = _$v ??
          new _$MyStruct._(
              bar:
                  BuiltValueNullFieldError.checkNotNull(bar, 'MyStruct', 'bar'),
              baz: baz,
              byteValue: byteValue,
              foo: foo,
              object: object,
              quux: _quux?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quux';
        _quux?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MyStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

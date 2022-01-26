// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_validation_protocol.model.pattern_union_override;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

abstract class PatternUnionOverride
    extends _i1.SmithyUnion<PatternUnionOverride> {
  const PatternUnionOverride._();

  const factory PatternUnionOverride.first(String first) =
      _PatternUnionOverrideFirst;

  const factory PatternUnionOverride.second(String second) =
      _PatternUnionOverrideSecond;

  const factory PatternUnionOverride.sdkUnknown(String name, Object value) =
      _PatternUnionOverrideSdkUnknown;

  static const List<_i1.SmithySerializer<PatternUnionOverride>> serializers = [
    _PatternUnionOverrideRestJson1Serializer()
  ];

  String? get first => null;
  String? get second => null;
  @override
  Object get value => (first ?? second)!;
  @override
  T? when<T>(
      {T Function(String)? first,
      T Function(String)? second,
      T Function(String, Object)? sdkUnknown}) {
    if (this is _PatternUnionOverrideFirst) {
      return first?.call((this as _PatternUnionOverrideFirst).first);
    }
    if (this is _PatternUnionOverrideSecond) {
      return second?.call((this as _PatternUnionOverrideSecond).second);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'PatternUnionOverride');
    if (first != null) {
      helper.add(r'first', first)!;
    }
    if (second != null) {
      helper.add(r'second', second)!;
    }
    return helper.toString();
  }
}

class _PatternUnionOverrideFirst extends PatternUnionOverride {
  const _PatternUnionOverrideFirst(this.first) : super._();

  @override
  final String first;

  @override
  String get name => 'first';
}

class _PatternUnionOverrideSecond extends PatternUnionOverride {
  const _PatternUnionOverrideSecond(this.second) : super._();

  @override
  final String second;

  @override
  String get name => 'second';
}

class _PatternUnionOverrideSdkUnknown extends PatternUnionOverride {
  const _PatternUnionOverrideSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class _PatternUnionOverrideRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PatternUnionOverride> {
  const _PatternUnionOverrideRestJson1Serializer()
      : super('PatternUnionOverride');

  @override
  Iterable<Type> get types => const [PatternUnionOverride];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  PatternUnionOverride deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'first':
        return _PatternUnionOverrideFirst((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
      case 'second':
        return _PatternUnionOverrideSecond((serializers.deserialize(value,
            specifiedType: const FullType(String)) as String));
    }
    return _PatternUnionOverrideSdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as PatternUnionOverride);
    return [
      object.name,
      object.when<Object?>(
          first: (String first) => serializers.serialize(first,
              specifiedType: const FullType(String)),
          second: (String second) => serializers.serialize(second,
              specifiedType: const FullType(String)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}

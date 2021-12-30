import 'dart:core' as core;
import 'dart:async';
import 'dart:typed_data';

import 'package:code_builder/code_builder.dart';
import 'package:fixnum/fixnum.dart';

/// Common type references used throughout code generation.
abstract class DartTypes {
  DartTypes._();

  /// `dart:core` types.
  static const core = _Core();

  /// `dart:async` types.
  static const async = _Async();

  /// `dart:typed_data` types.
  static const typedData = _TypedData();

  /// `package:fixnum` types.
  static const fixNum = _FixNum();

  /// `package:smithy` types.
  static const smithy = _Smithy();
}

/// `dart:core` types
class _Core {
  const _Core();

  static const _url = 'dart:core';

  /// Creates a [core.BigInt] reference.
  Reference get bigInt => const Reference('BigInt', _url);

  /// Creates a [core.bool] reference.
  Reference get bool => const Reference('bool', _url);

  /// Creates a [core.DateTime] reference.
  Reference get dateTime => const Reference('DateTime', _url);

  /// Creates a [core.double] reference.
  Reference get double => const Reference('double', _url);

  /// Creates an [core.int] reference.
  Reference get int => const Reference('int', _url);

  /// Creates a [core.List] reference.
  Reference list(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'List'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [core.Map] reference.
  Reference map(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'Map'
          ..url = _url
          ..types.add(key)
          ..types.add(value),
      );

  /// Creates an [core.Object] reference.
  Reference get object => const Reference('Object', _url);

  /// Creates a [core.Set] reference.
  Reference set(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'Set'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [core.String] reference.
  Reference get string => const Reference('String', _url);
}

/// `dart:async` types
class _Async {
  const _Async();

  static const _url = 'dart:async';

  /// Creates a [Future] reference.
  Reference future(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'Future'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [Stream] reference.
  Reference stream(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'Stream'
          ..url = _url
          ..types.add(ref),
      );
}

/// `dart:typed_data` types
class _TypedData {
  const _TypedData();

  static const _url = 'dart:typed_data';

  /// Creates a [Uint8List] reference.
  Reference get uint8List => const Reference('Uint8List', _url);
}

/// `package:fixnum` types
class _FixNum {
  const _FixNum();

  static const _url = 'package:fixnum/fixnum.dart';

  /// Creates an [Int64] reference.
  Reference get int64 => const Reference('Int64', _url);
}

/// `package:smithy` types
class _Smithy {
  const _Smithy();

  static const _url = 'package:smithy/smithy.dart';

  /// Creates a [SmithyEnum] reference for [ref], the enum class.
  Reference smithyEnum(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'SmithyEnum'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [SmithyUnion] reference for [ref], the union class.
  Reference smithyUnion(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'SmithyUnion'
          ..url = _url
          ..types.add(ref),
      );
}

class _AwsCommon {
  const _AwsCommon();

  static const _url = 'package:aws_common/aws_common.dart';
}

extension ReferenceHelpers on Reference {
  TypeReference get typeRef =>
      this is TypeReference ? this as TypeReference : type as TypeReference;

  /// Returns a nullable version of `this`.
  TypeReference get boxed {
    return typeRef.rebuild((t) => t.isNullable = true);
  }

  /// Returns a non-nullable version of `this`.
  TypeReference get unboxed {
    return typeRef.rebuild((t) => t.isNullable = false);
  }

  /// Returns a version of `this` with nullable set to [isBoxed].
  TypeReference withBoxed(core.bool isBoxed) {
    return isBoxed ? boxed : unboxed;
  }
}

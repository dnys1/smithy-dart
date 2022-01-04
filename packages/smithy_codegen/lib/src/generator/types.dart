import 'dart:core' as core;
import 'dart:async';
import 'dart:typed_data';

import 'package:aws_common/aws_common.dart' as aws_common;
import 'package:built_collection/built_collection.dart' as built_collection;
import 'package:built_value/built_value.dart' as built_value;
import 'package:built_value/serializer.dart' as built_value_serializer;
import 'package:code_builder/code_builder.dart';
import 'package:fixnum/fixnum.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_test;
import 'package:meta/meta.dart' as meta;
import 'package:smithy/smithy.dart' as smithy;

/// Common type references used throughout code generation.
abstract class DartTypes {
  DartTypes._();

  /// `dart:core` types.
  static const core = _Core();

  /// `dart:async` types.
  static const async = _Async();

  /// `package:aws_common` types.
  static const awsCommon = _AwsCommon();

  /// `package:built_value` types.
  static const builtValue = BuiltValue._();

  /// `package:fixnum` types.
  static const fixNum = _FixNum();

  /// `package:http` types.
  static const http = _Http();

  /// `package:meta` types.
  static const meta = _Meta();

  /// `package:smithy` types.
  static const smithy = _Smithy();

  /// `dart:typed_data` types.
  static const typedData = _TypedData();
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

  /// Creates a [core.Deprecated] reference.
  Reference get deprecated => const Reference('Deprecated', _url);

  /// Creates a [core.double] reference.
  Reference get double => const Reference('double', _url);

  /// Creates an [core.int] reference.
  Reference get int => const Reference('int', _url);

  /// Creates a [core.Iterable] reference.
  Reference iterable([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'Iterable'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
      );

  /// Creates a [core.List] reference.
  Reference list([Reference? ref]) => TypeReference(
        (t) => t
          ..symbol = 'List'
          ..url = _url
          ..types.addAll([
            if (ref != null) ref,
          ]),
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

  /// Creates a [core.override] reference.
  Reference get override => const Reference('override', _url);

  /// Creates a [core.Set] reference.
  Reference set(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'Set'
          ..url = _url
          ..types.add(ref),
      );

  /// Create a [core.StateError] reference.
  Reference get stateError => const Reference('StateError', _url);

  /// Creates a [core.String] reference.
  Reference get string => const Reference('String', _url);

  /// Creates a `void` reference.
  Reference get void$ => const Reference('void');
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

/// `package:aws_common` types.
class _AwsCommon {
  const _AwsCommon();

  static const _url = 'package:aws_common/aws_common.dart';

  /// Creates an [aws_common.AWSEquatable] reference.
  Reference awsEquatable(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'AWSEquatable'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates an [aws_common.AWSSerializable] reference.
  Reference get awsSerializable => const Reference('AWSSerializable', _url);
}

/// `package:built_value` types
class BuiltValue {
  const BuiltValue._();

  static const mainUrl = 'package:built_value/built_value.dart';
  static const serializerUrl = 'package:built_value/serializer.dart';
  static const _collectionUrl =
      'package:built_collection/built_collection.dart';

  /// Creates a [built_value.Built] reference for [ref] and its builder class,
  /// [builderRef].
  Reference built(Reference ref, Reference builderRef) => TypeReference(
        (t) => t
          ..symbol = 'Built'
          ..url = mainUrl
          ..types.addAll([ref, builderRef]),
      );

  /// Creates a [built_collection.BuiltList] reference for generic type [ref].
  Reference builtList(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'BuiltList'
          ..url = _collectionUrl
          ..types.add(ref),
      );

  /// Creates a [built_collection.BuiltMap] reference with [key] and [value]
  /// generic types.
  Reference builtMap(Reference key, Reference value) => TypeReference(
        (t) => t
          ..symbol = 'BuiltMap'
          ..url = _collectionUrl
          ..types.add(key)
          ..types.add(value),
      );

  /// Creates a [built_collection.BuiltSet] reference for generic type [ref].
  Reference builtSet(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'BuiltSet'
          ..url = _collectionUrl
          ..types.add(ref),
      );

  /// Creates a [built_value_serializer.Serializers] reference.
  Reference get serializers => const Reference('Serializers', serializerUrl);

  /// Creates a [built_value_serializer.FullType] reference.
  Reference get fullType => const Reference('FullType', serializerUrl);
}

/// `package:fixnum` types
class _FixNum {
  const _FixNum();

  static const _url = 'package:fixnum/fixnum.dart';

  /// Creates an [Int64] reference.
  Reference get int64 => const Reference('Int64', _url);
}

/// `package:http` types.
class _Http {
  const _Http();

  static const _url = 'package:http/http.dart';
  static const _testingUrl = 'package:http/testing.dart';

  /// Creates an [http.ByteStream] reference.
  Reference get byteStream => const Reference('ByteStream', _url);

  /// Creates an [http.Client] reference.
  Reference get client => const Reference('Client', _url);

  /// Creates an [http_test.MockClient] reference.
  Reference get mockClient => const Reference('MockClient', _testingUrl);

  /// Creates an [http.Request] reference.
  Reference get request => const Reference('Request', _url);

  /// Creates an [http.Response] reference.
  Reference get response => const Reference('Response', _url);

  /// Creates an [http.StreamedRequest] reference.
  Reference get streamedRequest => const Reference('StreamedRequest', _url);

  /// Creates an [http.StreamedResponse] reference.
  Reference get streamedResponse => const Reference('StreamedResponse', _url);
}

/// `package:meta` types.
class _Meta {
  const _Meta();

  static const _url = 'package:meta/meta.dart';

  /// Creates a [meta.immutable] reference.
  Reference get immutable => const Reference('immutable', _url);
}

/// `package:smithy` types
class _Smithy {
  const _Smithy();

  static const _url = 'package:smithy/smithy.dart';

  /// Creates a [smithy.ShapeId] AST reference.
  Reference get shapeId => const Reference('ShapeId', _url);

  /// Creates a [smithy.SmithyEnum] reference for [ref], the enum class.
  Reference smithyEnum(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'SmithyEnum'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [smithy.SmithyUnion] reference for [ref], the union class.
  Reference smithyUnion(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'SmithyUnion'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [smithy.SmithySerializer] reference for [ref], the class being
  /// serialized.
  Reference smithySerializer(Reference ref) => TypeReference(
        (t) => t
          ..symbol = 'SmithySerializer'
          ..url = _url
          ..types.add(ref),
      );

  /// Creates a [smithy.TimestampSerializer] reference.
  Reference get timestampSerializer =>
      const Reference('TimestampSerializer', _url);
}

/// `dart:typed_data` types
class _TypedData {
  const _TypedData();

  static const _url = 'dart:typed_data';

  /// Creates a [Uint8List] reference.
  Reference get uint8List => const Reference('Uint8List', _url);
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

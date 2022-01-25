// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.complex_error;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:rest_json1/src/rest_json_protocol/model/complex_nested_error_data.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'complex_error.g.dart';

/// This error is thrown when a request is invalid.
abstract class ComplexError
    with _i1.AWSEquatable<ComplexError>
    implements
        Built<ComplexError, ComplexErrorBuilder>,
        _i2.HasPayload<ComplexErrorPayload>,
        _i2.SmithyException {
  factory ComplexError([void Function(ComplexErrorBuilder) updates]) =
      _$ComplexError;

  const ComplexError._();

  factory ComplexError.fromResponse(
          ComplexErrorPayload payload, _i1.AWSStreamedHttpResponse response) =>
      ComplexError((b) {
        if (payload.nested != null) {
          b.nested.replace(payload.nested!);
        }
        b.topLevel = payload.topLevel;
        if (response.headers['X-Header'] != null) {
          b.header = response.headers['X-Header']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    _ComplexErrorRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorBuilder b) {}
  String? get header;
  _i3.ComplexNestedErrorData? get nested;
  String? get topLevel;
  @override
  ComplexErrorPayload getPayload() => ComplexErrorPayload((b) => b
    ..nested = nested
    ..topLevel = topLevel);
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [header, nested, topLevel];
}

@_i4.internal
@BuiltValue(nestedBuilders: false)
abstract class ComplexErrorPayload
    with _i1.AWSEquatable<ComplexErrorPayload>
    implements Built<ComplexErrorPayload, ComplexErrorPayloadBuilder> {
  factory ComplexErrorPayload(
          [void Function(ComplexErrorPayloadBuilder) updates]) =
      _$ComplexErrorPayload;

  const ComplexErrorPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorPayloadBuilder b) {}
  _i3.ComplexNestedErrorData? get nested;
  String? get topLevel;
  @override
  List<Object?> get props => [nested, topLevel];
}

class _ComplexErrorRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ComplexErrorPayload> {
  const _ComplexErrorRestJson1Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [
        ComplexError,
        _$ComplexError,
        ComplexErrorPayload,
        _$ComplexErrorPayload
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  ComplexErrorPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ComplexErrorPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Nested':
          if (value != null) {
            result.nested = (serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ComplexNestedErrorData))
                as _i3.ComplexNestedErrorData);
          }
          break;
        case 'TopLevel':
          if (value != null) {
            result.topLevel = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is ComplexError
        ? object.getPayload()
        : (object as ComplexErrorPayload);
    final result = <Object?>[];
    if (payload.nested != null) {
      result
        ..add('Nested')
        ..add(serializers.serialize(payload.nested,
            specifiedType:
                const FullType.nullable(_i3.ComplexNestedErrorData)));
    }
    if (payload.topLevel != null) {
      result
        ..add('TopLevel')
        ..add(serializers.serialize(payload.topLevel,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}
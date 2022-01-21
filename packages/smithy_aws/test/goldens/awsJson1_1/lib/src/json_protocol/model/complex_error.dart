// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.complex_error;

import 'package:aws_json1_1/src/json_protocol/model/complex_nested_error_data.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'complex_error.g.dart';

/// This error is thrown when a request is invalid.
abstract class ComplexError
    with _i1.SmithyException
    implements
        Built<ComplexError, ComplexErrorBuilder>,
        _i1.HasPayload<ComplexErrorPayload> {
  factory ComplexError([void Function(ComplexErrorBuilder) updates]) =
      _$ComplexError;

  const ComplexError._();

  static const List<_i1.SmithySerializer> serializers = [
    _ComplexErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorBuilder b) {}
  _i2.ComplexNestedErrorData? get nested;
  String? get topLevel;
  @override
  ComplexErrorPayload getPayload() => ComplexErrorPayload((b) => b
    ..nested = nested
    ..topLevel = topLevel);
  @override
  String? get message => null;
  @override
  bool get isRetryable => false;
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class ComplexErrorPayload
    implements Built<ComplexErrorPayload, ComplexErrorPayloadBuilder> {
  factory ComplexErrorPayload(
          [void Function(ComplexErrorPayloadBuilder) updates]) =
      _$ComplexErrorPayload;

  const ComplexErrorPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorPayloadBuilder b) {}
  _i2.ComplexNestedErrorData? get nested;
  String? get topLevel;
}

class _ComplexErrorAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ComplexError> {
  const _ComplexErrorAwsJson11Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [
        ComplexError,
        _$ComplexError,
        ComplexErrorPayload,
        _$ComplexErrorPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ComplexError deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Nested':
          result.nested.replace((serializers.deserialize(value,
                  specifiedType: const FullType(_i2.ComplexNestedErrorData))
              as _i2.ComplexNestedErrorData));
          break;
        case 'TopLevel':
          result.topLevel = (serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ComplexError);
    final result = <Object?>[];
    if (payload.nested != null) {
      result
        ..add('Nested')
        ..add(serializers.serialize(payload.nested,
            specifiedType: const FullType(_i2.ComplexNestedErrorData)));
    }
    if (payload.topLevel != null) {
      result
        ..add('TopLevel')
        ..add(serializers.serialize(payload.topLevel,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}

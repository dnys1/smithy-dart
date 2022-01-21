// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.put_and_get_inline_documents_input_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'put_and_get_inline_documents_input_output.g.dart';

abstract class PutAndGetInlineDocumentsInputOutput
    with
        _i1.HttpInput<PutAndGetInlineDocumentsInputOutputPayload>
    implements
        Built<PutAndGetInlineDocumentsInputOutput,
            PutAndGetInlineDocumentsInputOutputBuilder>,
        _i1.HasPayload<PutAndGetInlineDocumentsInputOutputPayload> {
  factory PutAndGetInlineDocumentsInputOutput(
          [void Function(PutAndGetInlineDocumentsInputOutputBuilder) updates]) =
      _$PutAndGetInlineDocumentsInputOutput;

  const PutAndGetInlineDocumentsInputOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutAndGetInlineDocumentsInputOutputBuilder b) {}
  Object? get inlineDocument;
  @override
  PutAndGetInlineDocumentsInputOutputPayload getPayload() =>
      PutAndGetInlineDocumentsInputOutputPayload(
          (b) => b..inlineDocument = inlineDocument);
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class PutAndGetInlineDocumentsInputOutputPayload
    implements
        Built<PutAndGetInlineDocumentsInputOutputPayload,
            PutAndGetInlineDocumentsInputOutputPayloadBuilder> {
  factory PutAndGetInlineDocumentsInputOutputPayload(
      [void Function(PutAndGetInlineDocumentsInputOutputPayloadBuilder)
          updates]) = _$PutAndGetInlineDocumentsInputOutputPayload;

  const PutAndGetInlineDocumentsInputOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutAndGetInlineDocumentsInputOutputPayloadBuilder b) {}
  Object? get inlineDocument;
}

class _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<PutAndGetInlineDocumentsInputOutput> {
  const _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer()
      : super('PutAndGetInlineDocumentsInputOutput');

  @override
  Iterable<Type> get types => const [
        PutAndGetInlineDocumentsInputOutput,
        _$PutAndGetInlineDocumentsInputOutput,
        PutAndGetInlineDocumentsInputOutputPayload,
        _$PutAndGetInlineDocumentsInputOutputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  PutAndGetInlineDocumentsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PutAndGetInlineDocumentsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'inlineDocument':
          result.inlineDocument = (serializers.deserialize(value,
              specifiedType: const FullType(Object)) as Object?);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as PutAndGetInlineDocumentsInputOutput);
    final result = <Object?>[];
    if (payload.inlineDocument != null) {
      result
        ..add('inlineDocument')
        ..add(serializers.serialize(payload.inlineDocument,
            specifiedType: const FullType(Object)));
    }
    return result;
  }
}

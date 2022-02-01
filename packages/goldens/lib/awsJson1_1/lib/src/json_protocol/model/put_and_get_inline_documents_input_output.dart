// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.model.put_and_get_inline_documents_input_output;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_and_get_inline_documents_input_output.g.dart';

abstract class PutAndGetInlineDocumentsInputOutput
    with
        _i1.HttpInput<PutAndGetInlineDocumentsInputOutput>,
        _i2.AWSEquatable<PutAndGetInlineDocumentsInputOutput>
    implements
        Built<PutAndGetInlineDocumentsInputOutput,
            PutAndGetInlineDocumentsInputOutputBuilder> {
  factory PutAndGetInlineDocumentsInputOutput(
          [void Function(PutAndGetInlineDocumentsInputOutputBuilder) updates]) =
      _$PutAndGetInlineDocumentsInputOutput;

  const PutAndGetInlineDocumentsInputOutput._();

  factory PutAndGetInlineDocumentsInputOutput.fromResponse(
          PutAndGetInlineDocumentsInputOutput payload,
          _i2.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutAndGetInlineDocumentsInputOutputBuilder b) {}
  _i3.JsonObject? get inlineDocument;
  @override
  PutAndGetInlineDocumentsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [inlineDocument];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutAndGetInlineDocumentsInputOutput');
    helper.add('inlineDocument', inlineDocument);
    return helper.toString();
  }
}

class _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<PutAndGetInlineDocumentsInputOutput> {
  const _PutAndGetInlineDocumentsInputOutputAwsJson11Serializer()
      : super('PutAndGetInlineDocumentsInputOutput');

  @override
  Iterable<Type> get types => const [
        PutAndGetInlineDocumentsInputOutput,
        _$PutAndGetInlineDocumentsInputOutput
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
          if (value != null) {
            result.inlineDocument = (serializers.deserialize(value,
                    specifiedType: const FullType(_i3.JsonObject))
                as _i3.JsonObject);
          }
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
        ..add(serializers.serialize(payload.inlineDocument!,
            specifiedType: const FullType(_i3.JsonObject)));
    }
    return result;
  }
}
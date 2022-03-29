// Generated code. DO NOT MODIFY.

library aws_json1_1.machine_learning.model.predict_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1/src/machine_learning/model/prediction.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'predict_output.g.dart';

abstract class PredictOutput
    with _i1.AWSEquatable<PredictOutput>
    implements Built<PredictOutput, PredictOutputBuilder> {
  factory PredictOutput([void Function(PredictOutputBuilder) updates]) =
      _$PredictOutput;

  const PredictOutput._();

  factory PredictOutput.fromResponse(
          PredictOutput payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _PredictOutputAwsJson11Serializer()
  ];

  _i3.Prediction? get prediction;
  @override
  List<Object?> get props => [prediction];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PredictOutput');
    helper.add('prediction', prediction);
    return helper.toString();
  }
}

class _PredictOutputAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PredictOutput> {
  const _PredictOutputAwsJson11Serializer() : super('PredictOutput');

  @override
  Iterable<Type> get types => const [PredictOutput, _$PredictOutput];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  PredictOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PredictOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Prediction':
          if (value != null) {
            result.prediction.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.Prediction))
                as _i3.Prediction));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as PredictOutput);
    final result = <Object?>[];
    if (payload.prediction != null) {
      result
        ..add('Prediction')
        ..add(serializers.serialize(payload.prediction!,
            specifiedType: const FullType(_i3.Prediction)));
    }
    return result;
  }
}

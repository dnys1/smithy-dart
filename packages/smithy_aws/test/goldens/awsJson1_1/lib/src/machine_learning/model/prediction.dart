// Generated code. DO NOT MODIFY.

library aws_json1_1.machine_learning.model.prediction;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1/src/machine_learning/model/details_attributes.dart'
    as _i4;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'prediction.g.dart';

abstract class Prediction
    with _i1.AWSEquatable<Prediction>
    implements Built<Prediction, PredictionBuilder> {
  factory Prediction([void Function(PredictionBuilder) updates]) = _$Prediction;

  const Prediction._();

  static const List<_i2.SmithySerializer> serializers = [
    _PredictionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PredictionBuilder b) {}
  _i3.BuiltMap<_i4.DetailsAttributes, String>? get details;
  String? get predictedLabel;
  _i3.BuiltMap<String, double>? get predictedScores;
  double? get predictedValue;
  @override
  List<Object?> get props =>
      [details, predictedLabel, predictedScores, predictedValue];
}

class _PredictionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<Prediction> {
  const _PredictionAwsJson11Serializer() : super('Prediction');

  @override
  Iterable<Type> get types => const [Prediction, _$Prediction];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  Prediction deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PredictionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'details':
          if (value != null) {
            result.details.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.BuiltMap, [
                  FullType(_i4.DetailsAttributes),
                  FullType(String)
                ])) as _i3.BuiltMap<_i4.DetailsAttributes, String>));
          }
          break;
        case 'predictedLabel':
          if (value != null) {
            result.predictedLabel = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'predictedScores':
          if (value != null) {
            result.predictedScores.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i3.BuiltMap, [FullType(String), FullType(double)]))
                as _i3.BuiltMap<String, double>));
          }
          break;
        case 'predictedValue':
          if (value != null) {
            result.predictedValue = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as Prediction);
    final result = <Object?>[];
    if (payload.details != null) {
      result
        ..add('details')
        ..add(serializers.serialize(payload.details,
            specifiedType: const FullType.nullable(_i3.BuiltMap,
                [FullType(_i4.DetailsAttributes), FullType(String)])));
    }
    if (payload.predictedLabel != null) {
      result
        ..add('predictedLabel')
        ..add(serializers.serialize(payload.predictedLabel,
            specifiedType: const FullType.nullable(String)));
    }
    if (payload.predictedScores != null) {
      result
        ..add('predictedScores')
        ..add(serializers.serialize(payload.predictedScores,
            specifiedType: const FullType.nullable(
                _i3.BuiltMap, [FullType(String), FullType(double)])));
    }
    if (payload.predictedValue != null) {
      result
        ..add('predictedValue')
        ..add(serializers.serialize(payload.predictedValue,
            specifiedType: const FullType.nullable(double)));
    }
    return result;
  }
}
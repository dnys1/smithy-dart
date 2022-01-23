// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_request_body_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_request_body_input.g.dart';

abstract class MalformedRequestBodyInput
    with
        _i1.HttpInput<MalformedRequestBodyInput>,
        _i2.AWSEquatable<MalformedRequestBodyInput>
    implements
        Built<MalformedRequestBodyInput, MalformedRequestBodyInputBuilder> {
  factory MalformedRequestBodyInput(
          [void Function(MalformedRequestBodyInputBuilder) updates]) =
      _$MalformedRequestBodyInput;

  const MalformedRequestBodyInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedRequestBodyInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedRequestBodyInputBuilder b) {}
  double? get float;
  int? get int$;
  @override
  MalformedRequestBodyInput getPayload() => this;
  @override
  List<Object?> get props => [float, int$];
}

class _MalformedRequestBodyInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedRequestBodyInput> {
  const _MalformedRequestBodyInputRestJson1Serializer()
      : super('MalformedRequestBodyInput');

  @override
  Iterable<Type> get types =>
      const [MalformedRequestBodyInput, _$MalformedRequestBodyInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedRequestBodyInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedRequestBodyInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'float':
          if (value != null) {
            result.float = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'int':
          if (value != null) {
            result.int$ = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedRequestBodyInput);
    final result = <Object?>[];
    if (payload.float != null) {
      result
        ..add('float')
        ..add(serializers.serialize(payload.float,
            specifiedType: const FullType.nullable(double)));
    }
    if (payload.int$ != null) {
      result
        ..add('int')
        ..add(serializers.serialize(payload.int$,
            specifiedType: const FullType.nullable(int)));
    }
    return result;
  }
}
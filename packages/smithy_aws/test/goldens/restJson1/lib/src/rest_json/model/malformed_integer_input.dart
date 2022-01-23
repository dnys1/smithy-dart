// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_integer_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_integer_input.g.dart';

abstract class MalformedIntegerInput
    with
        _i1.HttpInput<MalformedIntegerInputPayload>,
        _i2.AWSEquatable<MalformedIntegerInput>
    implements
        Built<MalformedIntegerInput, MalformedIntegerInputBuilder>,
        _i1.HasPayload<MalformedIntegerInputPayload> {
  factory MalformedIntegerInput(
          [void Function(MalformedIntegerInputBuilder) updates]) =
      _$MalformedIntegerInput;

  const MalformedIntegerInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedIntegerInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedIntegerInputBuilder b) {}
  int? get integerInBody;
  int? get integerInHeader;
  int get integerInPath;
  int? get integerInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'integerInPath':
        return integerInPath.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedIntegerInputPayload getPayload() =>
      MalformedIntegerInputPayload((b) => b..integerInBody = integerInBody);
  @override
  List<Object?> get props =>
      [integerInBody, integerInHeader, integerInPath, integerInQuery];
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedIntegerInputPayload
    with
        _i2.AWSEquatable<MalformedIntegerInputPayload>
    implements
        Built<MalformedIntegerInputPayload,
            MalformedIntegerInputPayloadBuilder> {
  factory MalformedIntegerInputPayload(
          [void Function(MalformedIntegerInputPayloadBuilder) updates]) =
      _$MalformedIntegerInputPayload;

  const MalformedIntegerInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedIntegerInputPayloadBuilder b) {}
  int? get integerInBody;
  @override
  List<Object?> get props => [integerInBody];
}

class _MalformedIntegerInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedIntegerInputPayload> {
  const _MalformedIntegerInputRestJson1Serializer()
      : super('MalformedIntegerInput');

  @override
  Iterable<Type> get types => const [
        MalformedIntegerInput,
        _$MalformedIntegerInput,
        MalformedIntegerInputPayload,
        _$MalformedIntegerInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedIntegerInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedIntegerInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'integerInBody':
          if (value != null) {
            result.integerInBody = (serializers.deserialize(value,
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
    final payload = object is MalformedIntegerInput
        ? object.getPayload()
        : (object as MalformedIntegerInputPayload);
    final result = <Object?>[];
    if (payload.integerInBody != null) {
      result
        ..add('integerInBody')
        ..add(serializers.serialize(payload.integerInBody,
            specifiedType: const FullType.nullable(int)));
    }
    return result;
  }
}

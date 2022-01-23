// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.malformed_boolean_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_boolean_input.g.dart';

abstract class MalformedBooleanInput
    with
        _i1.HttpInput<MalformedBooleanInputPayload>,
        _i2.AWSEquatable<MalformedBooleanInput>
    implements
        Built<MalformedBooleanInput, MalformedBooleanInputBuilder>,
        _i1.HasPayload<MalformedBooleanInputPayload> {
  factory MalformedBooleanInput(
          [void Function(MalformedBooleanInputBuilder) updates]) =
      _$MalformedBooleanInput;

  const MalformedBooleanInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedBooleanInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedBooleanInputBuilder b) {}
  bool? get booleanInBody;
  bool? get booleanInHeader;
  bool get booleanInPath;
  bool? get booleanInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'booleanInPath':
        return booleanInPath.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedBooleanInputPayload getPayload() =>
      MalformedBooleanInputPayload((b) => b..booleanInBody = booleanInBody);
  @override
  List<Object?> get props =>
      [booleanInBody, booleanInHeader, booleanInPath, booleanInQuery];
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedBooleanInputPayload
    with
        _i2.AWSEquatable<MalformedBooleanInputPayload>
    implements
        Built<MalformedBooleanInputPayload,
            MalformedBooleanInputPayloadBuilder> {
  factory MalformedBooleanInputPayload(
          [void Function(MalformedBooleanInputPayloadBuilder) updates]) =
      _$MalformedBooleanInputPayload;

  const MalformedBooleanInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedBooleanInputPayloadBuilder b) {}
  bool? get booleanInBody;
  @override
  List<Object?> get props => [booleanInBody];
}

class _MalformedBooleanInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedBooleanInputPayload> {
  const _MalformedBooleanInputRestJson1Serializer()
      : super('MalformedBooleanInput');

  @override
  Iterable<Type> get types => const [
        MalformedBooleanInput,
        _$MalformedBooleanInput,
        MalformedBooleanInputPayload,
        _$MalformedBooleanInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedBooleanInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedBooleanInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'booleanInBody':
          if (value != null) {
            result.booleanInBody = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedBooleanInput
        ? object.getPayload()
        : (object as MalformedBooleanInputPayload);
    final result = <Object?>[];
    if (payload.booleanInBody != null) {
      result
        ..add('booleanInBody')
        ..add(serializers.serialize(payload.booleanInBody,
            specifiedType: const FullType.nullable(bool)));
    }
    return result;
  }
}

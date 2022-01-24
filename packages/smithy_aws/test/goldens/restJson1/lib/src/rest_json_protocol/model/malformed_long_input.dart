// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_long_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_long_input.g.dart';

abstract class MalformedLongInput
    with
        _i1.HttpInput<MalformedLongInputPayload>,
        _i2.AWSEquatable<MalformedLongInput>
    implements
        Built<MalformedLongInput, MalformedLongInputBuilder>,
        _i1.HasPayload<MalformedLongInputPayload> {
  factory MalformedLongInput(
          [void Function(MalformedLongInputBuilder) updates]) =
      _$MalformedLongInput;

  const MalformedLongInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedLongInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedLongInputBuilder b) {}
  _i3.Int64? get longInBody;
  _i3.Int64? get longInHeader;
  _i3.Int64 get longInPath;
  _i3.Int64? get longInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'longInPath':
        return longInPath.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedLongInputPayload getPayload() =>
      MalformedLongInputPayload((b) => b..longInBody = longInBody);
  @override
  List<Object?> get props =>
      [longInBody, longInHeader, longInPath, longInQuery];
}

@_i4.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedLongInputPayload
    with _i2.AWSEquatable<MalformedLongInputPayload>
    implements
        Built<MalformedLongInputPayload, MalformedLongInputPayloadBuilder> {
  factory MalformedLongInputPayload(
          [void Function(MalformedLongInputPayloadBuilder) updates]) =
      _$MalformedLongInputPayload;

  const MalformedLongInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedLongInputPayloadBuilder b) {}
  _i3.Int64? get longInBody;
  @override
  List<Object?> get props => [longInBody];
}

class _MalformedLongInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedLongInputPayload> {
  const _MalformedLongInputRestJson1Serializer() : super('MalformedLongInput');

  @override
  Iterable<Type> get types => const [
        MalformedLongInput,
        _$MalformedLongInput,
        MalformedLongInputPayload,
        _$MalformedLongInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedLongInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedLongInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'longInBody':
          if (value != null) {
            result.longInBody = (serializers.deserialize(value,
                specifiedType: const FullType(_i3.Int64)) as _i3.Int64);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedLongInput
        ? object.getPayload()
        : (object as MalformedLongInputPayload);
    final result = <Object?>[];
    if (payload.longInBody != null) {
      result
        ..add('longInBody')
        ..add(serializers.serialize(payload.longInBody,
            specifiedType: const FullType.nullable(_i3.Int64)));
    }
    return result;
  }
}

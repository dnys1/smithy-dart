// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_short_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_short_input.g.dart';

abstract class MalformedShortInput
    with
        _i1.HttpInput<MalformedShortInputPayload>,
        _i2.AWSEquatable<MalformedShortInput>
    implements
        Built<MalformedShortInput, MalformedShortInputBuilder>,
        _i1.HasPayload<MalformedShortInputPayload> {
  factory MalformedShortInput(
          [void Function(MalformedShortInputBuilder) updates]) =
      _$MalformedShortInput;

  const MalformedShortInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedShortInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedShortInputBuilder b) {}
  int? get shortInBody;
  int? get shortInHeader;
  int get shortInPath;
  int? get shortInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'shortInPath':
        return shortInPath.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedShortInputPayload getPayload() =>
      MalformedShortInputPayload((b) => b..shortInBody = shortInBody);
  @override
  List<Object?> get props =>
      [shortInBody, shortInHeader, shortInPath, shortInQuery];
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class MalformedShortInputPayload
    with _i2.AWSEquatable<MalformedShortInputPayload>
    implements
        Built<MalformedShortInputPayload, MalformedShortInputPayloadBuilder> {
  factory MalformedShortInputPayload(
          [void Function(MalformedShortInputPayloadBuilder) updates]) =
      _$MalformedShortInputPayload;

  const MalformedShortInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedShortInputPayloadBuilder b) {}
  int? get shortInBody;
  @override
  List<Object?> get props => [shortInBody];
}

class _MalformedShortInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedShortInputPayload> {
  const _MalformedShortInputRestJson1Serializer()
      : super('MalformedShortInput');

  @override
  Iterable<Type> get types => const [
        MalformedShortInput,
        _$MalformedShortInput,
        MalformedShortInputPayload,
        _$MalformedShortInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedShortInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedShortInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'shortInBody':
          if (value != null) {
            result.shortInBody = (serializers.deserialize(value,
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
    final payload = object is MalformedShortInput
        ? object.getPayload()
        : (object as MalformedShortInputPayload);
    final result = <Object?>[];
    if (payload.shortInBody != null) {
      result
        ..add('shortInBody')
        ..add(serializers.serialize(payload.shortInBody,
            specifiedType: const FullType.nullable(int)));
    }
    return result;
  }
}

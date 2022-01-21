// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.null_and_empty_headers_io;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'null_and_empty_headers_io.g.dart';

abstract class NullAndEmptyHeadersIo
    with _i1.HttpInput<NullAndEmptyHeadersIoPayload>
    implements
        Built<NullAndEmptyHeadersIo, NullAndEmptyHeadersIoBuilder>,
        _i1.HasPayload<NullAndEmptyHeadersIoPayload> {
  factory NullAndEmptyHeadersIo(
          [void Function(NullAndEmptyHeadersIoBuilder) updates]) =
      _$NullAndEmptyHeadersIo;

  const NullAndEmptyHeadersIo._();

  static const List<_i1.SmithySerializer> serializers = [
    _NullAndEmptyHeadersIoRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NullAndEmptyHeadersIoBuilder b) {}
  String? get a;
  String? get b;
  _i2.BuiltList<String>? get c;
  @override
  NullAndEmptyHeadersIoPayload getPayload() => NullAndEmptyHeadersIoPayload();
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class NullAndEmptyHeadersIoPayload
    implements
        Built<NullAndEmptyHeadersIoPayload,
            NullAndEmptyHeadersIoPayloadBuilder> {
  factory NullAndEmptyHeadersIoPayload(
          [void Function(NullAndEmptyHeadersIoPayloadBuilder) updates]) =
      _$NullAndEmptyHeadersIoPayload;

  const NullAndEmptyHeadersIoPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NullAndEmptyHeadersIoPayloadBuilder b) {}
}

class _NullAndEmptyHeadersIoRestJson1Serializer
    extends _i1.StructuredSmithySerializer<NullAndEmptyHeadersIoPayload> {
  const _NullAndEmptyHeadersIoRestJson1Serializer()
      : super('NullAndEmptyHeadersIO');

  @override
  Iterable<Type> get types => const [
        NullAndEmptyHeadersIo,
        _$NullAndEmptyHeadersIo,
        NullAndEmptyHeadersIoPayload,
        _$NullAndEmptyHeadersIoPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  NullAndEmptyHeadersIoPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return NullAndEmptyHeadersIoPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

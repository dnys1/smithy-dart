// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.query_idempotency_token_auto_fill_input;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;

part 'query_idempotency_token_auto_fill_input.g.dart';

abstract class QueryIdempotencyTokenAutoFillInput
    with
        _i1.HttpInput<QueryIdempotencyTokenAutoFillInputPayload>
    implements
        Built<QueryIdempotencyTokenAutoFillInput,
            QueryIdempotencyTokenAutoFillInputBuilder>,
        _i1.HasPayload<QueryIdempotencyTokenAutoFillInputPayload> {
  factory QueryIdempotencyTokenAutoFillInput(
          [void Function(QueryIdempotencyTokenAutoFillInputBuilder) updates]) =
      _$QueryIdempotencyTokenAutoFillInput;

  const QueryIdempotencyTokenAutoFillInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _QueryIdempotencyTokenAutoFillInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryIdempotencyTokenAutoFillInputBuilder b) {}
  String? get token;
  @override
  QueryIdempotencyTokenAutoFillInputPayload getPayload() =>
      QueryIdempotencyTokenAutoFillInputPayload();
}

@_i2.internal
@BuiltValue(nestedBuilders: false)
abstract class QueryIdempotencyTokenAutoFillInputPayload
    implements
        Built<QueryIdempotencyTokenAutoFillInputPayload,
            QueryIdempotencyTokenAutoFillInputPayloadBuilder> {
  factory QueryIdempotencyTokenAutoFillInputPayload(
      [void Function(QueryIdempotencyTokenAutoFillInputPayloadBuilder)
          updates]) = _$QueryIdempotencyTokenAutoFillInputPayload;

  const QueryIdempotencyTokenAutoFillInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryIdempotencyTokenAutoFillInputPayloadBuilder b) {}
}

class _QueryIdempotencyTokenAutoFillInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<QueryIdempotencyTokenAutoFillInputPayload> {
  const _QueryIdempotencyTokenAutoFillInputRestJson1Serializer()
      : super('QueryIdempotencyTokenAutoFillInput');

  @override
  Iterable<Type> get types => const [
        QueryIdempotencyTokenAutoFillInput,
        _$QueryIdempotencyTokenAutoFillInput,
        QueryIdempotencyTokenAutoFillInputPayload,
        _$QueryIdempotencyTokenAutoFillInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  QueryIdempotencyTokenAutoFillInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return QueryIdempotencyTokenAutoFillInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

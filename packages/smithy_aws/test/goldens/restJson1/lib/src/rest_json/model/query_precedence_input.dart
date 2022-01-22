// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.query_precedence_input;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'query_precedence_input.g.dart';

abstract class QueryPrecedenceInput
    with _i1.HttpInput<QueryPrecedenceInputPayload>
    implements Built<QueryPrecedenceInput, QueryPrecedenceInputBuilder> {
  factory QueryPrecedenceInput(
          [void Function(QueryPrecedenceInputBuilder) updates]) =
      _$QueryPrecedenceInput;

  const QueryPrecedenceInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _QueryPrecedenceInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryPrecedenceInputBuilder b) {}
  _i2.BuiltMap<String, String>? get baz;
  String? get foo;
  QueryPrecedenceInputPayload getPayload() => QueryPrecedenceInputPayload();
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class QueryPrecedenceInputPayload
    implements
        Built<QueryPrecedenceInputPayload, QueryPrecedenceInputPayloadBuilder> {
  factory QueryPrecedenceInputPayload(
          [void Function(QueryPrecedenceInputPayloadBuilder) updates]) =
      _$QueryPrecedenceInputPayload;

  const QueryPrecedenceInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryPrecedenceInputPayloadBuilder b) {}
}

class _QueryPrecedenceInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<QueryPrecedenceInputPayload> {
  const _QueryPrecedenceInputRestJson1Serializer()
      : super('QueryPrecedenceInput');

  @override
  Iterable<Type> get types => const [
        QueryPrecedenceInput,
        _$QueryPrecedenceInput,
        QueryPrecedenceInputPayload,
        _$QueryPrecedenceInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  QueryPrecedenceInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return QueryPrecedenceInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

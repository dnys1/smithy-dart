// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.query_params_as_string_list_map_input;

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'query_params_as_string_list_map_input.g.dart';

abstract class QueryParamsAsStringListMapInput
    with
        _i1.HttpInput<QueryParamsAsStringListMapInputPayload>
    implements
        Built<QueryParamsAsStringListMapInput,
            QueryParamsAsStringListMapInputBuilder>,
        _i1.EmptyPayload {
  factory QueryParamsAsStringListMapInput(
          [void Function(QueryParamsAsStringListMapInputBuilder) updates]) =
      _$QueryParamsAsStringListMapInput;

  const QueryParamsAsStringListMapInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _QueryParamsAsStringListMapInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryParamsAsStringListMapInputBuilder b) {}
  _i2.BuiltListMultimap<String, String>? get foo;
  String? get qux;
  QueryParamsAsStringListMapInputPayload getPayload() =>
      QueryParamsAsStringListMapInputPayload();
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class QueryParamsAsStringListMapInputPayload
    implements
        Built<QueryParamsAsStringListMapInputPayload,
            QueryParamsAsStringListMapInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory QueryParamsAsStringListMapInputPayload(
      [void Function(QueryParamsAsStringListMapInputPayloadBuilder)
          updates]) = _$QueryParamsAsStringListMapInputPayload;

  const QueryParamsAsStringListMapInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryParamsAsStringListMapInputPayloadBuilder b) {}
}

class _QueryParamsAsStringListMapInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<QueryParamsAsStringListMapInputPayload> {
  const _QueryParamsAsStringListMapInputRestJson1Serializer()
      : super('QueryParamsAsStringListMapInput');

  @override
  Iterable<Type> get types => const [
        QueryParamsAsStringListMapInput,
        _$QueryParamsAsStringListMapInput,
        QueryParamsAsStringListMapInputPayload,
        _$QueryParamsAsStringListMapInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  QueryParamsAsStringListMapInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return QueryParamsAsStringListMapInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.query_precedence_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'query_precedence_input.g.dart';

abstract class QueryPrecedenceInput
    with
        _i1.HttpInput<QueryPrecedenceInputPayload>,
        _i2.AWSEquatable<QueryPrecedenceInput>
    implements
        Built<QueryPrecedenceInput, QueryPrecedenceInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<QueryPrecedenceInputPayload> {
  factory QueryPrecedenceInput(
      {_i3.BuiltMap<String, String>? baz, String? foo}) {
    return _$QueryPrecedenceInput._(baz: baz, foo: foo);
  }

  const QueryPrecedenceInput._();

  factory QueryPrecedenceInput.fromRequest(
      QueryPrecedenceInputPayload payload, _i2.AWSBaseHttpRequest request,
      {Map<String, String> labels = const {}}) {
    final builder = QueryPrecedenceInputBuilder();
    if (request.queryParameters['bar'] != null) {
      builder.foo = request.queryParameters['bar']!;
    }
    return builder.build();
  }

  static const List<_i1.SmithySerializer> serializers = [
    _QueryPrecedenceInputRestJson1Serializer()
  ];

  _i3.BuiltMap<String, String>? get baz;
  String? get foo;
  @override
  QueryPrecedenceInputPayload getPayload() => QueryPrecedenceInputPayload();
  @override
  List<Object?> get props => [baz, foo];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryPrecedenceInput');
    helper.add('baz', baz);
    helper.add('foo', foo);
    return helper.toString();
  }
}

@_i4.internal
abstract class QueryPrecedenceInputPayload
    with _i2.AWSEquatable<QueryPrecedenceInputPayload>
    implements
        Built<QueryPrecedenceInputPayload, QueryPrecedenceInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory QueryPrecedenceInputPayload(
          [void Function(QueryPrecedenceInputPayloadBuilder) updates]) =
      _$QueryPrecedenceInputPayload;

  const QueryPrecedenceInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryPrecedenceInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryPrecedenceInputPayload');
    return helper.toString();
  }
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

// Generated code. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.query_idempotency_token_auto_fill_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:uuid/uuid.dart' as _i3;

part 'query_idempotency_token_auto_fill_input.g.dart';

abstract class QueryIdempotencyTokenAutoFillInput
    with
        _i1.HttpInput<QueryIdempotencyTokenAutoFillInputPayload>,
        _i2.AWSEquatable<QueryIdempotencyTokenAutoFillInput>
    implements
        Built<QueryIdempotencyTokenAutoFillInput,
            QueryIdempotencyTokenAutoFillInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<QueryIdempotencyTokenAutoFillInputPayload> {
  factory QueryIdempotencyTokenAutoFillInput({String? token}) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      token ??= '00000000-0000-4000-8000-000000000000';
    } else {
      token ??= const _i3.Uuid().v4();
    }
    return _$QueryIdempotencyTokenAutoFillInput._(token: token);
  }

  const QueryIdempotencyTokenAutoFillInput._();

  factory QueryIdempotencyTokenAutoFillInput.fromRequest(
      QueryIdempotencyTokenAutoFillInputPayload payload,
      _i2.AWSBaseHttpRequest request,
      {Map<String, String> labels = const {}}) {
    final builder = QueryIdempotencyTokenAutoFillInputBuilder();
    if (request.queryParameters['token'] != null) {
      builder.token = request.queryParameters['token']!;
    }
    return builder.build();
  }

  static const List<_i1.SmithySerializer> serializers = [
    _QueryIdempotencyTokenAutoFillInputRestXmlSerializer()
  ];

  String? get token;
  @override
  QueryIdempotencyTokenAutoFillInputPayload getPayload() =>
      QueryIdempotencyTokenAutoFillInputPayload();
  @override
  List<Object?> get props => [token];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('QueryIdempotencyTokenAutoFillInput');
    helper.add('token', token);
    return helper.toString();
  }
}

@_i4.internal
abstract class QueryIdempotencyTokenAutoFillInputPayload
    with
        _i2.AWSEquatable<QueryIdempotencyTokenAutoFillInputPayload>
    implements
        Built<QueryIdempotencyTokenAutoFillInputPayload,
            QueryIdempotencyTokenAutoFillInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory QueryIdempotencyTokenAutoFillInputPayload(
      [void Function(QueryIdempotencyTokenAutoFillInputPayloadBuilder)
          updates]) = _$QueryIdempotencyTokenAutoFillInputPayload;

  const QueryIdempotencyTokenAutoFillInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryIdempotencyTokenAutoFillInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'QueryIdempotencyTokenAutoFillInputPayload');
    return helper.toString();
  }
}

class _QueryIdempotencyTokenAutoFillInputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<QueryIdempotencyTokenAutoFillInputPayload> {
  const _QueryIdempotencyTokenAutoFillInputRestXmlSerializer()
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
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  QueryIdempotencyTokenAutoFillInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return QueryIdempotencyTokenAutoFillInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      _i1.XmlElementName('QueryIdempotencyTokenAutoFillInput')
    ];
    return result;
  }
}

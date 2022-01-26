// Generated code. DO NOT MODIFY.

library rest_json1.api_gateway.model.get_rest_apis_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_rest_apis_request.g.dart';

abstract class GetRestApisRequest
    with
        _i1.HttpInput<GetRestApisRequestPayload>,
        _i2.AWSEquatable<GetRestApisRequest>
    implements
        Built<GetRestApisRequest, GetRestApisRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetRestApisRequestPayload> {
  factory GetRestApisRequest(
          [void Function(GetRestApisRequestBuilder) updates]) =
      _$GetRestApisRequest;

  const GetRestApisRequest._();

  static const List<_i1.SmithySerializer> serializers = [
    _GetRestApisRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRestApisRequestBuilder b) {}
  int? get limit;
  String? get position;
  @override
  GetRestApisRequestPayload getPayload() => GetRestApisRequestPayload();
  @override
  List<Object?> get props => [limit, position];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'GetRestApisRequest');
    helper.add(r'limit', limit);
    helper.add(r'position', position);
    return helper.toString();
  }
}

@_i3.internal
@BuiltValue(nestedBuilders: false)
abstract class GetRestApisRequestPayload
    with _i2.AWSEquatable<GetRestApisRequestPayload>
    implements
        Built<GetRestApisRequestPayload, GetRestApisRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetRestApisRequestPayload(
          [void Function(GetRestApisRequestPayloadBuilder) updates]) =
      _$GetRestApisRequestPayload;

  const GetRestApisRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRestApisRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'GetRestApisRequest');
    return helper.toString();
  }
}

class _GetRestApisRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetRestApisRequestPayload> {
  const _GetRestApisRequestRestJson1Serializer() : super('GetRestApisRequest');

  @override
  Iterable<Type> get types => const [
        GetRestApisRequest,
        _$GetRestApisRequest,
        GetRestApisRequestPayload,
        _$GetRestApisRequestPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  GetRestApisRequestPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GetRestApisRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

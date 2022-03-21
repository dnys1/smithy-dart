// Generated code. DO NOT MODIFY.

library structure_generator.test.model.get_foo_error;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_foo_error.g.dart';

abstract class GetFooError
    with _i1.AWSEquatable<GetFooError>
    implements Built<GetFooError, GetFooErrorBuilder>, _i2.SmithyHttpException {
  factory GetFooError([void Function(GetFooErrorBuilder) updates]) =
      _$GetFooError;

  const GetFooError._();

  factory GetFooError.fromResponse(
          GetFooError payload, _i1.AWSBaseHttpResponse response) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    _GetFooErrorSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFooErrorBuilder b) {}

  /// The error message returned from the server
  @override
  String get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'com.test.documentation', shape: 'GetFooError');
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetFooError');
    helper.add('message', message);
    return helper.toString();
  }
}

class _GetFooErrorSerializer
    extends _i2.StructuredSmithySerializer<GetFooError> {
  const _GetFooErrorSerializer() : super('GetFooError');

  @override
  Iterable<Type> get types => const [GetFooError, _$GetFooError];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'smithy.dart', shape: 'genericProtocol')];
  @override
  GetFooError deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GetFooErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GetFooError);
    final result = <Object?>[
      'message',
      serializers.serialize(payload.message,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}

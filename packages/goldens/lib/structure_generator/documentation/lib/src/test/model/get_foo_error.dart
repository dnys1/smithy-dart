// Generated code. DO NOT MODIFY.

library documentation.test.model.get_foo_error;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_foo_error.g.dart';

abstract class GetFooError
    with _i1.AWSEquatable<GetFooError>
    implements Built<GetFooError, GetFooErrorBuilder>, _i2.SmithyException {
  factory GetFooError([void Function(GetFooErrorBuilder) updates]) =
      _$GetFooError;

  const GetFooError._();

  factory GetFooError.fromResponse(
          GetFooError payload, _i1.AWSStreamedHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _GetFooErrorSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFooErrorBuilder b) {}

  /// The error message returned from the server
  @override
  String get message;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'GetFooError');
    helper.add(r'message', message);
    return helper.toString();
  }
}

class _GetFooErrorSerializer
    extends _i2.StructuredSmithySerializer<GetFooError> {
  const _GetFooErrorSerializer() : super('GetFooError');

  @override
  Iterable<Type> get types => const [GetFooError, _$GetFooError];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [];
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

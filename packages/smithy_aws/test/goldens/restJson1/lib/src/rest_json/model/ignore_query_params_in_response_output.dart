// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.model.ignore_query_params_in_response_output;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'ignore_query_params_in_response_output.g.dart';

abstract class IgnoreQueryParamsInResponseOutput
    implements
        Built<IgnoreQueryParamsInResponseOutput,
            IgnoreQueryParamsInResponseOutputBuilder> {
  factory IgnoreQueryParamsInResponseOutput(
          [void Function(IgnoreQueryParamsInResponseOutputBuilder) updates]) =
      _$IgnoreQueryParamsInResponseOutput;

  const IgnoreQueryParamsInResponseOutput._();

  static const List<_i1.SmithySerializer> serializers = [
    _IgnoreQueryParamsInResponseOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IgnoreQueryParamsInResponseOutputBuilder b) {}
  String? get baz;
}

class _IgnoreQueryParamsInResponseOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<IgnoreQueryParamsInResponseOutput> {
  const _IgnoreQueryParamsInResponseOutputRestJson1Serializer()
      : super('IgnoreQueryParamsInResponseOutput');

  @override
  Iterable<Type> get types => const [
        IgnoreQueryParamsInResponseOutput,
        _$IgnoreQueryParamsInResponseOutput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  IgnoreQueryParamsInResponseOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = IgnoreQueryParamsInResponseOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'baz':
          if (value != null) {
            result.baz = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as IgnoreQueryParamsInResponseOutput);
    final result = <Object?>[];
    if (payload.baz != null) {
      result
        ..add('baz')
        ..add(serializers.serialize(payload.baz,
            specifiedType: const FullType.nullable(String)));
    }
    return result;
  }
}

// Generated code. DO NOT MODIFY.

library aws_json1_0.json_rpc_10.model.json_unions_output;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_0/src/json_rpc_10/model/my_union.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'json_unions_output.g.dart';

abstract class JsonUnionsOutput
    with _i1.AWSEquatable<JsonUnionsOutput>
    implements Built<JsonUnionsOutput, JsonUnionsOutputBuilder> {
  factory JsonUnionsOutput([void Function(JsonUnionsOutputBuilder) updates]) =
      _$JsonUnionsOutput;

  const JsonUnionsOutput._();

  factory JsonUnionsOutput.fromResponse(
          JsonUnionsOutput payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _JsonUnionsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonUnionsOutputBuilder b) {}

  /// A union with a representative set of types for members.
  _i3.MyUnion? get contents;
  @override
  List<Object?> get props => [contents];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonUnionsOutput');
    helper.add('contents', contents);
    return helper.toString();
  }
}

class _JsonUnionsOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<JsonUnionsOutput> {
  const _JsonUnionsOutputAwsJson10Serializer() : super('JsonUnionsOutput');

  @override
  Iterable<Type> get types => const [JsonUnionsOutput, _$JsonUnionsOutput];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0')];
  @override
  JsonUnionsOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = JsonUnionsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'contents':
          if (value != null) {
            result.contents = (serializers.deserialize(value,
                specifiedType: const FullType(_i3.MyUnion)) as _i3.MyUnion);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as JsonUnionsOutput);
    final result = <Object?>[];
    if (payload.contents != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(payload.contents!,
            specifiedType: const FullType(_i3.MyUnion)));
    }
    return result;
  }
}

// Generated code. DO NOT MODIFY.

library rest_json1.rest_json_protocol.model.malformed_float_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_float_input.g.dart';

abstract class MalformedFloatInput
    with
        _i1.HttpInput<MalformedFloatInputPayload>,
        _i2.AWSEquatable<MalformedFloatInput>
    implements
        Built<MalformedFloatInput, MalformedFloatInputBuilder>,
        _i1.HasPayload<MalformedFloatInputPayload> {
  factory MalformedFloatInput(
      {double? floatInBody,
      double? floatInHeader,
      required double floatInPath,
      double? floatInQuery}) {
    return _$MalformedFloatInput._(
        floatInBody: floatInBody,
        floatInHeader: floatInHeader,
        floatInPath: floatInPath,
        floatInQuery: floatInQuery);
  }

  const MalformedFloatInput._();

  factory MalformedFloatInput.fromRequest(
      MalformedFloatInputPayload payload, _i2.AWSBaseHttpRequest request,
      {Map<String, String> labels = const {}}) {
    final builder = MalformedFloatInputBuilder();
    builder.floatInBody = payload.floatInBody;
    if (request.headers['floatInHeader'] != null) {
      builder.floatInHeader = double.parse(request.headers['floatInHeader']!);
    }
    if (request.queryParameters['floatInQuery'] != null) {
      builder.floatInQuery =
          double.parse(request.queryParameters['floatInQuery']!);
    }
    if (labels['floatInPath'] != null) {
      builder.floatInPath = double.parse(labels['floatInPath']!);
    }
    return builder.build();
  }

  static const List<_i1.SmithySerializer> serializers = [
    _MalformedFloatInputRestJson1Serializer()
  ];

  double? get floatInBody;
  double? get floatInHeader;
  double get floatInPath;
  double? get floatInQuery;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'floatInPath':
        return floatInPath.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedFloatInputPayload getPayload() => MalformedFloatInputPayload((b) {
        b.floatInBody = floatInBody;
      });
  @override
  List<Object?> get props =>
      [floatInBody, floatInHeader, floatInPath, floatInQuery];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedFloatInput');
    helper.add('floatInBody', floatInBody);
    helper.add('floatInHeader', floatInHeader);
    helper.add('floatInPath', floatInPath);
    helper.add('floatInQuery', floatInQuery);
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedFloatInputPayload
    with _i2.AWSEquatable<MalformedFloatInputPayload>
    implements
        Built<MalformedFloatInputPayload, MalformedFloatInputPayloadBuilder> {
  factory MalformedFloatInputPayload(
          [void Function(MalformedFloatInputPayloadBuilder) updates]) =
      _$MalformedFloatInputPayload;

  const MalformedFloatInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedFloatInputPayloadBuilder b) {}
  double? get floatInBody;
  @override
  List<Object?> get props => [floatInBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedFloatInputPayload');
    helper.add('floatInBody', floatInBody);
    return helper.toString();
  }
}

class _MalformedFloatInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedFloatInputPayload> {
  const _MalformedFloatInputRestJson1Serializer()
      : super('MalformedFloatInput');

  @override
  Iterable<Type> get types => const [
        MalformedFloatInput,
        _$MalformedFloatInput,
        MalformedFloatInputPayload,
        _$MalformedFloatInputPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedFloatInputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedFloatInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'floatInBody':
          if (value != null) {
            result.floatInBody = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is MalformedFloatInput
        ? object.getPayload()
        : (object as MalformedFloatInputPayload);
    final result = <Object?>[];
    if (payload.floatInBody != null) {
      result
        ..add('floatInBody')
        ..add(serializers.serialize(payload.floatInBody!,
            specifiedType: const FullType(double)));
    }
    return result;
  }
}

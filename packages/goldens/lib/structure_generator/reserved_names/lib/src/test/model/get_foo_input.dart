// Generated code. DO NOT MODIFY.

library reserved_names.test.model.get_foo_input;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:reserved_names/src/test/model/function.dart' as _i4;
import 'package:reserved_names/src/test/model/image.dart' as _i6;
import 'package:reserved_names/src/test/model/image_builder.dart' as _i3;
import 'package:reserved_names/src/test/model/type.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;

part 'get_foo_input.g.dart';

abstract class GetFooInput
    with _i1.HttpInput<GetFooInput>, _i2.AWSEquatable<GetFooInput>
    implements Built<GetFooInput, GetFooInputBuilder> {
  factory GetFooInput([void Function(GetFooInputBuilder) updates]) =
      _$GetFooInput;

  const GetFooInput._();

  static const List<_i1.SmithySerializer> serializers = [
    _GetFooInputSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFooInputBuilder b) {}
  _i3.ImageBuilder? get build_;
  _i4.Function$? get function;
  _i5.Type$? get type;
  _i6.Image$? get update_;
  @override
  GetFooInput getPayload() => this;
  @override
  List<Object?> get props => [build_, function, type, update_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'GetFooInput');
    helper.add(r'build_', build_);
    helper.add(r'function', function);
    helper.add(r'type', type);
    helper.add(r'update_', update_);
    return helper.toString();
  }
}

class _GetFooInputSerializer
    extends _i1.StructuredSmithySerializer<GetFooInput> {
  const _GetFooInputSerializer() : super('GetFooInput');

  @override
  Iterable<Type> get types => const [GetFooInput, _$GetFooInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [];
  @override
  GetFooInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GetFooInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'build':
          if (value != null) {
            result.build_.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ImageBuilder))
                as _i3.ImageBuilder));
          }
          break;
        case 'function':
          if (value != null) {
            result.function = (serializers.deserialize(value,
                specifiedType: const FullType(_i4.Function$)) as _i4.Function$);
          }
          break;
        case 'type':
          if (value != null) {
            result.type.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i5.Type$)) as _i5.Type$));
          }
          break;
        case 'update':
          if (value != null) {
            result.update_.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.Image$)) as _i6.Image$));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GetFooInput);
    final result = <Object?>[];
    if (payload.build_ != null) {
      result
        ..add('build')
        ..add(serializers.serialize(payload.build_,
            specifiedType: const FullType.nullable(_i3.ImageBuilder)));
    }
    if (payload.function != null) {
      result
        ..add('function')
        ..add(serializers.serialize(payload.function,
            specifiedType: const FullType.nullable(_i4.Function$)));
    }
    if (payload.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(payload.type,
            specifiedType: const FullType.nullable(_i5.Type$)));
    }
    if (payload.update_ != null) {
      result
        ..add('update')
        ..add(serializers.serialize(payload.update_,
            specifiedType: const FullType.nullable(_i6.Image$)));
    }
    return result;
  }
}

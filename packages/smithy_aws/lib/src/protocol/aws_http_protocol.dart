import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

abstract class AWSHttpProtocol<
        InputPayload extends Object?,
        Input extends HttpInput<InputPayload>,
        OutputPayload extends Object?,
        Output extends HasPayload<OutputPayload>>
    extends HttpProtocol<InputPayload, Input, OutputPayload, Output> {
  AWSHttpProtocol(
    this._coreSerializers, {
    required List<SmithySerializer> serializers,
    required Map<Type, Function> builderFactories,
    required this.interceptors,
  })  : _userSerializers = serializers,
        _builderFactories = builderFactories;

  final Serializers _coreSerializers;
  final List<SmithySerializer> _userSerializers;
  final Map<Type, Function> _builderFactories;

  @override
  late final Serializers serializers = () {
    final builder = _coreSerializers.toBuilder();
    builder.addAll(_userSerializers.where((el) {
      return el.supportedProtocols.contains(protocolId);
    }));
    for (final entry in _builderFactories.entries) {
      builder.addBuilderFactory(FullType(entry.key), entry.value);
    }
    return builder.build();
  }();

  @override
  final List<HttpInterceptor> interceptors;
}

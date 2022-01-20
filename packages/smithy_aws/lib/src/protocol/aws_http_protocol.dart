import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

abstract class AWSHttpProtocol<InputPayload, Input, OutputPayload, Output>
    extends HttpProtocol<InputPayload, Input, OutputPayload, Output> {
  AWSHttpProtocol(
    this._coreSerializers,
    this._coreInterceptors, {
    required List<SmithySerializer> serializers,
    required Map<FullType, Function> builderFactories,
    required List<HttpInterceptor> interceptors,
  })  : _userSerializers = serializers,
        _builderFactories = builderFactories,
        _userInterceptors = interceptors;

  final Serializers _coreSerializers;
  final List<SmithySerializer> _userSerializers;
  final Map<FullType, Function> _builderFactories;
  final List<HttpInterceptor> _coreInterceptors;
  final List<HttpInterceptor> _userInterceptors;

  @override
  late final Serializers serializers = () {
    final builder = _coreSerializers.toBuilder();
    builder.addAll(_userSerializers.where((el) {
      return el.supportedProtocols.contains(protocolId);
    }));
    for (final entry in _builderFactories.entries) {
      builder.addBuilderFactory(entry.key, entry.value);
    }
    return builder.build();
  }();

  @override
  late final List<HttpInterceptor> interceptors = [
    ..._coreInterceptors,
    ..._userInterceptors,
  ];
}

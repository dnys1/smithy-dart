import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;

abstract class AWSHttpProtocol<Payload, Input extends HttpInput<Payload>,
    Output> extends HttpProtocol<Payload, Input, Output> {
  AWSHttpProtocol(
    this._coreSerializers,
    this._userSerializers, {
    required this.interceptors,
  });

  final Serializers _coreSerializers;
  final List<SmithySerializer> _userSerializers;

  @override
  late final Serializers serializers = (_coreSerializers.toBuilder()
        ..addAll(_userSerializers
            .where((el) => el.supportedProtocols.contains(protocolId))))
      .build();

  @override
  final List<HttpInterceptor> interceptors;
}

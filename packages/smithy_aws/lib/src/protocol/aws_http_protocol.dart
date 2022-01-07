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
  final List<Object> _userSerializers;

  @override
  late final Serializers serializers = (_coreSerializers.toBuilder()
        ..addAll(_userSerializers.expand((el) {
          if (el is List) {
            return el.cast();
          } else if (el is Iterable) {
            return el.cast();
          }
          return [el as Serializer];
        })))
      .build();

  @override
  final List<HttpInterceptor> interceptors;
}

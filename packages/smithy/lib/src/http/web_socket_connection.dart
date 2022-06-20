import 'dart:async';

import 'package:smithy/smithy.dart';

class WebSocketConnection<Input, Output> extends StreamView<Output>
    implements StreamConnection<Input, Output> {
  const WebSocketConnection(super.stream, this.sink);

  final StreamSink<Input> sink;

  @override
  Future<void> close() => sink.close();
}

import 'dart:async';

import 'package:async/async.dart';
import 'package:smithy/smithy.dart';

class WebSocketConnection<Input, Output> extends DelegatingStream<Output>
    implements StreamConnection<Input, Output> {
  WebSocketConnection(Stream<Output> stream, this._sink) : super(stream);

  final StreamSink<Input> _sink;

  @override
  void add(Input event) => _sink.add(event);

  @override
  void addError(Object error, [StackTrace? stackTrace]) =>
      _sink.addError(error, stackTrace);

  @override
  Future<void> addStream(Stream<Input> stream) => _sink.addStream(stream);

  @override
  Future<void> close() => _sink.close();

  @override
  Future<void> get done => _sink.done;
}

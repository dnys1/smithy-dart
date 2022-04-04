import 'dart:async';

abstract class StreamConnection<Input, Output>
    implements Stream<Output>, StreamSink<Input> {}

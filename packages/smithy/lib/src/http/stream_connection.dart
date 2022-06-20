import 'dart:async';

import 'package:aws_common/aws_common.dart';

abstract class StreamConnection<Input, Output>
    implements Stream<Output>, Closeable {}

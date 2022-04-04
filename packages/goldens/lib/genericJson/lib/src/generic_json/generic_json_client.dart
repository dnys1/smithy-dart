// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library generic_json.generic_json.generic_json_client;

import 'dart:async' as _i4;

import 'package:generic_json/src/generic_json/model/event_stream_input_output.dart'
    as _i2;
import 'package:generic_json/src/generic_json/operation/event_stream_operation.dart'
    as _i3;
import 'package:generic_json/src/generic_json/operation/unit_input_and_output_operation.dart'
    as _i5;
import 'package:smithy/smithy.dart' as _i1;

class GenericJsonClient {
  const GenericJsonClient({required Uri baseUri}) : _baseUri = baseUri;

  final Uri _baseUri;

  _i1.StreamConnection<_i2.EventStreamInputOutput, _i2.EventStreamInputOutput>
      eventStream(_i2.EventStreamInputOutput input, {_i1.HttpClient? client}) {
    return _i3.EventStreamOperation(baseUri: _baseUri)
        .run(input, client: client);
  }

  _i4.Future<void> unitInputAndOutput({_i1.HttpClient? client}) {
    return _i5.UnitInputAndOutputOperation(baseUri: _baseUri)
        .run(const _i1.Unit(), client: client);
  }
}

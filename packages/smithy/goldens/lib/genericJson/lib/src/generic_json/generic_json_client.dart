// Generated with smithy-dart 0.5.5. DO NOT MODIFY.

library generic_json.generic_json.generic_json_client;

import 'dart:async' as _i1;

import 'package:generic_json/src/generic_json/operation/unit_input_and_output_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i2;

class GenericJsonClient {
  const GenericJsonClient({required Uri baseUri}) : _baseUri = baseUri;

  final Uri _baseUri;

  _i1.Future<void> unitInputAndOutput({_i2.HttpClient? client}) {
    return _i3.UnitInputAndOutputOperation(baseUri: _baseUri)
        .run(const _i2.Unit(), client: client);
  }
}

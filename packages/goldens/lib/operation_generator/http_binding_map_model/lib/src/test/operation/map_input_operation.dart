import 'package:http_binding_map_model/src/test/model/map_input_request.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';

class MapInputOperation
    extends HttpOperation<MapInputRequest, MapInputRequest, Unit> {
  const MapInputOperation();

  @override
  Uri get baseUri => Uri();

  @override
  String get method => 'POST';

  @override
  String get path => '/input/map';

  @override
  List<HttpProtocol<MapInputRequest, MapInputRequest, Unit>> get protocols =>
      const [
        AwsJson1_1Protocol(),
      ];
}

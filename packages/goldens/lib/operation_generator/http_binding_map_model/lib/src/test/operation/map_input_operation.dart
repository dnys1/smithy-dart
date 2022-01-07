import 'package:http_binding_map_model/src/test/model/map_input_request.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';

class MapInputOperation
    extends HttpOperation<MapInputRequest, MapInputRequest, Unit> {
  @override
  HttpRequest get request => (HttpRequestBuilder()
        ..method = 'POST'
        ..path = '/input/map')
      .build();

  @override
  late final List<HttpProtocol<MapInputRequest, MapInputRequest, Unit>>
      protocols = [
    AwsJson1_1Protocol(
      serializers: [MapInputRequest.serializers],
    ),
  ];
}

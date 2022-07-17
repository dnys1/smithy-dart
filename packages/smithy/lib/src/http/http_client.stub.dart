import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

class Http2Client implements HttpClient {
  @override
  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request) async {
    throw UnimplementedError('http2 is not supported on this platform');
  }

  @override
  AlpnProtocol get protocol => AlpnProtocol.http2;
}

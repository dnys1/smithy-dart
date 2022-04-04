import 'package:meta/meta.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

@internal
WebSocketChannel wsConnect(
  Uri uri, {
  Map<String, String>? headers,
  List<String>? protocols,
}) =>
    IOWebSocketChannel.connect(
      uri,
      protocols: protocols,
      headers: headers,
    );

/// The configuration used by a service to route HTTP requests.
enum RouteConfiguration {
  /// Requests are routed based on the path.
  rest,

  /// Requests are routed via an RPC header which maps to a handler.
  rpc,
}

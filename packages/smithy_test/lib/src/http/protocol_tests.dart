import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

class MockHttpOperation<Payload, Input extends HttpRequestable<Payload>, Output>
    extends HttpOperation<Payload, Input, Output> {
  const MockHttpOperation({
    required this.request,
    required this.protocols,
  });

  @override
  final HttpRequest request;

  @override
  final List<HttpProtocol<Payload, Input, Output>> protocols;
}

void httpRequestTest<Payload, Input extends HttpRequestable<Payload>, Output>(
  HttpRequestTestCase testCase,
  HttpProtocol<Payload, Input, Output> protocol,
  Input input,
) {
  group(testCase.protocol.shape, () {
    test(testCase.id, () async {
      final mockClient = MockClient((request) async {
        // The expected host present in the Host header of the request, not
        // including the path or scheme (for example, "prefix.example.com").
        // If no resolvedHost is defined, then no assertions are made about
        // the resolved host for the request.
        //
        // This can differ from the host provided to the client if the operation
        // has a member with the endpoint trait.
        if (testCase.resolvedHost != null) {
          expect(request.url.host, equals(testCase.resolvedHost));
        }

        // Each element in the list is a query string key value pair that
        // starts with the query string parameter name optionally followed by
        // "=", optionally followed by the query string parameter value.
        //
        // For example, "foo=bar", "foo=", and "foo" are all valid values.
        for (var queryParam in testCase.queryParams) {
          final split = queryParam.split('=').iterator;
          final key = split.current;
          final value = split.moveNext() ? split.current : '';

          // This kind of list is used instead of a map so that query string
          // parameter values for lists can be represented using repeated
          // key-value pairs.
          final paramValues = request.url.queryParametersAll[key];
          expect(paramValues, contains(value));
        }

        for (var queryParamName in testCase.forbidQueryParams) {
          expect(
            request.url.queryParameters.containsKey(queryParamName),
            isFalse,
          );
        }

        for (var queryParamName in testCase.requireQueryParams) {
          expect(
            request.url.queryParameters.containsKey(queryParamName),
            isTrue,
          );
        }

        for (var headerEntry in testCase.headers.entries) {
          expect(
            request.headers[headerEntry.key],
            equals(headerEntry.value),
          );
        }

        for (var headerName in testCase.forbidHeaders) {
          expect(
            request.headers.containsKey(headerName),
            isFalse,
          );
        }

        for (var headerName in testCase.requireHeaders) {
          expect(
            request.headers.containsKey(headerName),
            isTrue,
          );
        }

        var expectedBody = testCase.body;
        if (expectedBody != null) {
          final contentType = testCase.bodyMediaType;
          switch (contentType) {
            // TODO
          }
          expect(request.body, equals(testCase.body));
        }

        return Response('', 200);
      });
      final client = HttpClient.v1(baseClient: mockClient);
      await MockHttpOperation(
        request: HttpRequest(),
        protocols: [protocol],
      ).run(input, client: client);
    });
  });
}

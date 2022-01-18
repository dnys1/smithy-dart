namespace smithy.example

use aws.protocols#awsJson1_1
use smithy.test#httpResponseTests

@awsJson1_1
service GoodbyeService {
    version: "1.0.0",
    operations: [SayGoodbye]
}

@http(method: "POST", uri: "/")
@httpResponseTests([
    {
        id: "say_goodbye",
        protocol: awsJson1_1,
        params: {farewell: "Bye"},
        code: 200,
        headers: {
            "X-Farewell": "Bye",
            "Content-Length": "0"
        }
    }
])
operation SayGoodbye {
    input: SayGoodbyeInput,
    output: SayGoodbyeOutput,
    errors: [InvalidGreeting]
}

@input
structure SayGoodbyeInput {}

@output
structure SayGoodbyeOutput {
    @httpHeader("X-Farewell")
    farewell: String,
}

@error("client")
@httpError(400)
@httpResponseTests([
    {
        id: "invalid_greeting",
        protocol: awsJson1_1,
        params: {foo: "baz", message: "Hi"},
        code: 400,
        headers: {"X-Foo": "baz"},
        body: "{\"message\": \"Hi\"}",
        bodyMediaType: "application/json",
    }
])
structure InvalidGreeting {
    @httpHeader("X-Foo")
    foo: String,

    message: String,
}
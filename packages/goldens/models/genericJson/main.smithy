namespace example.genericJson

service GenericJson {
    version: "2022-03-19",
    operations: [
        UnitInputAndOutput
    ]
}

@http(uri: "/UnitInputAndOutput", method: "POST")
operation UnitInputAndOutput {
    input: Unit,
    output: Unit
}

@http(method: "POST", uri: "/ws")
operation EventStream {
    input: EventStreamInputOutput,
    output: EventStreamInputOutput
}

structure EventStreamInputOutput {
    @httpPayload
    event: Event
}

@streaming
union Event {
    message: EventMessage
}

structure EventMessage {
    @required
    message: String
}

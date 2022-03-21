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

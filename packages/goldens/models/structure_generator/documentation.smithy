/// Test: Handles shape and member docs

namespace com.test.documentation

service Test {
    version: "1.0.0",
    operations: [GetFoo]
}

structure GetFooInput {
    @documentation("Member documentation")
    baz: Baz,

    bar: Baz,

    qux: String
}

@documentation("Shape documentation")
string Baz

operation GetFoo {
    input: GetFooInput
}
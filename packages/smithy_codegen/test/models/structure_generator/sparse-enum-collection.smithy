/// Test: Generates collection types for maps with enum values

$version: "1"
namespace com.test

/// use aws.protocols#restJson1

/// @restJson1
/// service Example {
///     version: "1.0.0",
///     operations: [GetFoo]
/// }

/// @http(method: "POST", uri: "/input/list")
/// operation GetFoo {
///     input: GetFooInput
/// }

@enum([
    {
        value: "rawValue1",
        name: "Variant1"
    },
    {
        value: "rawValue2",
        name: "Variant2"
    }
])
string MyEnum

@sparse
map EnumMap {
    key: String,
    value: MyEnum
}

structure GetFooInput {
    enumMap: EnumMap
}
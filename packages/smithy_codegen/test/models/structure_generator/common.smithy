namespace com.test

structure Qux { }

@documentation("This *is* documentation about the shape.")
structure MyStruct {
    foo: String,
    object: String,
    @documentation("This *is* documentation about the member.")
    bar: PrimitiveInteger,
    baz: Integer,
    Quux: Qux,
    byteValue: Byte
}
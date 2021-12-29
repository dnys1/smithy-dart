namespace com.test

structure Qux { }

@deprecated
structure MyStruct {
    foo: String,
    bar: String,

    @deprecated
    baz: Qux,
}
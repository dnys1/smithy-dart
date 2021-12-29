package software.amazon.smithy.dart.codegen

import org.junit.jupiter.api.Test
import software.amazon.smithy.model.shapes.ShapeId
import kotlin.test.assertEquals
import kotlin.test.assertFails

class CodegenVisitorTests {
    @Test
    fun testNonConflictingNames() {
        // Tests that non-conflicting names are not prefixed
        val foo = ShapeId.fromParts("com.foo", "Foo")
        val bar = ShapeId.fromParts("com.foo", "Bar")
        val baz = ShapeId.fromParts("com.foo", "Baz")
        val services = listOf(foo, bar, baz)
        val expected = mapOf(
            foo to "foo",
            bar to "bar",
            baz to "baz"
        )
        val serviceNames = CodegenVisitor.resolveServiceNames(services)
        assertEquals(expected, serviceNames)
    }

    @Test
    fun testConflictingNamesSinglePrefix() {
        // Tests that conflicting names one namespace apart have a single prefix added.
        val bar = ShapeId.fromParts("com.foo.bar", "Foo")
        val baz = ShapeId.fromParts("com.foo.baz", "Foo")
        val services = listOf(bar, baz)
        val expected = mapOf(
            bar to "bar_foo",
            baz to "baz_foo"
        )
        val serviceNames = CodegenVisitor.resolveServiceNames(services)
        assertEquals(expected, serviceNames)
    }

    @Test
    fun testConflictingNamesMultiplePrefixes() {
        // Tests that conflicting names have prefixes added until they are unique.
        val bar = ShapeId.fromParts("bar.a.b.c.d.e.f", "Foo")
        val baz = ShapeId.fromParts("baz.a.b.c.d.e.f", "Foo")
        val services = listOf(bar, baz)
        val expected = mapOf(
            bar to "bar_a_b_c_d_e_f_foo",
            baz to "baz_a_b_c_d_e_f_foo"
        )
        val serviceNames = CodegenVisitor.resolveServiceNames(services)
        assertEquals(expected, serviceNames)
    }

    @Test
    fun testPrefixedNameCollides() {
        // Tests that a conflicting name that has been prefixed collides with a previously non-conflicting name.
        val foo = ShapeId.fromParts("com.foo", "Foo")
        val bar = ShapeId.fromParts("com.bar", "Foo")
        val baz = ShapeId.fromParts("com.baz", "BarFoo")
        val services = listOf(foo, bar, baz)
        val expected = mapOf(
            foo to "foo_foo",
            bar to "com_bar_foo",
            baz to "baz_bar_foo"
        )
        val serviceNames = CodegenVisitor.resolveServiceNames(services)
        assertEquals(expected, serviceNames)
    }

    @Test
    fun testPrefixFailure() {
        // Tests that prefixing fails when uniqueness cannot be established
        val foo = ShapeId.fromParts("com.foo", "Bar")
        val bar = ShapeId.fromParts("com", "FooBar")
        val baz = ShapeId.fromParts("com.baz", "Bar")
        val services = listOf(foo, bar, baz)
        assertFails {
            CodegenVisitor.resolveServiceNames(services)
        }
    }
}
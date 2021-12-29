package software.amazon.smithy.dart.codegen.core

import org.junit.jupiter.api.Test
import software.amazon.smithy.dart.codegen.model.DartNamespace
import kotlin.test.assertEquals

class DartDirectiveTest {
    @Test
    fun testSameFolder() {
        val from = DartNamespace.fromNamespace("example.foo.model.a")
        val into = DartNamespace.fromNamespace("example.foo.model.b")

        val stmt = ImportStatement(from, into)
        assertEquals("import 'a.dart';", stmt.render())
    }

    @Test
    fun testRelativeParent() {
        val from = DartNamespace.fromNamespace("example.foo.a")
        val into = DartNamespace.fromNamespace("example.foo.model.b")

        val stmt = ImportStatement(from, into)
        assertEquals("import '../a.dart';", stmt.render())
    }

    @Test
    fun testRelativeChild() {
        val from = DartNamespace.fromNamespace("example.foo.model.b")
        val into = DartNamespace.fromNamespace("example.foo.a")

        val stmt = ImportStatement(from, into)
        assertEquals("import 'model/b.dart';", stmt.render())
    }

    @Test
    fun testExternal() {
        val from = DartNamespace.fromNamespace("another.package")
        val into = DartNamespace.fromNamespace("example.foo.model.b")

        val stmt = ImportStatement(from, into)
        assertEquals("import 'package:another/package.dart';", stmt.render())
    }

    @Test
    fun testServiceExports() {
        val from = DartNamespace.fromNamespace("example.foo.model.b")
        val into = DartNamespace.fromNamespace("example.foo")

        val stmt = ExportStatement(from, into)
        assertEquals("export 'src/foo/model/b.dart';", stmt.render())
    }
}
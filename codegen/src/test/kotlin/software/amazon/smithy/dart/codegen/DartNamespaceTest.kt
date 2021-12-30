package software.amazon.smithy.dart.codegen.model

import org.junit.jupiter.api.Test
import kotlin.test.assertEquals

class DartNamespaceTest {
    companion object {
        const val packageName = "example"
        const val serviceName = "Foo"
        const val clientName = "FooClient"
        const val modelName = "GetFooInput"
    }

    @Test
    fun testValidServiceNamespace() {
        val expected = DartNamespace(packageName, serviceName, LibraryType.Service, "$serviceName.dart")

        val fromParts = DartNamespace.fromNamespaceParts(packageName, serviceName)
        assertEquals(expected, fromParts)

        val fromPath = DartNamespace.fromPath(packageName, "$serviceName.dart")
        assertEquals(expected, fromPath)

        val fromNamespace = DartNamespace.fromNamespace("$packageName.$serviceName")
        assertEquals(expected, fromNamespace)
    }

    @Test
    fun testValidClientNamespace() {
        val filename = "$clientName.dart"
        val expected = DartNamespace(packageName, serviceName, LibraryType.Client, filename)

        val fromParts = DartNamespace.fromNamespaceParts(packageName, serviceName, filename)
        assertEquals(fromParts, expected)

        val fromPath = DartNamespace.fromPath(packageName, "src/$serviceName/$filename")
        assertEquals(fromPath, expected)

        val fromNamespace = DartNamespace.fromNamespace("$packageName.$serviceName.$clientName")
        assertEquals(fromNamespace, expected)
    }

    @Test
    fun testValidModelNamespace() {
        val filename = "$modelName.dart"
        val expected = DartNamespace(packageName, serviceName, LibraryType.Model, filename)

        val fromParts = DartNamespace.fromNamespaceParts(packageName, serviceName, "model", filename)
        assertEquals(fromParts, expected)

        val fromPath = DartNamespace.fromPath(packageName, "src/$serviceName/model/$filename")
        assertEquals(fromPath, expected)

        val fromNamespace = DartNamespace.fromNamespace("$packageName.$serviceName.model.$modelName")
        assertEquals(fromNamespace, expected)
    }
}
package software.amazon.smithy.dart.codegen.rendering

import software.amazon.smithy.dart.codegen.core.ExportStatement
import software.amazon.smithy.dart.codegen.core.snakeCase
import software.amazon.smithy.dart.codegen.model.DartNamespace
import software.amazon.smithy.utils.CodeWriter

class LibraryGenerator(
    private val namespace: DartNamespace,
    private val exports: List<DartNamespace>,
    writer: CodeWriter? = null
) {
    private val writer: CodeWriter

    init {
        this.writer = writer ?: CodeWriter().apply {
            trimBlankLines()
            trimTrailingSpaces()
            setIndentText("  ")
            expressionStart = '#'
        }
    }

    fun render(): String {
        writer.write("library #L;\n", namespace.filename)

        for (export in exports) {
            val exportStatement = ExportStatement(export, namespace)
            writer.write(exportStatement)
        }

        return writer.toString()
    }
}
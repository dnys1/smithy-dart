/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

package software.amazon.smithy.dart.codegen.core

import software.amazon.smithy.codegen.core.CodegenException
import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.codegen.core.SymbolDependency
import software.amazon.smithy.codegen.core.SymbolReference
import software.amazon.smithy.dart.codegen.model.*
import software.amazon.smithy.dart.codegen.utils.getOrNull
import software.amazon.smithy.model.Model
import software.amazon.smithy.model.shapes.MemberShape
import software.amazon.smithy.model.shapes.Shape
import software.amazon.smithy.model.traits.DeprecatedTrait
import software.amazon.smithy.model.traits.DocumentationTrait
import software.amazon.smithy.model.traits.EnumDefinition
import software.amazon.smithy.utils.CodeWriter
import java.util.function.BiFunction

/**
 * A writer for a single file at [libraryPath] within [packageName].
 */
class DartWriter(
    private val symbol: Symbol,
    val symbolFormatter: (
        String,
        MutableMap<String, Int?>,
        MutableSet<SymbolDependency>,
        SymbolFormattingOverrides
    ) -> DartSymbolFormatter = ::DartSymbolPrefixingFormatter,
    private var renderHeader: Boolean = false,
) : CodeWriter() {
    companion object {
        const val staticHeader = "// Code generated by smithy-dart. DO NOT EDIT!"
    }

    val dependencies: MutableSet<SymbolDependency> = mutableSetOf()
    private val namespaceAliases: MutableMap<String, Int?> = mutableMapOf()

    init {
        trimBlankLines()
        trimTrailingSpaces()
        setIndentText("  ")
        expressionStart = '#'

        putFormatter('S', QuotedFormatter())
        putFormatter('D', symbolFormatter(symbol.namespace, namespaceAliases, dependencies, SymbolFormattingOverrides.nonNull))
        putFormatter('T', symbolFormatter(symbol.namespace, namespaceAliases, dependencies, SymbolFormattingOverrides.none))
    }

    /**
     * Configures the writer with the appropriate opening/closing doc comment lines and calls the [block]
     * with this writer. Any calls to `write()` inside of block will be escaped appropriately.
     * On return the writer's original state is restored.
     *
     * e.g.
     * ```
     * writer.dokka(){
     *     write("This is a doc comment")
     * }
     * ```
     *
     * would output
     *
     * ```
     * /**
     *  * This is a doc comment
     *  */
     * ```
     */
    fun docs(block: DartWriter.() -> Unit) {
        pushState()
        setNewlinePrefix("/// ")
        block(this)
        popState()
    }

    fun docs(docs: String) {
        docs {
            write(
                formatDocumentation(
                    sanitizeDocumentation(docs)
                )
            )
        }
    }

    fun renderHeader() {
        this.renderHeader = true
    }

    private val imports: String
        get() = namespaceAliases.map { entry ->
            val namespace = entry.key
            val alias = entry.value
            ImportStatement(
                DartNamespace.fromNamespace(namespace),
                DartNamespace.fromSymbol(symbol),
            ).render(alias)
        }.joinToString("\n")

    override fun toString(): String {
        val contents = super.toString()
        if (renderHeader) {
            val header = "$staticHeader\n\n"
            val library = "library ${symbol.namespace};\n\n"
            val imports = "$imports\n\n"
            return header + library + imports + contents
        }
        return contents
    }

    /**
     * Adds appropriate annotations to generated declarations.
     */
    fun renderAnnotations(shape: Shape) {
        renderDeprecatedAnnotation(shape)
    }

    /**
     * Adds the `@Deprecated` annotation if appropriate.
     */
    private fun renderDeprecatedAnnotation(shape: Shape) {
        val trait = shape.getTrait<DeprecatedTrait>()
        if (trait != null) {
            val since = trait.since.getOrNull()
            var message = if (since != null && since.isNotEmpty()) "Since $since." else ""
            message += trait.message.getOrNull()
                ?: "No longer recommended for use. See API documentation for more details."
            write("@Deprecated(#S)", message)
        }
    }

    // handles the documentation for shapes
    fun renderDocumentation(shape: Shape) = shape.getTrait<DocumentationTrait>()?.let { docs(it.value) }

    // handles the documentation for member shapes
    fun renderMemberDocumentation(model: Model, shape: MemberShape) =
        shape.getMemberTrait(model, DocumentationTrait::class.java).getOrNull()?.let { docs(it.value) }

    // handles the documentation for enum definitions
    fun renderEnumDefinitionDocumentation(enumDefinition: EnumDefinition) {
        enumDefinition.documentation.ifPresent {
            write("")
            docs(it)
        }
    }
}

abstract class DartSymbolFormatter(
    val namespace: String,
    val namespaceAliases: MutableMap<String, Int?>,
    private val dependencies: MutableSet<SymbolDependency>,
    private val overrides: SymbolFormattingOverrides,
) : BiFunction<Any, String, String> {
    fun printSymbol(symbol: Symbol, indent: String): String {
        dependencies.addAll(symbol.dependencies)

        var name = symbol.name
        if (symbol.useReferences.isNotEmpty()) {
            val symbolList = symbol.useReferences.joinToString(", ") { ref ->
                apply(ref, indent)
            }
            name = "${name}<$symbolList>"
        }
        val isNullable = overrides.isNullable == true || (symbol.isBoxed && overrides.isNullable != false)
        return if (isNullable) "$name?" else name
    }
}

data class SymbolFormattingOverrides(val isNullable: Boolean? = null) {
    companion object {
        val none = SymbolFormattingOverrides()
        val nonNull = SymbolFormattingOverrides(isNullable = false)
    }
}

/**
 * Implements Dart symbol formatting with prefixing.
 */
class DartSymbolPrefixingFormatter(
    namespace: String,
    namespaceAliases: MutableMap<String, Int?>,
    dependencies: MutableSet<SymbolDependency>,
    overrides: SymbolFormattingOverrides = SymbolFormattingOverrides.none,
) : DartSymbolFormatter(namespace, namespaceAliases, dependencies, overrides) {
    override fun apply(type: Any, indent: String): String {
        return when (type) {
            is DartSymbol -> {
                return apply(type.symbol, indent)
            }
            is SymbolReference -> {
                return apply(type.symbol, indent)
            }
            is Symbol -> {
                var alias = namespaceAliases[type.namespace]
                if (alias == null && !type.isBuiltin && type.namespace != namespace) {
                    alias = namespaceAliases.size
                    namespaceAliases[type.namespace] = alias
                }
                val symbolName = printSymbol(type, indent)
                var prefix = ""
                if (alias != null) {
                    prefix = "_i$alias."
                }
                "$prefix$symbolName"
            }
            else -> throw CodegenException("Invalid type provided for #T. Expected a Symbol, but found `$type`")
        }
    }
}


/**
 * Implements Dart symbol formatting and imports tracking.
 */
class DartSymbolDefaultFormatter(
    namespace: String,
    namespaceAliases: MutableMap<String, Int?>,
    dependencies: MutableSet<SymbolDependency>,
    overrides: SymbolFormattingOverrides = SymbolFormattingOverrides.none,
) : DartSymbolFormatter(namespace, namespaceAliases, dependencies, overrides) {
    override fun apply(type: Any, indent: String): String {
        return when (type) {
            is DartSymbol -> {
                return apply(type.symbol, indent)
            }
            is SymbolReference -> {
                return apply(type.symbol, indent)
            }
            is Symbol -> {
                if (!type.isBuiltin && type.namespace != namespace) {
                    namespaceAliases[type.namespace] = null
                }
                printSymbol(type, indent)
            }
            else -> throw CodegenException("Invalid type provided for #T. Expected a Symbol, but found `$type`")
        }
    }
}

private class QuotedFormatter : BiFunction<Any, String, String> {
    override fun apply(t: Any, u: String): String = "'$t'"
}

// Most commonly occurring (but not exhaustive) set of HTML tags found in AWS models
private val commonHtmlTags = setOf(
    "a",
    "b",
    "code",
    "dd",
    "dl",
    "dt",
    "i",
    "important",
    "li",
    "note",
    "p",
    "strong",
    "ul"
).map { listOf("<$it>", "</$it>") }.flatten()

// Replace characters in the input documentation to prevent issues in codegen or rendering.
// NOTE: Currently we look for specific strings of Html tags commonly found in docs
//       and remove them.  A better solution would be to generally convert from HTML to "pure"
//       markdown such that formatting is preserved.
// TODO: https://github.com/awslabs/smithy-kotlin/issues/136
private fun sanitizeDocumentation(doc: String): String = doc
    .stripAll(commonHtmlTags)
    // Docs can have valid $ characters that shouldn't run through formatters.
    .replace("#", "##")
    // Services may have comment string literals embedded in documentation.
    .replace("/*", "&##47;*")
    .replace("*/", "*&##47;")

// Remove all strings from source string and return the result
private fun String.stripAll(stripList: List<String>): String {
    var newStr = this
    for (item in stripList) newStr = newStr.replace(item, "")

    return newStr
}

// Remove whitespace from the beginning and end of each line of documentation
// Remove blank lines
private fun formatDocumentation(doc: String, lineSeparator: String = "\n") =
    doc
        .split('\n') // Break the doc into lines
        .filter { it.isNotBlank() } // Remove empty lines
        .joinToString(separator = lineSeparator) { it.trim() } // Trim line

/**
 * Optionally call the [Runnable] if [test] is true, otherwise do nothing and return the instance without
 * running the block
 */
fun CodeWriter.callIf(test: Boolean, runnable: Runnable): CodeWriter {
    if (test) {
        runnable.run()
    }
    return this
}

/**
 * Extension function that is more idiomatic Kotlin that is roughly the same purpose as
 * the provided function `openBlock(String textBeforeNewline, String textAfterNewline, Runnable r)`
 *
 * Example:
 * ```
 * writer.withBlock("{", "}") {
 *     write("foo")
 * }
 * ```
 *
 * Equivalent to:
 * ```
 * writer.openBlock("{")
 * writer.write("foo")
 * writer.closeBlock("}")
 * ```
 */
fun <T : CodeWriter> T.withBlock(
    textBeforeNewLine: String,
    textAfterNewLine: String,
    vararg args: Any,
    block: T.() -> Unit
): T = wrapBlockIf(true, textBeforeNewLine, textAfterNewLine, *args) { block(this) }

/**
 * Extension function that is more idiomatic Kotlin that is roughly the same purpose as an if block wrapped around
 * the provided function `openBlock(String textBeforeNewline, String textAfterNewline, Runnable r)`
 *
 * Example:
 * ```
 * writer.wrapBlockIf(foo == bar, "{", "}") {
 *     write("foo")
 * }
 * ```
 *
 * Equivalent to:
 * ```
 * if (foo == bar) writer.openBlock("{")
 * writer.write("foo")
 * if (foo == bar) writer.closeBlock("}")
 * ```
 */
fun <T : CodeWriter> T.wrapBlockIf(
    condition: Boolean,
    textBeforeNewLine: String,
    textAfterNewLine: String,
    vararg args: Any,
    block: T.() -> Unit,
): T {
    if (condition) openBlock(textBeforeNewLine, *args)
    block(this)
    if (condition) closeBlock(textAfterNewLine)
    return this
}

fun <T : CodeWriter> T.withTrailingChar(
    char: String,
    block: T.() -> Unit,
) {
    setNewline("$char\n")
    block()
    setNewline("\n")
}

/**
 * Extension function that closes the previous block, dedents, opens a new block with [textBeforeNewLine], and indents.
 *
 * This is useful for chaining if-if-else-else branches.
 *
 * Example:
 * ```
 * writer.openBlock("if (foo) {")
 *     .write("foo()")
 *     .closeAndOpenBlock("} else {")
 *     .write("bar()")
 *     .closeBlock("}")
 * ```
 */
fun <T : CodeWriter> T.closeAndOpenBlock(
    textBeforeNewLine: String,
    vararg args: Any,
): T = apply {
    dedent()
    openBlock(textBeforeNewLine, *args)
    indent()
}

private fun <T : CodeWriter> T.removeContext(context: Map<String, Any?>): Unit =
    context.keys.forEach { key -> removeContext(key) }

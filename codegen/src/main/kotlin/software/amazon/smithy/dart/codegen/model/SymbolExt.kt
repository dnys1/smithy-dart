/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

package software.amazon.smithy.dart.codegen.model

import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.codegen.core.SymbolReference
import software.amazon.smithy.dart.codegen.core.snakeCase
import software.amazon.smithy.dart.codegen.utils.getOrNull
import software.amazon.smithy.model.shapes.Shape

/**
 * The default value for a symbol.
 */
data class DefaultValue(val template: String, val values: List<Any> = listOf()) {
    companion object {
        val `null` = DefaultValue("null")
        val zero = DefaultValue("0")
    }
}

/**
 * Property bag keys used by symbol provider implementation
 */
object SymbolProperty {
    // The key that holds the default value for a type (symbol) as a string
    const val DEFAULT_VALUE_KEY: String = "defaultValue"

    // Boolean property indicating this symbol should be boxed
    const val BOXED_KEY: String = "boxed"

    // the original shape the symbol was created from
    const val SHAPE_KEY: String = "shape"

    // Whether the symbol is a builtin
    const val BUILT_IN_KEY: String = "builtin"
}

/**
 * Test if a symbol is boxed
 */
val Symbol.isBoxed: Boolean
    get() = getProperty(SymbolProperty.BOXED_KEY).map {
        when (it) {
            is Boolean -> it
            else -> false
        }
    }.orElse(false)

/**
 * Test if a symbol is not boxed
 */
val Symbol.isNotBoxed: Boolean
    get() = !isBoxed

/**
 * Creates a version of `this` with `boxed` set to [boxed].
 */
fun Symbol.withBoxed(boxed: Boolean): Symbol = toBuilder().withBoxed(boxed).build()

/**
 * Creates a version of `this` with `boxed` set to [boxed].
 */
fun Symbol.Builder.withBoxed(boxed: Boolean): Symbol.Builder = putProperty(SymbolProperty.BOXED_KEY, boxed)

/**
 * Creates an unboxed version of `this`.
 */
fun Symbol.unboxed(): Symbol = toBuilder().putProperty(SymbolProperty.BOXED_KEY, false).build()

/**
 * Creates a boxed version of `this`.
 */
fun Symbol.boxed(): Symbol = toBuilder().putProperty(SymbolProperty.BOXED_KEY, true).build()

/**
 * Gets the default value for the symbol if present, else null
 * @param defaultBoxed the string to pass back for boxed values
 */
fun Symbol.defaultValue(defaultBoxed: DefaultValue? = DefaultValue.`null`): DefaultValue? {
    // boxed types should always be defaulted to null
    if (isBoxed) {
        return defaultBoxed
    }

    val default = getProperty(SymbolProperty.DEFAULT_VALUE_KEY, DefaultValue::class.java)
    return if (default.isPresent) default.get() else null
}

/**
 * Mark a symbol as being boxed (nullable) i.e. `T?`
 */
fun Symbol.Builder.boxed(): Symbol.Builder = apply { putProperty(SymbolProperty.BOXED_KEY, true) }

/**
 * Set the default value used when formatting the symbol
 */
fun Symbol.Builder.defaultValue(template: String, vararg values: Any): Symbol.Builder =
    apply { putProperty(SymbolProperty.DEFAULT_VALUE_KEY, DefaultValue(template, values.toList())) }

/**
 * Set the default value used when formatting the symbol
 */
fun Symbol.Builder.defaultValue(defaultValue: DefaultValue): Symbol.Builder =
    apply { putProperty(SymbolProperty.DEFAULT_VALUE_KEY, defaultValue) }

/**
 * Convenience function for specifying kotlin namespace
 */
fun Symbol.Builder.namespace(name: String): Symbol.Builder = namespace(name, ".")

/**
 * Add a reference to the given symbol with the context option
 */
fun Symbol.Builder.addReference(symbol: Symbol, option: SymbolReference.ContextOption): Symbol.Builder {
    val ref = SymbolReference.builder()
        .symbol(symbol)
        .options(option)
        .build()

    return addReference(ref)
}

/**
 * Get the shape this symbol was created from
 */
val Symbol.shape: Shape?
    get() = getProperty(SymbolProperty.SHAPE_KEY, Shape::class.java).getOrNull()


/**
 * The name of the package this symbol belongs to.
 */
val Symbol.packageName: String
    get() = namespace.split(".").first()

/**
 * The name of the library/service this symbol belongs to.
 */
val Symbol.libraryName: String
    get() = namespace.split(".")[1]

/**
 * The path of the library which exposes this symbol, relative to `lib/src/`.
 */
val Symbol.srcPath: String
    get() = namespace.split(".").let { list ->
        list.subList(1, list.size).joinToString("/") { it.snakeCase() }
    }

/**
 * Whether the symbol is "built-in", i.e. coming from `dart:core` and thus, not needing an import.
 */
val Symbol.isBuiltin: Boolean
    get() = namespace.isEmpty()

/**
 * The import statement for this symbol.
 */
//val Symbol.importStatement: ImportStatement?
//    get() {
//        if (namespace.isEmpty()) return null
//        if (packageName == "dart") {
//            return ImportStatement("${packageName}:${libraryPath}")
//        }
//        return ImportStatement("package:${packageName}/${libraryPath}.dart")
//    }

/**
 * References marked with [SymbolReference.ContextOption.USE] option, used for generic arguments.
 */
val Symbol.useReferences: List<SymbolReference>
    get() = references.filter { it.options.contains(SymbolReference.ContextOption.USE) }

/**
 * References marked with [SymbolReference.ContextOption.DECLARE] option, i.e. the dependencies of the symbol.
 */
val Symbol.declareReferences: List<SymbolReference>
    get() = references.filter { it.options.contains(SymbolReference.ContextOption.DECLARE) }
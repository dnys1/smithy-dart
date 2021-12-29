/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

package software.amazon.smithy.dart.codegen.lang

import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.codegen.core.SymbolReference
import software.amazon.smithy.dart.codegen.model.SymbolProperty.BUILT_IN_KEY
import software.amazon.smithy.dart.codegen.model.buildSymbol
import sun.jvm.hotspot.debugger.cdbg.Sym

/**
 * Test if a string is a valid Dart identifier
 *
 * https://kotlinlang.org/spec/syntax-and-grammar.html#grammar-rule-Identifier
 */
fun isValidDartIdentifier(s: String): Boolean {
    s.forEachIndexed { idx, chr ->
        val isLetterOrUnderscore = chr.isLetter() || chr == '_'
        return when (idx) {
            0 -> isLetterOrUnderscore
            else -> isLetterOrUnderscore || chr.isDigit()
        }
    }
    return true
}

/**
 * Flag indicating if this symbol is a Kotlin built-in symbol
 */
val Symbol.isBuiltIn: Boolean
    get() = getProperty(BUILT_IN_KEY).orElse(false) == true

/**
 * Escape characters in strings to ensure they are treated as pure literals.
 */
fun String.toEscapedLiteral(): String = replace("\$", "\\$")

/**
 * Return true if string is valid package namespace, false otherwise.
 */
fun String.isValidPackageName() = isNotEmpty() && all { it.isLetterOrDigit() || it == '_' }

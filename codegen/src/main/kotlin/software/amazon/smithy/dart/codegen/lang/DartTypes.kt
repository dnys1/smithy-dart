/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

package software.amazon.smithy.dart.codegen.lang

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
 * Return true if string is valid package namespace, false otherwise.
 */
fun String.isValidPackageName() = isNotEmpty() && all { it.isLetterOrDigit() || it == '_' }

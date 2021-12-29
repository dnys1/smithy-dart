/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

package software.amazon.smithy.dart.codegen.lang

import software.amazon.smithy.codegen.core.ReservedWords
import software.amazon.smithy.codegen.core.ReservedWordsBuilder

/**
 * Returns the Dart language's reserved words.
 */
fun dartReservedWords(): ReservedWords = ReservedWordsBuilder().apply {
    hardReservedWords.forEach { put(it, "$it\$") }
}.build()

/**
 * Keywords in Dart which *may* be used as identifiers in the right context. Try to avoid using these keywords if possible
 * since it can be difficult to keep track of their valid contexts.
 *
 * See [here](https://dart.dev/guides/language/language-tour#keywords) for more info.
 */
val softReservedWords = listOf(
    "abstract",
    "as",
    "async",
    "covariant",
    "deferred",
    "dynamic",
    "export",
    "extension",
    "external",
    "factory",
    "Function",
    "get",
    "hide",
    "implements",
    "import",
    "interface",
    "late",
    "library",
    "mixin",
    "on",
    "operator",
    "part",
    "required",
    "set",
    "show",
    "static",
    "sync",
    "typedef",
    "yield",
)

/**
 * The Dart language's reserved words. These are words which can never be used as identifiers and must be suffixed
 * with "$" before they can be used.
 *
 * See [here](https://dart.dev/guides/language/language-tour#keywords) for more info.
 */
val hardReservedWords = listOf(
    "assert",
    "await",
    "break",
    "case",
    "catch",
    "class",
    "const",
    "continue",
    "default",
    "do",
    "else",
    "enum",
    "extends",
    "false",
    "finally",
    "for",
    "if",
    "in",
    "is",
    "new",
    "null",
    "rethrow",
    "return",
    "super",
    "switch",
    "this",
    "throw",
    "true",
    "try",
    "var",
    "void",
    "while",
    "with"
)

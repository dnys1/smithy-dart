/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */
package software.amazon.smithy.dart.codegen.core

import software.amazon.smithy.dart.codegen.model.DartNamespace
import java.nio.file.Paths
import kotlin.io.path.Path
import kotlin.io.path.relativeTo

open class DartDirective(
    val fromNamespace: DartNamespace,
    val intoNamespace: DartNamespace,
) {
    override fun toString(): String {
        val fromPackage = fromNamespace.packageName
        val intoPackage = intoNamespace.packageName
        return if (fromPackage != intoPackage) {
            if (fromPackage == "dart") {
                val library = fromNamespace.serviceName
                return if (library == "core") "" else "dart:$library"
            }
            // Use a package directive
            "package:${fromNamespace.packageName}/${fromNamespace.serviceName}.dart"
        } else {
            val importLibPath = "lib/" + fromNamespace.libRelativePath
            val currentLibPath = "lib/" + intoNamespace.libRelativePath

            // Generate a relative path
            Path(importLibPath).relativeTo(Path(currentLibPath).parent).toString()
        }
    }
}

/**
 * Wraps an import statement of [fromNamespace] from [intoNamespace] to the form:
 *
 * ```dart
 * import 'package:smithy/smithy.dart';
 * ```
 */
class ImportStatement(importNamespace: DartNamespace, currentNamespace: DartNamespace): DartDirective(importNamespace, currentNamespace) {
    fun render(alias: Int? = null): String {
        val statement = super.toString()

        return if (alias != null) {
            "import '$statement' as _i$alias;"
        } else {
            "import '$statement';"
        }
    }

    override fun toString(): String = render()
}

/**
 * Wraps an export statement of [exportNamespace] from [intoNamespace] to the form:
 *
 * ```dart
 * export 'package:smithy/smithy.dart';
 * ```
 */
class ExportStatement(exportNamespace: DartNamespace, currentNamespace: DartNamespace): DartDirective(exportNamespace, currentNamespace) {
    fun render(alias: Int? = null): String {
        val statement = super.toString()

        return if (alias != null) {
            "export '$statement' as _i$alias;"
        } else {
            "export '$statement';"
        }
    }

    override fun toString(): String = render()
}

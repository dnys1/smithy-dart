/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */
package software.amazon.smithy.dart.codegen.rendering

import software.amazon.smithy.build.FileManifest
import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.codegen.core.SymbolDependency
import software.amazon.smithy.dart.codegen.DartSettings
import software.amazon.smithy.dart.codegen.core.*
import software.amazon.smithy.utils.CodeWriter

/**
 * Generates the `pubspec.yaml` file for the generated code
 */
class PubspecGenerator(
    val settings: DartSettings,
    val dependencies: List<SymbolDependency>,
    writer: CodeWriter? = null,
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
        writer.write("name: #L", settings.pubspec.name)
        writer.write("version: #L", settings.pubspec.version)
        if (settings.pubspec.description != null) {
            writer.write("description: #L", settings.pubspec.description)
        }
        if (settings.pubspec.homepage != null) {
            writer.write("homepage: #L", settings.pubspec.homepage)
        }
        if (settings.pubspec.issueTracker != null) {
            writer.write("issue_tracker: #L", settings.pubspec.issueTracker)
        }
        if (settings.pubspec.publishTo != null) {
            writer.write("publish_to: #L", settings.pubspec.publishTo)
        }

        writer.write("")
        writer.withBlock("environment:", "") {
            writer.write("sdk: #S", settings.pubspec.environment.sdkConstraint)
        }

        writer.wrapBlockIf( dependencies.isNotEmpty(),"dependencies:", "") {
            for (dependency in dependencies) {
                writer.write("#L: #S", dependency.packageName, dependency.version)
            }
        }

        return  writer.toString()
    }
}

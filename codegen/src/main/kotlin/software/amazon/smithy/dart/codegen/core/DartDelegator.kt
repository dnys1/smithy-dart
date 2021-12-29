/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */
package software.amazon.smithy.dart.codegen.core

import software.amazon.smithy.build.FileManifest
import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.codegen.core.SymbolDependency
import software.amazon.smithy.codegen.core.SymbolProvider
import software.amazon.smithy.codegen.core.SymbolReference
import software.amazon.smithy.dart.codegen.DartSettings
import software.amazon.smithy.dart.codegen.model.DartNamespace
import software.amazon.smithy.dart.codegen.model.srcPath
import software.amazon.smithy.dart.codegen.utils.namespaceToPath
import software.amazon.smithy.model.Model
import software.amazon.smithy.model.shapes.Shape
import java.nio.file.Paths

const val DEFAULT_SOURCE_SET_ROOT = "./lib/src/"
private const val DEFAULT_TEST_SOURCE_SET_ROOT = "./test/"

/**
 * Manages writers for Dart files.
 */
class DartDelegator(
    private val settings: DartSettings,
    private val model: Model,
    val fileManifest: FileManifest,
    private val symbolProvider: SymbolProvider,
) {

    private val writers: MutableMap<String, DartWriter> = mutableMapOf()
    val libraries: MutableSet<DartNamespace> = mutableSetOf()

    /**
     * Writes all pending writers to disk and then clears them out.
     */
    fun flushWriters() {
        writers.forEach { (filename, writer) ->
            fileManifest.writeFile(filename, writer.toString())
        }
        writers.clear()
    }

    /**
     * Gets all of the dependencies that have been registered in writers owned by the delegator.
     *
     * This combines both all dependencies registered on writers as well as runtime dependencies
     * to cover dependencies from any runtime customizations in the service source tree.
     *
     * @return Returns all the dependencies.
     */
    val dependencies: List<SymbolDependency>
        get() {
            return writers.values.flatMap(DartWriter::dependencies)
        }

    /**
     * Gets a previously created writer or creates a new one if needed.
     *
     * @param shape Shape to create the writer for.
     * @param block Consumer that accepts and works with the file.
     */
    fun useShapeWriter(
        shape: Shape,
        block: (DartWriter) -> Unit
    ) {
        val symbol = symbolProvider.toSymbol(shape)
        useSymbolWriter(symbol, block)
    }

    /**
     * Gets a previously created writer or creates a new one if needed.
     *
     * @param symbol Symbol to create the writer for.
     * @param block Lambda that accepts and works with the file.
     */
    fun useSymbolWriter(
        symbol: Symbol,
        block: (DartWriter) -> Unit
    ) {
        val writer: DartWriter = checkoutWriter(symbol)

        writer.dependencies.addAll(symbol.dependencies)
        writer.pushState()

        block(writer)
        writer.popState()
    }

    private fun checkoutWriter(
        symbol: Symbol,
    ): DartWriter {
        val namespace = DartNamespace.fromSymbol(symbol)
        libraries.add(namespace)

        val filename = "lib/" + namespace.libRelativePath
        val needsNewline = writers.containsKey(filename)
        val writer = writers.getOrPut(filename) {
            DartWriter(symbol)
        }

        if (needsNewline) {
            writer.write("\n")
        }
        return writer
    }
}

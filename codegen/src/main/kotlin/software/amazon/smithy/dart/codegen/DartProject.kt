package software.amazon.smithy.dart.codegen

import software.amazon.smithy.build.FileManifest
import software.amazon.smithy.codegen.core.SymbolDependency
import software.amazon.smithy.dart.codegen.core.snakeCase
import software.amazon.smithy.dart.codegen.model.DartNamespace
import software.amazon.smithy.dart.codegen.rendering.LibraryGenerator
import software.amazon.smithy.dart.codegen.rendering.PubspecGenerator

class DartProject(
    private val rootNamespace: String,
    private val manifest: FileManifest,
    val settings: DartSettings,
) {
    /**
     * Writes a pubspec to the file manifest with [dependencies].
     */
    fun writePubspec(dependencies: List<SymbolDependency>) {
        val generator = PubspecGenerator(settings, dependencies)
        val pubspec = generator.render()
        manifest.writeFile("pubspec.yaml", pubspec)
    }

    /**
     * Writes a library file for [namespace] which exports all of [exports].
     */
    fun writeLibraryFile(namespace: DartNamespace, exports: List<DartNamespace>) {
        val libraryFile = LibraryGenerator(namespace, exports).render()
        manifest.writeFile("lib/${namespace.filename}.dart", libraryFile)
    }
}
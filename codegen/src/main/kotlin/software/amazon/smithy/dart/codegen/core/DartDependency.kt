package software.amazon.smithy.dart.codegen.core

import com.sun.xml.internal.ws.util.VersionUtil.isValidVersion
import software.amazon.smithy.codegen.core.CodegenException
import software.amazon.smithy.codegen.core.SymbolDependency
import software.amazon.smithy.codegen.core.SymbolDependencyContainer
import software.amazon.smithy.dart.codegen.model.semver.Version
import software.amazon.smithy.dart.codegen.model.traits.SYNTHETIC_NAMESPACE

// root namespace for the runtime
const val RUNTIME_ROOT_NS = "aws.smithy"
const val NAMESPACE = "namespace"
const val SEMANTIC_VERSION = "semVer"

// TODO
val RUNTIME_VERSION: String = System.getProperty("smithy.dart.codegen.clientRuntimeVersion", "0.1.0")

private fun getDefaultRuntimeVersion(): String {
    // generated as part of the build, see smithy-dart/build.gradle.kts
    try {
        val version = object {}.javaClass.getResource("sdk-version.txt")?.readText() ?: throw CodegenException("sdk-version.txt does not exist")
        check(isValidVersion(version)) { "Version parsed from sdk-version.txt '$version' is not a valid version string" }
        return version
    } catch (ex: Exception) {
        throw CodegenException("failed to load sdk-version.txt which sets the default client-runtime version", ex)
    }
}

data class DartDependency(
    val namespace: String,
    val packageName: String? = null,
    val version: Version,
): SymbolDependencyContainer {
    companion object {
        val Smithy = DartDependency("smithy.smithy", "smithy", Version.parse(RUNTIME_VERSION))
        val Http = DartDependency("http.http", "http", Version.parse("^0.13.0"))
        val FixNum = DartDependency("fixnum.fixnum", "fixnum", Version.parse("^1.0.0"))
    }

    override fun getDependencies(): List<SymbolDependency> {
        val dependency = SymbolDependency.builder()
            .packageName(packageName)
            .version(version.toString())
            .putProperty(NAMESPACE, namespace)
            .putProperty(SEMANTIC_VERSION, version)
            .build()
        return listOf(dependency)
    }
}
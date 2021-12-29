package software.amazon.smithy.dart.codegen.model

import software.amazon.smithy.dart.codegen.model.semver.Version
import software.amazon.smithy.dart.codegen.model.semver.VersionConstraint

/**
 * A pubspec.yaml representation.
 */
data class Pubspec(
    val name: String,
    val version: Version = Version(0, 1, 0),
    val description: String? = null,
    val homepage: String? = null,
    val publishTo: String? = null,
    val repository: String? = null,
    val issueTracker: String? = null,
    val environment: Environment = Environment.default,
    val dependencies: List<Dependency> = listOf(),
)

/**
 * The Dart environment constraints.
 */
data class Environment(
    private val minSdkVersion: Version = Version(2, 12, 0)
) {
    val sdkConstraint = VersionConstraint(
        minSdkVersion,
        minSdkVersion.nextBreaking,
        includeMin = true,
        includeMax = false)

    companion object {
        val default = Environment()
    }
}

/**
 * A Dart package dependency.
 */
data class Dependency(
    val packageName: String,
    val version: VersionConstraint,
)
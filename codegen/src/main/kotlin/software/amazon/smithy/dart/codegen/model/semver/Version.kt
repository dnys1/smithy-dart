package software.amazon.smithy.dart.codegen.model.semver

import java.text.ParseException

/**
 * A version which follows Semantic Versioning.
 */
class Version(
    val major: Int,
    val minor: Int = 0,
    val patch: Int = 0,
) : VersionRange(), Comparable<Version> {
    companion object {
        fun parse(value: String): Version {
            val values = value.split(".").map { it.toIntOrNull() }
            return Version(
                values[0] ?: 0,
                values[1] ?: 0,
                values[2] ?: 0,
            )
        }
    }

    val nextBreaking: Version
        get() = if (major == 0) {
            Version(0, minor + 1, 0)
        } else {
            Version(major + 1, 0, 0)
        }

    override fun compareTo(other: Version): Int {
        if (major != other.major) return major.compareTo(other.major)
        if (minor != other.minor) return minor.compareTo(other.minor)
        if (patch != other.patch) return patch.compareTo(other.patch)
        return 0
    }

    override val min: Version
        get() = this
    override val max: Version
        get() = this
    override val includeMin: Boolean
        get() = true
    override val includeMax: Boolean
        get() = true

    override fun toString(): String = "$major.$minor.$patch"
}

/**
 * Represents a constraints based on minimum and maximum allowed versions.
 */
class VersionConstraint(
    override val min: Version? = null,
    override val max: Version? = null,
    override val includeMin: Boolean = false,
    override val includeMax: Boolean = false,
) : VersionRange() {
    @OptIn(ExperimentalStdlibApi::class)
    companion object {
        /**
         * A version constraint that allows all versions.
         */
        val any = VersionConstraint()

        fun parse(text: String): VersionConstraint {
            val originalText = text
            var text = text

            fun skipWhitespace() {
                text = text.trim()
            }

            skipWhitespace()

            // Handle the "any" constraint
            if (text == "any") return any

            // Try to parse and consume a version number.
            fun matchVersion(): Version? {
                val version = startVersion.matchAt(text, 0) ?: return null

                text = text.substring(version.range.last + 1)
                return Version.parse(version.value)
            }

            fun matchComparison(): VersionConstraint? {
                val comparison = startComparison.matchAt(text, 0)
                if (comparison == null) return null

                val op = comparison.value
                text = text.substring(comparison.range.last + 1)
                skipWhitespace()

                val version = matchVersion()
                if (version == null) {
                    throw ParseException(
                        "Expected version number after '${op}' in '$originalText', got '$text'.",
                        comparison.range.last + 1
                    )
                }

                return when (op) {
                    "<=" -> VersionConstraint(min = null, max = version, includeMax = true)
                    "<" -> VersionConstraint(min = null, max = version, includeMax = false)
                    ">=" -> VersionConstraint(min = version, includeMin = true)
                    ">" -> VersionConstraint(min = version, includeMin = false)
                    else -> throw Exception("Fallthrough")
                }
            }

            fun matchCompatibleWith(): VersionConstraint? {
                if (!text.startsWith(compatibleWithChar)) return null

                text = text.substring(1)
                skipWhitespace()

                val version = matchVersion()
                    ?: throw ParseException(
                        "Expected version number after '$compatibleWithChar' in '$originalText', got '$text'",
                        1,
                    )

                if (text.isNotEmpty()) {
                    throw ParseException(
                        "Cannot include other constraints with '$compatibleWithChar' constraint in '$originalText'",
                        1 + version.toString().length,
                    )
                }

                return VersionConstraint(
                    min = version,
                    max = version.nextBreaking,
                    includeMin = true,
                    includeMax = false,
                )
            }

            val compatibleWith = matchCompatibleWith()
            if (compatibleWith != null) return compatibleWith

            var min: Version? = null
            var includeMin = false
            var max: Version? = null
            var includeMax = false

            while (true) {
                skipWhitespace()

                if (text.isEmpty()) break

                val newRange: VersionRange = matchVersion() ?: matchComparison() ?: throw ParseException(
                    "Could not parse version '$originalText'. Unknown text at '$text'",
                    0,
                )

                if (newRange.min != null) {
                    if (min == null || newRange.min!! > min) {
                        min = newRange.min
                        includeMin = newRange.includeMin
                    } else if (newRange.min == min && !newRange.includeMin) {
                        includeMin = false
                    }
                }

                if (newRange.max != null) {
                    if (max == null || newRange.max!! < max) {
                        max = newRange.max
                        includeMax = newRange.includeMax
                    } else if (newRange.max == max && !newRange.includeMax) {
                        includeMax = false
                    }
                }
            }

            if (min == null && max == null) {
                throw ParseException("Cannot parse an empty string.", 0)
            }

            if (min != null && max != null) {
                if (min > max) throw Exception("min > max")
                if (min == max) {
                    if (includeMin && includeMax) return VersionConstraint(min = min, max = max)
                    throw Exception("bad constraint")
                }
            }

            return VersionConstraint(
                min = min,
                max = max,
                includeMin = includeMin,
                includeMax = includeMax,
            )
        }
    }
}
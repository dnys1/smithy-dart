package software.amazon.smithy.dart.codegen.model.semver

/**
 * Regex that matches a version number at the beginning of a string.
 */
val startVersion = Regex(
    """^""" + // Start at beginning
            """(\d+).(\d+).(\d+)""" + // Version number
            """(-([0-9A-Za-z-]+(\.[0-9A-Za-z-]+)*))?""" + // Pre-release
            """(\+([0-9A-Za-z-]+(\.[0-9A-Za-z-]+)*))?""") // Build

/**
 * Like [startVersion] but matches the entire string.
 */
val completeVersion = Regex("${startVersion.pattern}$")

/**
 * Parses a comparison operator ("<", ">", "<=", or ">=") at the beginning of a string.
 */
val startComparison = Regex("""^[<>]=?""")

/**
 * The "compatible with" operator.
 */
const val compatibleWithChar = '^'
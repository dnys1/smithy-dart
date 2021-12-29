package software.amazon.smithy.dart.codegen.model

import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.dart.codegen.core.capitalize
import software.amazon.smithy.dart.codegen.core.snakeCase

/**
 * The type of library a namespace represents.
 */
enum class LibraryType {
    /**
     * A model file - a service-enclosed shape of type union, struct, or enum.
     */
    Model,

    /**
     * A client file - the generated service client.
     */
    Client,

    /**
     * A service file - the top-level library consisting solely of exports for this service.
     */
    Service,
}

/**
 * A symbol namespace, but translated to Dart.
 */
class DartNamespace(
    packageName: String,
    serviceName: String,
    libraryType: LibraryType,
    filename: String,
) {
    companion object {
        /**
         * Parses the namespace from [symbol].
         */
        fun fromSymbol(symbol: Symbol): DartNamespace = fromNamespace(symbol.namespace)

        /**
         * Creates a namespace from a `.`-delimited [namespace].
         */
        fun fromNamespace(namespace: String): DartNamespace = fromNamespaceParts(*namespace.split(".").toTypedArray())

        /**
         * Creates a namespace from [parts].
         */
        fun fromNamespaceParts(vararg parts: String): DartNamespace = when (parts.size) {
            2 -> DartNamespace(parts[0], parts[1], LibraryType.Service, parts[1])
            3 -> DartNamespace(parts[0], parts[1], LibraryType.Client, parts[2])
            4 -> DartNamespace(parts[0], parts[1], LibraryType.valueOf(parts[2].capitalize()), parts[3])
            else -> throw Exception("Cannot parse path: ${parts.joinToString(".")}")
        }

        /**
         * Creates a namespace from [path] for [packageName].
         *
         * @param path: The `lib/`-relative path, ending with the filename.
         */
        fun fromPath(packageName: String, path: String): DartNamespace {
            var formattedPath = path
            if (path.endsWith(".dart")) {
                formattedPath = path.removeSuffix(".dart")
            }
            val pathParts = formattedPath.split("/")

            assert(pathParts.size == 1 || pathParts.first() == "src")

            return fromNamespaceParts(
                packageName,
                *pathParts.filterIndexed { index, part -> index > 0 || part != "src" }.toTypedArray()
            )
        }

        /**
         * Sanitizes [filename] by re-casing and removing file extensions.
         */
        private fun sanitize(filename: String) = filename.removeSuffix(".dart").snakeCase()
    }

    /**
     * The package name. This namespace refers to an external package when [packageName] != the package being generated.
     */
    val packageName: String

    /**
     * The name of the service or top-level import.
     */
    val serviceName: String

    /**
     * The library type of the file.
     */
    val libraryType: LibraryType

    /**
     * The basename of the file, without extension.
     */
    val filename: String

    init {
        if (libraryType == LibraryType.Service) {
            if (sanitize(serviceName) != sanitize(filename)) {
                throw Exception("Service name and filename do not match. LibraryType.Service is only for top-level library files.")
            }
        }
        this.packageName = sanitize(packageName)
        this.serviceName = sanitize(serviceName)
        this.libraryType = libraryType
        this.filename = sanitize(filename)
    }

    override fun equals(other: Any?): Boolean {
        return other is DartNamespace &&
                packageName == other.packageName &&
                serviceName == other.serviceName &&
                libraryType == other.libraryType &&
                filename == other.filename
    }

    override fun hashCode(): Int = toString().hashCode()

    /**
     * The `lib/`-relative path.
     */
    val libRelativePath: String
        get() = when (libraryType) {
            LibraryType.Service -> "${filename}.dart"
            LibraryType.Client -> "src/${serviceName}/${filename}.dart"
            LibraryType.Model -> "src/${serviceName}/model/${filename}.dart"
        }

    /**
     * Renders this as a namespace string.
     */
    fun asNamespace(): String = toString()

    override fun toString(): String = when (libraryType) {
        LibraryType.Model -> "${packageName}.${serviceName}.model.${filename}"
        LibraryType.Client -> "${packageName}.${serviceName}.${filename}"
        LibraryType.Service -> "${packageName}.${serviceName}"
    }
}
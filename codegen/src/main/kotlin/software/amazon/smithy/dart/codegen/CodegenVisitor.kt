package software.amazon.smithy.dart.codegen

import Codegen
import CodegenServiceGrpcKt
import codegenRequest
import io.grpc.ManagedChannel
import io.grpc.ManagedChannelBuilder
import kotlinx.coroutines.runBlocking
import software.amazon.smithy.build.FileManifest
import software.amazon.smithy.build.PluginContext
import software.amazon.smithy.dart.codegen.utils.toSnakeCase
import software.amazon.smithy.model.Model
import software.amazon.smithy.model.neighbor.Walker
import software.amazon.smithy.model.node.Node
import software.amazon.smithy.model.shapes.ModelSerializer
import software.amazon.smithy.model.shapes.ServiceShape
import software.amazon.smithy.model.shapes.ShapeId
import software.amazon.smithy.model.transform.ModelTransformer
import java.io.Closeable
import java.util.concurrent.TimeUnit
import java.util.logging.Logger

class CodegenVisitor(context: PluginContext) {
    companion object {
        /**
         * Create unique library names for each service if there are conflicting values. Note: This does not affect any
         * generated type names, only their library (file) names - which must be unique.
         *
         * This algorithm is not always guaranteed to succeed. While there is a uniqueness of namespace + service name
         * combo, there is not a uniqueness of snake-cased namespace + service name, e.g. com.foo#Bar and com#FooBar.
         */
        fun resolveServiceNames(serviceIds: List<ShapeId>): Map<ShapeId, String> {
            // Find conflicting service names by grouping shape IDs by name.
            val serviceNameConflicts = serviceIds.fold(mutableMapOf<String, MutableSet<ShapeId>>()) { map, serviceId ->
                val serviceName = serviceId.name.toSnakeCase()
                map.also {
                    it.putIfAbsent(serviceName, mutableSetOf())
                    it[serviceName]!!.add(serviceId)
                }
            }

            // Iterate progressively over conflict sets, prepending names with namespace parts (from right to left)
            // until all service names are unique.
            //
            // i.e. given `com.foo.bar#FooService` and `com.foo.baz#FooService`, this produces:
            // {
            //   "com.foo.bar#FooService": "bar_foo_service",
            //   "com.foo.baz#FooService": "baz_foo_service"
            // }
            //
            // which are the service names with the minimum length required to be uniquely identifiable. This seems true
            // to the intention of the namespace, while providing a mechanism for generating multiple services in one
            // package.
            while (serviceNameConflicts.any { (_, ids) -> ids.size > 1 }) {
                val newNames = mutableMapOf<String, MutableSet<ShapeId>>()
                serviceNameConflicts.forEach { (serviceName, conflictingIds) ->
                    // Do not prefix service names which are not conflicting
                    if (conflictingIds.size <= 1) {
                        return@forEach
                    }

                    // Prefix each service name with the last part of its namespace
                    conflictingIds.forEach { serviceId ->
                        val namespaceParts = serviceId.namespace.split(".")

                        // Fold the namespace parts in as prefixes until we have a unique name from the current one
                        val prefixedName = namespaceParts.foldRight(serviceId.name.toSnakeCase()) { part, acc ->
                            if (serviceName.endsWith(acc)) {
                                "${part}_$acc".toSnakeCase()
                            } else {
                                acc
                            }
                        }

                        if (serviceName == prefixedName) {
                            throw Exception("Could not resolve unique name for service ID: ${serviceId.namespace}#${serviceId.name}")
                        }

                        // Update the map with new names
                        newNames.let {
                            it.putIfAbsent(prefixedName, mutableSetOf())
                            it[prefixedName]!!.add(serviceId)
                        }
                    }
                    conflictingIds.clear()
                }

                // Merge in new names (avoids concurrent modification of `serviceNameConflicts`)
                newNames.forEach { (name, ids) ->
                    serviceNameConflicts.merge(name, ids) { curr, new ->
                        curr.plus(new).toMutableSet()
                    }
                }
            }

            return serviceNameConflicts.filter { (_, ids) -> ids.isNotEmpty() }.entries.associate {
                it.value.single() to it.key
            }
        }
    }

    private val logger = Logger.getLogger(javaClass.name)

    /**
     * The resolved semantic model.
     */
    private val model: Model

    /**
     * The Dart project settings, including pubspec info.
     */
    private val settings = DartSettings.from(context.model, context.settings)

    /**
     * The manifest of generated files.
     */
    private val fileManifest: FileManifest = context.fileManifest

    /**
     * All the services of the resolved model.
     */
    private val services: List<ServiceShape>

    init {
        model = context.model
        services = settings.services.map { settings.getService(model, it) }
    }

    fun execute() {
        // Activate server
        logger.info("Activating codegen server...")
        val activateCommand = ProcessBuilder().command(
                "dart",
                "pub",
                "global",
                "activate",
                "-spath",
                "/Users/nydillon/dev/smithy-dart-new/packages/smithy_codegen"
            ).start()
        activateCommand.waitFor(30, TimeUnit.SECONDS)
        if (activateCommand.exitValue() != 0) {
            val error = activateCommand.errorStream.readBytes().decodeToString()
            throw Exception("Error activating codegen server: $error")
        }
        logger.info("Successfully activated codegen server.")

        // Start server process
        logger.info("Starting codegen server...")
        val server = ProcessBuilder().command("dart", "pub", "global", "run", "smithy_codegen", "--server").start()
        val portStr = server.inputStream.bufferedReader().readLine()
        val port = portStr.toIntOrNull() ?: throw Exception("Could not parse port: $portStr")

        val channel =
            ManagedChannelBuilder.forAddress("localhost", port).idleTimeout(15, TimeUnit.SECONDS).usePlaintext().build()
        val client = RemoteCodegenClient(channel)

        val serviceNames = resolveServiceNames(services.map(ServiceShape::getId))

        // Send each service closure to the Dart code generator
        for (service in services) {
            logger.info("Generating Dart client for service $service")
            logger.info("Walking shapes from $service to find shapes to generate")

            val serviceName: String = serviceNames[service.id]!!
            val modelWithoutTraits = ModelTransformer.create().getModelWithoutTraitShapes(model)
            val serviceClosureShapes = Walker(modelWithoutTraits).walkShapes(service)
            val serviceClosureJson = Node.printJson(ModelSerializer.builder().shapeFilter {
                serviceClosureShapes.contains(it)
            }.traitFilter {
                false
            }.build().serialize(modelWithoutTraits))

            val result = runBlocking {
                client.codegen(settings.map, serviceName, serviceClosureJson)
            }
            if (!result.success) {
                throw Exception(result.error)
            }
            logger.info("Successfully generated client for $serviceName.")

            result.librariesList.forEach { library ->
                fileManifest.writeFile(library.metadata.path, library.definition)
            }

            if (!fileManifest.hasFile("pubspec.yaml")) {
                fileManifest.writeFile("pubspec.yaml", result.pubspec)
            }
        }

        server.destroy()
    }
}

/**
 * The project relative path.
 */
val Codegen.SmithyLibrary.path: String
    get() = when (libraryType) {
        Codegen.SmithyLibrary.LibraryType.SERVICE -> "lib/${filename}.dart"
        Codegen.SmithyLibrary.LibraryType.CLIENT -> "lib/src/${serviceName}/${filename}.dart"
        Codegen.SmithyLibrary.LibraryType.MODEL -> "lib/${serviceName}/model/${filename}.dart"
        else -> throw Exception("Unknown library type: $libraryType")
    }

/**
 * Client for connecting to Dart codegen server.
 */
class RemoteCodegenClient(private val channel: ManagedChannel) : Closeable {
    private val stub = CodegenServiceGrpcKt.CodegenServiceCoroutineStub(channel)

    suspend fun codegen(
        settings: Map<String, String>, serviceName: String, json: String
    ): Codegen.CodegenResponse {
        val request = codegenRequest {
            this.settings.putAll(settings)
            this.serviceName = serviceName
            this.json = json
        }
        return stub.codegen(request)
    }

    override fun close() {
        channel.shutdown().awaitTermination(5, TimeUnit.SECONDS)
    }
}
package software.amazon.smithy.dart.codegen

import software.amazon.smithy.codegen.core.CodegenException
import software.amazon.smithy.dart.codegen.utils.getOrNull
import software.amazon.smithy.dart.codegen.utils.toSnakeCase
import software.amazon.smithy.model.Model
import software.amazon.smithy.model.node.ObjectNode
import software.amazon.smithy.model.shapes.ServiceShape
import software.amazon.smithy.model.shapes.Shape
import software.amazon.smithy.model.shapes.ShapeId
import java.util.logging.Logger

// shapeId of service from which to generate an SDK
const val SERVICE = "service"
const val PACKAGE_NAME = "name"
const val PACKAGE_VERSION = "version"
const val PACKAGE_DESCRIPTION = "description"
const val PACKAGE_HOMEPAGE = "homepage"
const val PACKAGE_PUBLISH_TO = "publish_to"
const val PACKAGE_REPOSITORY = "repository"
const val PACKAGE_ISSUE_TRACKER = "issue_tracker"
const val PACKAGE_SDK_VERSION = "sdk_version"

/**
 * Settings for the Dart code generator.
 *
 * @param debug When enabled, no pubspec is produced and all shapes are written to a single file, even those
 *              not connected to a service.
 */
class DartSettings(
    val services: List<ShapeId>,
    val map: Map<String, String>,
) {
    /**
     * Get the corresponding [ServiceShape] from a model.
     * @return Returns the found `Service`
     * @throws CodegenException if the service is invalid or not found
     */
    fun getService(model: Model, service: ShapeId): ServiceShape = model
        .getShape(service)
        .orElseThrow { CodegenException("Service shape not found: $service") }
        .asServiceShape()
        .orElseThrow { CodegenException("Shape is not a service: $service") }

    companion object {
        private val logger: Logger = Logger.getLogger(DartSettings::class.java.name)

        /**
         * Create settings from a configuration object node.
         *
         * @param model Model to infer the service from (if not explicitly set in config)
         * @param config Config object to load
         * @throws software.amazon.smithy.model.node.ExpectationNotMetException
         * @return Returns the extracted settings
         */
        fun from(model: Model, config: ObjectNode): DartSettings {
            config.warnIfAdditionalProperties(
                listOf(
                    SERVICE,
                    PACKAGE_NAME,
                    PACKAGE_VERSION,
                    PACKAGE_DESCRIPTION,
                    PACKAGE_HOMEPAGE,
                    PACKAGE_PUBLISH_TO,
                    PACKAGE_REPOSITORY,
                    PACKAGE_SDK_VERSION,
                )
            )

            val serviceIds = config.getStringMember(SERVICE)
                .map { listOf(it.expectShapeId()) }
                .orElseGet { gatherServices(model) }

            val packageName = config.expectStringMember(PACKAGE_NAME).value.toSnakeCase()
            val version = config.expectStringMember(PACKAGE_VERSION).value
            val desc = config.getStringMemberOrDefault(
                PACKAGE_DESCRIPTION,
                "${packageName.replaceFirstChar { c -> c.uppercaseChar() }} models"
            )
            val homepage = config.getStringMember(PACKAGE_HOMEPAGE).getOrNull()?.value ?: ""
            val publishTo = config.getStringMember(PACKAGE_PUBLISH_TO).getOrNull()?.value ?: ""
            val repository = config.getStringMember(PACKAGE_REPOSITORY).getOrNull()?.value ?: ""
            val issueTracker = config.getStringMember(PACKAGE_ISSUE_TRACKER).getOrNull()?.value ?: ""
            val sdkVersion = config.getStringMember(PACKAGE_SDK_VERSION).getOrNull()?.value ?: ""

            return DartSettings(
                serviceIds,
                mapOf(
                    PACKAGE_NAME to packageName,
                    PACKAGE_VERSION to version,
                    PACKAGE_DESCRIPTION to desc,
                    PACKAGE_HOMEPAGE to homepage,
                    PACKAGE_PUBLISH_TO to publishTo,
                    PACKAGE_REPOSITORY to repository,
                    PACKAGE_ISSUE_TRACKER to issueTracker,
                    PACKAGE_SDK_VERSION to sdkVersion,
                ),
            )
        }

        /**
         * Gathers the services to generate from a model.
         */
        private fun gatherServices(model: Model): List<ShapeId> {
            val services = model.shapes(ServiceShape::class.java)
                .map(Shape::getId)
                .sorted()
                .toList()

            if (services.isEmpty()) {
                logger.severe(model.toString())
                throw CodegenException(
                    "Cannot infer a service to generate because the model does not " +
                            "contain any service shapes"
                )
            }

            // TODO: Other implementations throw here for size > 1. I cannot find this in the spec - what gives?
            logger.info("Found ${services.size} services to generate: $${services.joinToString("\n") { it.toString() }}")
            return services
        }
    }
}
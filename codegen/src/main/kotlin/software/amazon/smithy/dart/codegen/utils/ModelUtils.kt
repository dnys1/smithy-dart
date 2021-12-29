package software.amazon.smithy.dart.codegen.utils

import software.amazon.smithy.model.Model
import software.amazon.smithy.model.shapes.SmithyIdlModelSerializer

/**
 * Generate Smithy IDL from a model instance.
 *
 * NOTE: this is used for debugging / unit test generation, please don't remove.
 */
internal fun Model.toSmithyIDL(): String {
    val builtInModelIds = setOf("smithy.test.smithy", "aws.auth.smithy", "aws.protocols.smithy", "aws.api.smithy")
    val ms: SmithyIdlModelSerializer = SmithyIdlModelSerializer.builder().build()
    val node = ms.serialize(this)

    return node.filterNot { builtInModelIds.contains(it.key.toString()) }.values.first()
}
package software.amazon.smithy.dart.codegen

import software.amazon.smithy.build.PluginContext
import software.amazon.smithy.build.SmithyBuildPlugin
import software.amazon.smithy.codegen.core.SymbolProvider
import software.amazon.smithy.dart.codegen.core.DartSymbolProvider
import software.amazon.smithy.model.Model
import software.amazon.smithy.model.shapes.ShapeId

class DartCodegenPlugin : SmithyBuildPlugin {
    override fun getName(): String = "dart-codegen"

    override fun execute(context: PluginContext?) {
        CodegenVisitor(context!!).execute()
    }

    companion object {
        /**
         * Creates a Dart symbol provider.
         * @param model The model to generate symbols for
         * @param packageName The name of the package
         * @param serviceId The service shape ID
         * @param serviceName Override of the default service name, used for disambiguating services with the same name which belong to different namespaces.
         * @return Returns the created provider
         */
        fun createSymbolProvider(
            model: Model,
            packageName: String,
            serviceId: ShapeId? = null,
            serviceName: String? = null
        ): SymbolProvider =
            DartSymbolProvider(model, packageName, serviceId, serviceName)
    }
}
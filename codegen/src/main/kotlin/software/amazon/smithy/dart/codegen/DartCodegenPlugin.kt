package software.amazon.smithy.dart.codegen

import software.amazon.smithy.build.PluginContext
import software.amazon.smithy.build.SmithyBuildPlugin

class DartCodegenPlugin : SmithyBuildPlugin {
    override fun getName(): String = "dart-codegen"

    override fun execute(context: PluginContext?) {
        CodegenVisitor(context!!).execute()
    }
}
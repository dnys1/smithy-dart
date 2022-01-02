rootProject.name = "idl-example"

pluginManagement {
    repositories {
        mavenCentral()
        maven("https://plugins.gradle.org/m2/")
        google()
        gradlePluginPortal()
    }

    plugins {
        val kotlinVersion: String by settings
        val smithyGradleVersion: String by settings
        val protobufGradleVersion: String by settings
        id("org.jetbrains.kotlin.jvm") version kotlinVersion
        id("software.amazon.smithy") version smithyGradleVersion
        id("com.google.protobuf") version protobufGradleVersion
    }
}

include(":codegen")
include(":stub")
include(":protos")
project(":codegen").projectDir = file("../../codegen")
project(":stub").projectDir = file("../../codegen/stub")
project(":protos").projectDir = file("../../codegen/protos")
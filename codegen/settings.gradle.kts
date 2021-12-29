pluginManagement {
    repositories {
        mavenCentral()
        maven("https://plugins.gradle.org/m2/")
        google()
        gradlePluginPortal()
    }

    // configure default plugin versions
    plugins {
        val kotlinVersion: String by settings
        val smithyGradleVersion: String by settings
        val protobufGradleVersion: String by settings
        id("org.jetbrains.kotlin.jvm") version kotlinVersion
        id("software.amazon.smithy") version smithyGradleVersion
        id("com.google.protobuf") version protobufGradleVersion
    }
}

rootProject.name = "smithy-dart"
include("protos")
include("stub")

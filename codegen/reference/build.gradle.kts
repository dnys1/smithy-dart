import software.amazon.smithy.gradle.tasks.SmithyBuild

plugins {
    java
    id("software.amazon.smithy")
}

group = "software.amazon.smithy.dart"
version = "0.1.0-SNAPSHOT"
val smithyVersion: String by rootProject

// Disable building a JAR when generating models
tasks["smithyBuildJar"].enabled = false

allprojects {
    repositories {
        mavenLocal()
        mavenCentral()
        google()
    }
}

buildscript {
    repositories {
        mavenLocal()
        mavenCentral()
        google()
    }

    val smithyVersion: String by rootProject
    dependencies {
        classpath("software.amazon.smithy:smithy-cli:$smithyVersion")
    }
}

dependencies {
    implementation("software.amazon.smithy.kotlin:smithy-kotlin-codegen:0.7.4-beta")
    implementation("software.amazon.smithy.kotlin:smithy-aws-kotlin-codegen:0.9.5-beta")
    implementation("software.amazon.smithy:smithy-aws-traits:[1.0, 2.0[")
    implementation("software.amazon.smithy:smithy-protocol-test-traits:[1.0, 2.0[")
}

// Setup the codegen task to re-create SDK from source models
val codegen = tasks.create<SmithyBuild>("codegen") {
    sourceSets.main.configure {
        classpath = runtimeClasspath
    }
}

// Moves generated files from `build` to respective language directories
val moveGenerated = tasks.create("moveGenerated") {
    val generatedOutputDir = codegen.outputDirectory.resolve("source")
    val outputDir = file("generated")
    for (plugin in listOf("kotlin")) {
        val pluginDir = generatedOutputDir.resolve("$plugin-codegen")
        val pluginOutputDir = outputDir.resolve(plugin)
        pluginDir.copyRecursively(pluginOutputDir, true)
    }
}

codegen.finalizedBy(moveGenerated)
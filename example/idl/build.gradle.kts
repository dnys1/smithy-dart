import software.amazon.smithy.gradle.tasks.SmithyBuild

plugins {
    java
    id("software.amazon.smithy")
}

group = "org.example"
version = "1.0-SNAPSHOT"
val smithyVersion: String by project

// Disable building a JAR when generating models
tasks["smithyBuildJar"].enabled = false

allprojects {
    repositories {
        mavenCentral()
        google()
    }
}

buildscript {
    repositories {
        mavenCentral()
        google()
    }

    val smithyVersion: String by project
    dependencies {
        classpath("software.amazon.smithy:smithy-cli:$smithyVersion")
    }
}

dependencies {
    implementation(project(":codegen"))
    implementation("software.amazon.smithy:smithy-aws-traits:$smithyVersion")
    implementation("software.amazon.smithy:smithy-protocol-test-traits:$smithyVersion")
}

// Setup the codegen task to re-create SDK from source models
val codegen = tasks.create<SmithyBuild>("codegen") {
    sourceSets.main.configure {
        classpath = runtimeClasspath
    }
    outputDirectory = file("generated")
}
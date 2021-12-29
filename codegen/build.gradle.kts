/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

import software.amazon.smithy.gradle.tasks.SmithyBuild

description = "Generates Dart code from Smithy models"
extra["displayName"] = "Smithy :: Dart :: Codegen"
extra["moduleName"] = "software.amazon.smithy.dart.codegen"

val sdkVersion: String by project
group = "software.amazon.smithy.dart"
version = sdkVersion

val smithyVersion: String by project
val kotlinVersion: String by project
val junitVersion: String by project
val kotestVersion: String by project
val grpcVersion: String by project
val grpcKotlinVersion: String by project
val protobufVersion: String by project

// Disable building a JAR when generating models
tasks["smithyBuildJar"].enabled = false

plugins {
    kotlin("jvm")
    java
    id("software.amazon.smithy")
    `maven-publish`
}

buildscript {
    repositories {
        mavenCentral()
        google()
    }

    val kotlinVersion: String by project
    val smithyVersion: String by project
    dependencies {
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlinVersion")
        classpath("software.amazon.smithy:smithy-cli:$smithyVersion")
    }
}

allprojects {
    repositories {
        mavenLocal()
        mavenCentral()
        google()
    }
}

dependencies {
    implementation(kotlin("stdlib-jdk8"))
    api("software.amazon.smithy:smithy-codegen-core:$smithyVersion")
    api("software.amazon.smithy:smithy-waiters:$smithyVersion")
    implementation("software.amazon.smithy:smithy-aws-traits:$smithyVersion")
    implementation("software.amazon.smithy:smithy-protocol-test-traits:$smithyVersion")

    // gRPC/Protobuf
    implementation(project(":stub"))
    runtimeOnly("io.grpc:grpc-netty:$grpcVersion")

    testImplementation("org.junit.jupiter:junit-jupiter:$junitVersion")
    testImplementation("io.kotest:kotest-assertions-core-jvm:$kotestVersion")
    testImplementation("org.jetbrains.kotlin:kotlin-test:$kotlinVersion")
    testImplementation("org.jetbrains.kotlin:kotlin-test-junit5:$kotlinVersion")
}

java {
    sourceCompatibility = JavaVersion.VERSION_1_8
    targetCompatibility = JavaVersion.VERSION_1_8
}

tasks["assemble"].dependsOn(":stub:generateProto")

tasks.compileKotlin {
    kotlinOptions.jvmTarget = "1.8"
    kotlinOptions.freeCompilerArgs = listOf("-Xopt-in=kotlin.RequiresOptIn")
}

tasks.compileTestKotlin {
    kotlinOptions.jvmTarget = "1.8"
}

// Reusable license copySpec
val licenseSpec = copySpec {
    from("${project.rootDir}/LICENSE")
    from("${project.rootDir}/NOTICE")
}

// Configure jars to include license related info
tasks.jar {
    metaInf.with(licenseSpec)
    inputs.property("moduleName", project.name)
    manifest {
        attributes["Automatic-Module-Name"] = project.name
    }
}

tasks.test {
    useJUnitPlatform()
    testLogging {
        events("passed", "skipped", "failed")
        showStandardStreams = true
    }
}

val sourcesJar by tasks.creating(Jar::class) {
    group = "publishing"
    description = "Assembles Kotlin sources jar"
    classifier = "sources"
    from(sourceSets.getByName("main").allSource)
}

publishing {
    publications {
        create<MavenPublication>("codegen") {
            from(components["java"])
            artifact(sourcesJar)
        }
    }
}

// Setup the updateGoldens task to re-create goldens from source models
val goldensOutput = file("src/test/resources/generated")
val updateGoldens = tasks.create<SmithyBuild>("updateGoldens") {
    dependsOn("compileKotlin")
    sourceSets.main.configure {
        classpath = runtimeClasspath
    }
    models = files("src/test/resources/models/structure_generator")
    outputDirectory = goldensOutput
}

val formatGoldens = tasks.create("formatGoldens") {
    doLast {
        val path = "${goldensOutput.absolutePath}/goldens/dart-codegen"
        val status = ProcessBuilder()
            .command("dart", "format", path)
            .start()
            .waitFor()

        if (status != 0) {
            throw Exception("Could not format models at $path: $status")
        }
    }
}

updateGoldens.finalizedBy(formatGoldens)
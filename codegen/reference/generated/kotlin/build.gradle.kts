plugins {
    kotlin("jvm") version "1.5.31"
}

repositories {
    mavenLocal()
    mavenCentral()
}

dependencies {
    implementation(kotlin("stdlib"))
    implementation("aws.sdk.kotlin:aws-http:0.9.5-beta")
    implementation("aws.sdk.kotlin:aws-json-protocols:0.9.5-beta")
    implementation("aws.smithy.kotlin:http:0.7.4-beta")
    implementation("aws.sdk.kotlin:http-client-engine-crt:0.9.5-beta")
    implementation("aws.smithy.kotlin:serde:0.7.4-beta")
    implementation("aws.smithy.kotlin:serde-json:0.7.4-beta")
    implementation("aws.smithy.kotlin:utils:0.7.4-beta")
    api("aws.sdk.kotlin:aws-config:0.9.5-beta")
    api("aws.sdk.kotlin:aws-core:0.9.5-beta")
    api("aws.sdk.kotlin:aws-endpoint:0.9.5-beta")
    api("aws.sdk.kotlin:aws-types:0.9.5-beta")
    api("aws.smithy.kotlin:runtime-core:0.7.4-beta")
}

val optinAnnotations = listOf(
    "aws.smithy.kotlin.runtime.util.InternalApi",
    "aws.sdk.kotlin.runtime.InternalSdkApi"
)
kotlin.sourceSets.all {
    optinAnnotations.forEach { languageSettings.optIn(it) }
}

tasks.test {
    useJUnitPlatform()
    testLogging {
        events("passed", "skipped", "failed")
        showStandardStreams = true
    }
}

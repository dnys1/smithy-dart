// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test

import aws.sdk.kotlin.runtime.auth.credentials.CredentialsProvider
import aws.sdk.kotlin.runtime.auth.credentials.DefaultChainCredentialsProvider
import aws.sdk.kotlin.runtime.client.AwsClientConfig
import aws.sdk.kotlin.runtime.config.AwsClientConfigLoadOptions
import aws.sdk.kotlin.runtime.config.fromEnvironment
import aws.sdk.kotlin.runtime.endpoint.AwsEndpointResolver
import aws.smithy.kotlin.runtime.SdkClient
import aws.smithy.kotlin.runtime.client.SdkLogMode
import aws.smithy.kotlin.runtime.config.SdkClientConfig
import aws.smithy.kotlin.runtime.http.config.HttpClientConfig
import aws.smithy.kotlin.runtime.http.engine.HttpClientEngine
import aws.smithy.kotlin.runtime.http.operation.EndpointResolver
import aws.smithy.kotlin.runtime.retries.RetryStrategy
import aws.smithy.kotlin.runtime.retries.impl.ExponentialBackoffWithJitter
import aws.smithy.kotlin.runtime.retries.impl.ExponentialBackoffWithJitterOptions
import aws.smithy.kotlin.runtime.retries.impl.StandardRetryStrategy
import aws.smithy.kotlin.runtime.retries.impl.StandardRetryStrategyOptions
import aws.smithy.kotlin.runtime.retries.impl.StandardRetryTokenBucket
import aws.smithy.kotlin.runtime.retries.impl.StandardRetryTokenBucketOptions
import com.test.internal.DefaultEndpointResolver
import com.test.model.*

interface ExampleClient : SdkClient {

    override val serviceName: String
        get() = "Example"
    /**
     * ExampleClient's configuration
     */
    val config: Config

    companion object {
        operator fun invoke(sharedConfig: AwsClientConfig? = null, block: Config.Builder.() -> Unit = {}): ExampleClient {
            val config = Config.Builder().apply {
                region = sharedConfig?.region
                credentialsProvider = sharedConfig?.credentialsProvider
                sdkLogMode = sharedConfig?.sdkLogMode ?: SdkLogMode.Default
            }.apply(block).build()
            return DefaultExampleClient(config)
        }

        operator fun invoke(config: Config): ExampleClient = DefaultExampleClient(config)

        /**
         * Construct a [ExampleClient] by resolving the configuration from the current environment.
         * NOTE: If you are using multiple AWS service clients you may wish to share the configuration among them
         * by constructing a [aws.sdk.kotlin.runtime.client.AwsClientConfig] and passing it to each client at construction.
         */
        suspend fun fromEnvironment(block: AwsClientConfigLoadOptions.() -> Unit = {}): ExampleClient {
            val sharedConfig = AwsClientConfig.fromEnvironment(block)
            return ExampleClient(sharedConfig)
        }
    }

    class Config private constructor(builder: Builder): AwsClientConfig, HttpClientConfig, SdkClientConfig {
        override val credentialsProvider: CredentialsProvider = builder.credentialsProvider ?: DefaultChainCredentialsProvider()
        val endpointResolver: AwsEndpointResolver = builder.endpointResolver ?: DefaultEndpointResolver()
        override val httpClientEngine: HttpClientEngine? = builder.httpClientEngine
        override val region: String = requireNotNull(builder.region) { "region is a required configuration property" }
        val retryStrategy: RetryStrategy = run {
            val strategyOptions = StandardRetryStrategyOptions.Default
            val tokenBucket = StandardRetryTokenBucket(StandardRetryTokenBucketOptions.Default)
            val delayer = ExponentialBackoffWithJitter(ExponentialBackoffWithJitterOptions.Default)
            StandardRetryStrategy(strategyOptions, tokenBucket, delayer)
        }
        override val sdkLogMode: SdkLogMode = builder.sdkLogMode
        companion object {
            inline operator fun invoke(block: Builder.() -> kotlin.Unit): Config = Builder().apply(block).build()
        }

        class Builder {
            /**
             * The AWS credentials provider to use for authenticating requests. If not provided a
             * [aws.sdk.kotlin.runtime.auth.credentials.DefaultChainCredentialsProvider] instance will be used.
             */
            var credentialsProvider: CredentialsProvider? = null
            /**
             * Determines the endpoint (hostname) to make requests to. When not provided a default
             * resolver is configured automatically. This is an advanced client option.
             */
            var endpointResolver: AwsEndpointResolver? = null
            /**
             * Override the default HTTP client engine used to make SDK requests (e.g. configure proxy behavior, timeouts, concurrency, etc)
             */
            var httpClientEngine: HttpClientEngine? = null
            /**
             * AWS region to make requests to
             */
            var region: String? = null
            /**
             * Configure events that will be logged. By default clients will not output
             * raw requests or responses. Use this setting to opt-in to additional debug logging.
             * This can be used to configure logging of requests, responses, retries, etc of SDK clients.
             * **NOTE**: Logging of raw requests or responses may leak sensitive information! It may also have
             * performance considerations when dumping the request/response body. This is primarily a tool for
             * debug purposes.
             */
            var sdkLogMode: SdkLogMode = SdkLogMode.Default

            @PublishedApi
            internal fun build(): Config = Config(this)
        }
    }

    suspend fun blobInput(input: BlobInputRequest): BlobInputResponse

    suspend fun blobInput(block: BlobInputRequest.Builder.() -> Unit) = blobInput(BlobInputRequest.Builder().apply(block).build())

    suspend fun constantQueryString(input: ConstantQueryStringRequest): ConstantQueryStringResponse

    suspend fun constantQueryString(block: ConstantQueryStringRequest.Builder.() -> Unit) = constantQueryString(ConstantQueryStringRequest.Builder().apply(block).build())

    suspend fun duplicateInputTest(input: DuplicateInputTestRequest): DuplicateInputTestResponse

    suspend fun duplicateInputTest(block: DuplicateInputTestRequest.Builder.() -> Unit) = duplicateInputTest(DuplicateInputTestRequest.Builder().apply(block).build())

    suspend fun enumInput(input: EnumInputRequest): EnumInputResponse

    suspend fun enumInput(block: EnumInputRequest.Builder.() -> Unit) = enumInput(EnumInputRequest.Builder().apply(block).build())

    suspend fun explicitBlob(input: ExplicitBlobRequest): ExplicitBlobResponse

    suspend fun explicitBlob(block: ExplicitBlobRequest.Builder.() -> Unit) = explicitBlob(ExplicitBlobRequest.Builder().apply(block).build())

    suspend fun <T> explicitBlobStream(input: ExplicitBlobStreamRequest, block: suspend (ExplicitBlobStreamResponse) -> T): T

    suspend fun explicitString(input: ExplicitStringRequest): ExplicitStringResponse

    suspend fun explicitString(block: ExplicitStringRequest.Builder.() -> Unit) = explicitString(ExplicitStringRequest.Builder().apply(block).build())

    suspend fun explicitStruct(input: ExplicitStructRequest): ExplicitStructResponse

    suspend fun explicitStruct(block: ExplicitStructRequest.Builder.() -> Unit) = explicitStruct(ExplicitStructRequest.Builder().apply(block).build())

    suspend fun listInput(input: ListInputRequest): ListInputResponse

    suspend fun listInput(block: ListInputRequest.Builder.() -> Unit) = listInput(ListInputRequest.Builder().apply(block).build())

    suspend fun mapInput(input: MapInputRequest): MapInputResponse

    suspend fun mapInput(block: MapInputRequest.Builder.() -> Unit) = mapInput(MapInputRequest.Builder().apply(block).build())

    suspend fun prefixHeaders(input: PrefixHeadersRequest): PrefixHeadersResponse

    suspend fun prefixHeaders(block: PrefixHeadersRequest.Builder.() -> Unit) = prefixHeaders(PrefixHeadersRequest.Builder().apply(block).build())

    suspend fun smokeTest(input: SmokeTestRequest): SmokeTestResponse

    suspend fun smokeTest(block: SmokeTestRequest.Builder.() -> Unit) = smokeTest(SmokeTestRequest.Builder().apply(block).build())

    suspend fun timestampInput(input: TimestampInputRequest): TimestampInputResponse

    suspend fun timestampInput(block: TimestampInputRequest.Builder.() -> Unit) = timestampInput(TimestampInputRequest.Builder().apply(block).build())

    suspend fun unionAggregateInput(input: UnionAggregateInputRequest): UnionAggregateInputResponse

    suspend fun unionAggregateInput(block: UnionAggregateInputRequest.Builder.() -> Unit) = unionAggregateInput(UnionAggregateInputRequest.Builder().apply(block).build())

    suspend fun unionAggregateOutput(input: UnionAggregateOutputRequest): UnionAggregateOutputResponse

    suspend fun unionAggregateOutput(block: UnionAggregateOutputRequest.Builder.() -> Unit) = unionAggregateOutput(UnionAggregateOutputRequest.Builder().apply(block).build())

    suspend fun unionInput(input: UnionInputRequest): UnionInputResponse

    suspend fun unionInput(block: UnionInputRequest.Builder.() -> Unit) = unionInput(UnionInputRequest.Builder().apply(block).build())

    suspend fun unionOutput(input: UnionOutputRequest): UnionOutputResponse

    suspend fun unionOutput(block: UnionOutputRequest.Builder.() -> Unit) = unionOutput(UnionOutputRequest.Builder().apply(block).build())
}

// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test.model

import aws.smithy.kotlin.runtime.ServiceErrorMetadata

class SmokeTestError private constructor(builder: Builder) : ExampleException() {

    val nested: com.test.model.NestedErrorData? = builder.nested

    init {
        sdkErrorMetadata.attributes[ServiceErrorMetadata.ErrorType] = ErrorType.Client
    }

    companion object {
        operator fun invoke(block: Builder.() -> kotlin.Unit): com.test.model.SmokeTestError = Builder().apply(block).build()
    }

    override fun toString(): kotlin.String = buildString {
        append("SmokeTestError(")
        append("nested=$nested)")
    }

    override fun hashCode(): kotlin.Int {
        var result = nested?.hashCode() ?: 0
        return result
    }

    override fun equals(other: kotlin.Any?): kotlin.Boolean {
        if (this === other) return true
        if (other == null || this::class != other::class) return false

        other as SmokeTestError

        if (nested != other.nested) return false

        return true
    }

    inline fun copy(block: Builder.() -> kotlin.Unit = {}): com.test.model.SmokeTestError = Builder(this).apply(block).build()

    class Builder {
        var nested: com.test.model.NestedErrorData? = null

        internal constructor()
        @PublishedApi
        internal constructor(x: com.test.model.SmokeTestError) : this() {
            this.nested = x.nested
        }

        @PublishedApi
        internal fun build(): com.test.model.SmokeTestError = SmokeTestError(this)

        /**
         * construct an [com.test.model.NestedErrorData] inside the given [block]
         */
        fun nested(block: com.test.model.NestedErrorData.Builder.() -> kotlin.Unit) {
            this.nested = com.test.model.NestedErrorData.invoke(block)
        }
    }
}

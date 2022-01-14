// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test.model

import aws.smithy.kotlin.runtime.content.ByteStream

class ExplicitBlobStreamResponse private constructor(builder: Builder) {
    val payload1: aws.smithy.kotlin.runtime.content.ByteStream? = builder.payload1

    companion object {
        operator fun invoke(block: Builder.() -> kotlin.Unit): com.test.model.ExplicitBlobStreamResponse = Builder().apply(block).build()
    }

    override fun toString(): kotlin.String = buildString {
        append("ExplicitBlobStreamResponse(")
        append("payload1=$payload1)")
    }

    override fun hashCode(): kotlin.Int {
        var result = payload1?.hashCode() ?: 0
        return result
    }

    override fun equals(other: kotlin.Any?): kotlin.Boolean {
        if (this === other) return true
        if (other == null || this::class != other::class) return false

        other as ExplicitBlobStreamResponse

        if (payload1 != other.payload1) return false

        return true
    }

    inline fun copy(block: Builder.() -> kotlin.Unit = {}): com.test.model.ExplicitBlobStreamResponse = Builder(this).apply(block).build()

    class Builder {
        var payload1: aws.smithy.kotlin.runtime.content.ByteStream? = null

        internal constructor()
        @PublishedApi
        internal constructor(x: com.test.model.ExplicitBlobStreamResponse) : this() {
            this.payload1 = x.payload1
        }

        @PublishedApi
        internal fun build(): com.test.model.ExplicitBlobStreamResponse = ExplicitBlobStreamResponse(this)
    }
}

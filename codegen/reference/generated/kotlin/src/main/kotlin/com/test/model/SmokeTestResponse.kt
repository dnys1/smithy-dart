// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test.model

import aws.smithy.kotlin.runtime.time.Instant

class SmokeTestResponse private constructor(builder: Builder) {
    val intHeader: kotlin.Int? = builder.intHeader
    val payload1: kotlin.String? = builder.payload1
    val payload2: kotlin.Int? = builder.payload2
    val payload3: com.test.model.Nested? = builder.payload3
    val payload4: aws.smithy.kotlin.runtime.time.Instant? = builder.payload4
    val strHeader: kotlin.String? = builder.strHeader
    val tsListHeader: List<Instant>? = builder.tsListHeader

    companion object {
        operator fun invoke(block: Builder.() -> kotlin.Unit): com.test.model.SmokeTestResponse = Builder().apply(block).build()
    }

    override fun toString(): kotlin.String = buildString {
        append("SmokeTestResponse(")
        append("intHeader=$intHeader,")
        append("payload1=$payload1,")
        append("payload2=$payload2,")
        append("payload3=$payload3,")
        append("payload4=$payload4,")
        append("strHeader=$strHeader,")
        append("tsListHeader=$tsListHeader)")
    }

    override fun hashCode(): kotlin.Int {
        var result = intHeader ?: 0
        result = 31 * result + (payload1?.hashCode() ?: 0)
        result = 31 * result + (payload2 ?: 0)
        result = 31 * result + (payload3?.hashCode() ?: 0)
        result = 31 * result + (payload4?.hashCode() ?: 0)
        result = 31 * result + (strHeader?.hashCode() ?: 0)
        result = 31 * result + (tsListHeader?.hashCode() ?: 0)
        return result
    }

    override fun equals(other: kotlin.Any?): kotlin.Boolean {
        if (this === other) return true
        if (other == null || this::class != other::class) return false

        other as SmokeTestResponse

        if (intHeader != other.intHeader) return false
        if (payload1 != other.payload1) return false
        if (payload2 != other.payload2) return false
        if (payload3 != other.payload3) return false
        if (payload4 != other.payload4) return false
        if (strHeader != other.strHeader) return false
        if (tsListHeader != other.tsListHeader) return false

        return true
    }

    inline fun copy(block: Builder.() -> kotlin.Unit = {}): com.test.model.SmokeTestResponse = Builder(this).apply(block).build()

    class Builder {
        var intHeader: kotlin.Int? = null
        var payload1: kotlin.String? = null
        var payload2: kotlin.Int? = null
        var payload3: com.test.model.Nested? = null
        var payload4: aws.smithy.kotlin.runtime.time.Instant? = null
        var strHeader: kotlin.String? = null
        var tsListHeader: List<Instant>? = null

        internal constructor()
        @PublishedApi
        internal constructor(x: com.test.model.SmokeTestResponse) : this() {
            this.intHeader = x.intHeader
            this.payload1 = x.payload1
            this.payload2 = x.payload2
            this.payload3 = x.payload3
            this.payload4 = x.payload4
            this.strHeader = x.strHeader
            this.tsListHeader = x.tsListHeader
        }

        @PublishedApi
        internal fun build(): com.test.model.SmokeTestResponse = SmokeTestResponse(this)

        /**
         * construct an [com.test.model.Nested] inside the given [block]
         */
        fun payload3(block: com.test.model.Nested.Builder.() -> kotlin.Unit) {
            this.payload3 = com.test.model.Nested.invoke(block)
        }
    }
}

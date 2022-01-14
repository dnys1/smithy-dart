// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test.model



class PrefixHeadersRequest private constructor(builder: Builder) {
    val member1: Map<String, String>? = builder.member1

    companion object {
        operator fun invoke(block: Builder.() -> kotlin.Unit): com.test.model.PrefixHeadersRequest = Builder().apply(block).build()
    }

    override fun toString(): kotlin.String = buildString {
        append("PrefixHeadersRequest(")
        append("member1=$member1)")
    }

    override fun hashCode(): kotlin.Int {
        var result = member1?.hashCode() ?: 0
        return result
    }

    override fun equals(other: kotlin.Any?): kotlin.Boolean {
        if (this === other) return true
        if (other == null || this::class != other::class) return false

        other as PrefixHeadersRequest

        if (member1 != other.member1) return false

        return true
    }

    inline fun copy(block: Builder.() -> kotlin.Unit = {}): com.test.model.PrefixHeadersRequest = Builder(this).apply(block).build()

    class Builder {
        var member1: Map<String, String>? = null

        internal constructor()
        @PublishedApi
        internal constructor(x: com.test.model.PrefixHeadersRequest) : this() {
            this.member1 = x.member1
        }

        @PublishedApi
        internal fun build(): com.test.model.PrefixHeadersRequest = PrefixHeadersRequest(this)
    }
}

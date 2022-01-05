// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test.model



class UnionOutputResponse private constructor(builder: Builder) {
    val payloadUnion: com.test.model.MyUnion? = builder.payloadUnion

    companion object {
        operator fun invoke(block: Builder.() -> kotlin.Unit): com.test.model.UnionOutputResponse = Builder().apply(block).build()
    }

    override fun toString(): kotlin.String = buildString {
        append("UnionOutputResponse(")
        append("payloadUnion=$payloadUnion)")
    }

    override fun hashCode(): kotlin.Int {
        var result = payloadUnion?.hashCode() ?: 0
        return result
    }

    override fun equals(other: kotlin.Any?): kotlin.Boolean {
        if (this === other) return true
        if (other == null || this::class != other::class) return false

        other as UnionOutputResponse

        if (payloadUnion != other.payloadUnion) return false

        return true
    }

    inline fun copy(block: Builder.() -> kotlin.Unit = {}): com.test.model.UnionOutputResponse = Builder(this).apply(block).build()

    class Builder {
        var payloadUnion: com.test.model.MyUnion? = null

        internal constructor()
        @PublishedApi
        internal constructor(x: com.test.model.UnionOutputResponse) : this() {
            this.payloadUnion = x.payloadUnion
        }

        @PublishedApi
        internal fun build(): com.test.model.UnionOutputResponse = UnionOutputResponse(this)
    }
}

// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test.model



class ExplicitStructResponse private constructor(builder: Builder) {
    val payload1: com.test.model.Nested2? = builder.payload1

    companion object {
        operator fun invoke(block: Builder.() -> kotlin.Unit): com.test.model.ExplicitStructResponse = Builder().apply(block).build()
    }

    override fun toString(): kotlin.String = buildString {
        append("ExplicitStructResponse(")
        append("payload1=$payload1)")
    }

    override fun hashCode(): kotlin.Int {
        var result = payload1?.hashCode() ?: 0
        return result
    }

    override fun equals(other: kotlin.Any?): kotlin.Boolean {
        if (this === other) return true
        if (other == null || this::class != other::class) return false

        other as ExplicitStructResponse

        if (payload1 != other.payload1) return false

        return true
    }

    inline fun copy(block: Builder.() -> kotlin.Unit = {}): com.test.model.ExplicitStructResponse = Builder(this).apply(block).build()

    class Builder {
        var payload1: com.test.model.Nested2? = null

        internal constructor()
        @PublishedApi
        internal constructor(x: com.test.model.ExplicitStructResponse) : this() {
            this.payload1 = x.payload1
        }

        @PublishedApi
        internal fun build(): com.test.model.ExplicitStructResponse = ExplicitStructResponse(this)

        /**
         * construct an [com.test.model.Nested2] inside the given [block]
         */
        fun payload1(block: com.test.model.Nested2.Builder.() -> kotlin.Unit) {
            this.payload1 = com.test.model.Nested2.invoke(block)
        }
    }
}

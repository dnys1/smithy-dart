// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test.model



class TimestampInputResponse private constructor(builder: Builder) {

    companion object {
        operator fun invoke(block: Builder.() -> kotlin.Unit): com.test.model.TimestampInputResponse = Builder().apply(block).build()
    }

    override fun toString(): kotlin.String = buildString {
        append("TimestampInputResponse(")
        append(")")
    }

    override fun hashCode(): kotlin.Int {
        return this::class.hashCode()
    }

    override fun equals(other: kotlin.Any?): kotlin.Boolean {
        if (this === other) return true
        if (other == null || this::class != other::class) return false

        other as TimestampInputResponse

        return true
    }

    class Builder {

        internal constructor()
        @PublishedApi
        internal constructor(x: com.test.model.TimestampInputResponse) : this() {
        }

        @PublishedApi
        internal fun build(): com.test.model.TimestampInputResponse = TimestampInputResponse(this)
    }
}

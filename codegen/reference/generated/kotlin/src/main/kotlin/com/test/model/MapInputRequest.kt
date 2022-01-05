// Code generated by smithy-kotlin-codegen. DO NOT EDIT!

package com.test.model



class MapInputRequest private constructor(builder: Builder) {
    val blobMap: Map<String, ByteArray>? = builder.blobMap
    val enumMap: Map<String, MyEnum>? = builder.enumMap
    val intMap: Map<String, Int>? = builder.intMap
    val mapOfLists: Map<String, List<Int>>? = builder.mapOfLists
    val nestedMap: Map<String, Map<String, Int>>? = builder.nestedMap
    val structMap: Map<String, ReachableOnlyThroughMap>? = builder.structMap

    companion object {
        operator fun invoke(block: Builder.() -> kotlin.Unit): com.test.model.MapInputRequest = Builder().apply(block).build()
    }

    override fun toString(): kotlin.String = buildString {
        append("MapInputRequest(")
        append("blobMap=$blobMap,")
        append("enumMap=$enumMap,")
        append("intMap=$intMap,")
        append("mapOfLists=$mapOfLists,")
        append("nestedMap=$nestedMap,")
        append("structMap=$structMap)")
    }

    override fun hashCode(): kotlin.Int {
        var result = blobMap?.hashCode() ?: 0
        result = 31 * result + (enumMap?.hashCode() ?: 0)
        result = 31 * result + (intMap?.hashCode() ?: 0)
        result = 31 * result + (mapOfLists?.hashCode() ?: 0)
        result = 31 * result + (nestedMap?.hashCode() ?: 0)
        result = 31 * result + (structMap?.hashCode() ?: 0)
        return result
    }

    override fun equals(other: kotlin.Any?): kotlin.Boolean {
        if (this === other) return true
        if (other == null || this::class != other::class) return false

        other as MapInputRequest

        if (blobMap != other.blobMap) return false
        if (enumMap != other.enumMap) return false
        if (intMap != other.intMap) return false
        if (mapOfLists != other.mapOfLists) return false
        if (nestedMap != other.nestedMap) return false
        if (structMap != other.structMap) return false

        return true
    }

    inline fun copy(block: Builder.() -> kotlin.Unit = {}): com.test.model.MapInputRequest = Builder(this).apply(block).build()

    class Builder {
        var blobMap: Map<String, ByteArray>? = null
        var enumMap: Map<String, MyEnum>? = null
        var intMap: Map<String, Int>? = null
        var mapOfLists: Map<String, List<Int>>? = null
        var nestedMap: Map<String, Map<String, Int>>? = null
        var structMap: Map<String, ReachableOnlyThroughMap>? = null

        internal constructor()
        @PublishedApi
        internal constructor(x: com.test.model.MapInputRequest) : this() {
            this.blobMap = x.blobMap
            this.enumMap = x.enumMap
            this.intMap = x.intMap
            this.mapOfLists = x.mapOfLists
            this.nestedMap = x.nestedMap
            this.structMap = x.structMap
        }

        @PublishedApi
        internal fun build(): com.test.model.MapInputRequest = MapInputRequest(this)
    }
}

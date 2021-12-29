package software.amazon.smithy.dart.codegen.model

import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.codegen.core.SymbolDependency
import software.amazon.smithy.codegen.core.SymbolReference
import software.amazon.smithy.dart.codegen.core.DartDependency
import software.amazon.smithy.dart.codegen.core.capitalize
import software.amazon.smithy.dart.codegen.core.snakeCase

open class DartSymbol(val symbol: Symbol = Symbol.builder().build()) {
    /**
     * dart:core types
     */
    open class Core : DartSymbol() {
        companion object : Core() {
            val BigInt = createSymbol("BigInt")
            val bool = createSymbol("bool")
            val DateTime = createSymbol("DateTime")
            val double = createSymbol("double")
            val Duration = createSymbol("Duration")
            val int = createSymbol("int")
            fun List(ref: DartSymbol) = List(ref.symbol)
            fun List(ref: Symbol) = createSymbol("List", refs = listOf(ref))
            fun Map(key: DartSymbol, value: DartSymbol) = Map(key.symbol, value.symbol)
            fun Map(key: Symbol, value: Symbol) = createSymbol("Map", refs = listOf(key, value))
            val Never = createSymbol("Never")
            val Null = createSymbol("Null")
            val num = createSymbol("num")
            val Object = createSymbol("Object")
            val RegExp = createSymbol("RegExp")
            fun Set(ref: Symbol) = createSymbol("Set", refs = listOf(ref))
            fun Set(ref: DartSymbol) = Set(ref.symbol)
            val String = createSymbol("String")
            val void = createSymbol("void")
        }
    }

    /**
     * dart:async types.
     */
    open class Async : DartSymbol(
        Symbol.builder().namespace("dart.async", ".").build()
    ) {
        companion object : Async() {
            fun Future(ref: Symbol) = createSymbol("Future", refs = listOf(ref))
            fun Future(ref: DartSymbol) = Future(ref.symbol)
            fun Stream(ref: Symbol) = createSymbol("Stream", refs = listOf(ref))
            fun Stream(ref: DartSymbol) = Stream(ref.symbol)
        }
    }

    /**
     * dart:typed_data types
     */
    open class TypedData : DartSymbol(
        Symbol.builder().namespace("dart.typed_data", ".").build()
    ) {
        companion object : TypedData() {
            val Uint8List = createSymbol("Uint8List")
        }
    }

    open class Smithy : DartSymbol(
        Symbol.builder()
            .namespace("smithy.smithy", ".")
            .addDependency(DartDependency.Smithy)
            .build()
    ) {
        companion object : Smithy() {
            fun SmithyEnum(ref: Symbol) = createSymbol("SmithyEnum", refs = listOf(ref))
            fun SmithyEnum(ref: DartSymbol) = SmithyEnum(ref.symbol)
            fun SmithyUnion(ref: Symbol) = createSymbol("SmithyUnion", refs = listOf(ref))
            fun SmithyUnion(ref: DartSymbol) = SmithyUnion(ref.symbol)
            val BlobSerializer = createSymbol("BlobSerializer")
        }
    }

    open class AWS : Smithy() {
        companion object: AWS() {
            fun AWSEquatable(ref: Symbol) = createSymbol("AWSEquatable", refs = listOf(ref))
            fun AWSEquatable(ref: DartSymbol) = AWSEquatable(ref.symbol)
            val AWSSerializable = createSymbol("AWSSerializable")
        }
    }

    open class FixNum: Smithy() {
        companion object: FixNum() {
            val Int32 = createSymbol("Int32")
            val Int64 = createSymbol("Int64")
        }
    }

    /**
     * Creates a symbol with the same namespace and dependencies as `this`.
     */
    open fun createSymbol(name: String, refs: List<Symbol> = listOf(), deps: List<SymbolDependency> = listOf()): DartSymbol =
        DartSymbol(symbol.toBuilder().also {
            it.name(name)
            it.references(refs.map { ref ->
                SymbolReference(ref.toBuilder().addDependency(symbol).build(), SymbolReference.ContextOption.USE)
            })
        }.build())
}

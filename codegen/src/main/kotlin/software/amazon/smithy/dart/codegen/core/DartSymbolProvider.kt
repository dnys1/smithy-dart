package software.amazon.smithy.dart.codegen.core

import software.amazon.smithy.codegen.core.*
import software.amazon.smithy.dart.codegen.DartSettings
import software.amazon.smithy.dart.codegen.lang.dartReservedWords
import software.amazon.smithy.dart.codegen.model.*
import software.amazon.smithy.dart.codegen.utils.getOrNull
import software.amazon.smithy.model.Model
import software.amazon.smithy.model.shapes.*
import software.amazon.smithy.model.traits.BoxTrait
import software.amazon.smithy.model.traits.StreamingTrait
import java.util.logging.Logger

/**
 * Convert shapes to Dart types
 * @param model The smithy model to generate for
 * @param settings [DartSettings] associated with this codegen
 */
class DartSymbolProvider(
    private val model: Model,
    private val packageName: String,
    serviceId: ShapeId? = null,
    serviceName: String?,
) :
    SymbolProvider,
    ShapeVisitor<Symbol> {
    private val service: ServiceShape? = model.getShape(serviceId).getOrNull() as ServiceShape?
    private val serviceName = serviceName ?: service?.id?.name ?: packageName
    private val logger = Logger.getLogger(javaClass.name)
    private val escaper: ReservedWordSymbolProvider.Escaper

    // model depth; some shapes use `toSymbol()` internally as they convert (e.g.) member shapes to symbols, this tracks
    // how deep in the model we have recursed
    private var depth = 0

    init {
        val reservedWords = dartReservedWords()
        escaper = ReservedWordSymbolProvider.builder()
            .nameReservedWords(reservedWords)
            .memberReservedWords(reservedWords)
            // only escape words when the symbol has a definition file to prevent escaping intentional references to built-in shapes
            .escapePredicate { _, symbol -> symbol.definitionFile.isNotEmpty() }
            .buildEscaper()
    }

    companion object {
        /**
         * Determines if a new Dart type is generated for a given shape. Generally only structures, unions, and enums
         * result in a type being generated. Strings, ints, etc are mapped to builtins
         */
        fun isTypeGeneratedForShape(shape: Shape): Boolean =
            // pretty much anything we visit in CodegenVisitor (we don't care about service shape here though)
            shape.isEnum || shape.isStructureShape || shape.isUnionShape
    }

    override fun toSymbol(shape: Shape): Symbol {
        depth++
        val symbol: Symbol = shape.accept(this)
        depth--
        logger.fine("creating symbol from $shape: $symbol")
        return escaper.escapeSymbol(shape, symbol)
    }

    override fun toMemberName(shape: MemberShape): String = escaper.escapeMemberName(shape.defaultName())

    override fun byteShape(shape: ByteShape): Symbol = numberShape(shape, DartSymbol.Core.int)

    override fun integerShape(shape: IntegerShape): Symbol = numberShape(shape, DartSymbol.Core.int)

    override fun shortShape(shape: ShortShape): Symbol = numberShape(shape, DartSymbol.Core.int)

    override fun longShape(shape: LongShape): Symbol = fixNumShape(shape, DartSymbol.FixNum.Int64)

    override fun floatShape(shape: FloatShape): Symbol = numberShape(shape, DartSymbol.Core.double)

    override fun doubleShape(shape: DoubleShape): Symbol = numberShape(shape, DartSymbol.Core.double)

    private fun fixNumShape(shape: Shape, fixNum: DartSymbol): Symbol =
        numberShape(shape, fixNum, DefaultValue("#T.ZERO", listOf(fixNum)))

    private fun numberShape(
        shape: Shape,
        dartSymbol: DartSymbol,
        defaultValue: DefaultValue = DefaultValue.zero
    ): Symbol =
        dartSymbol.symbol.toBuilder()
            .defaultValue(defaultValue)
            .withBoxed(shape.isBoxed)
            .build()

    override fun bigIntegerShape(shape: BigIntegerShape?): Symbol =
        DartSymbol.Core.BigInt.symbol.toBuilder().boxed().defaultValue("#T.zero", DartSymbol.Core.BigInt).build()

    override fun bigDecimalShape(shape: BigDecimalShape?): Symbol = TODO()

    override fun stringShape(shape: StringShape): Symbol = if (shape.isEnum) {
        createEnumSymbol(shape)
    } else {
        DartSymbol.Core.String.symbol.boxed()
    }

    private fun createEnumSymbol(shape: StringShape): Symbol {
        val enumName = shape.defaultName(service)
        val filename = enumName.snakeCase()
        val namespace = DartNamespace(
            packageName,
            serviceName,
            LibraryType.Model,
            filename,
        ).asNamespace()
        return createSymbolBuilder(shape, enumName, namespace)
            .definitionFile("$filename.dart")
            .boxed()
            .build()
    }

    override fun booleanShape(shape: BooleanShape?): Symbol =
        DartSymbol.Core.bool.symbol.toBuilder().defaultValue("false").build()

    override fun structureShape(shape: StructureShape): Symbol {
        val name = shape.defaultName(service)
        val filename = name.snakeCase()
        val namespace = DartNamespace(
            packageName,
            serviceName,
            LibraryType.Model,
            filename,
        ).asNamespace()
        val builder = createSymbolBuilder(shape, name, namespace)
            .definitionFile("$filename.dart")

        return builder.build()
    }

    /**
     * Add all the [members] as references needed to declare the given symbol being built.
     */
    private fun addDeclareMemberReferences(builder: Symbol.Builder, members: Collection<MemberShape>) {
        // when converting a shape to a symbol we only need references to top level members
        // in order to declare the symbol. This prevents recursive shapes from causing a stack overflow (and doing
        // unnecessary work since we don't need the inner references)
        if (depth > 1) return
        members.forEach {
            val memberSymbol = toSymbol(it)
            builder.addReference(memberSymbol, SymbolReference.ContextOption.DECLARE)

            when (model.expectShape(it.target)) {
                // collections and maps may have a value type that needs a reference
                is CollectionShape, is MapShape -> addSymbolReferences(memberSymbol, builder)
            }
        }
    }

    private fun addSymbolReferences(from: Symbol, to: Symbol.Builder) {
        if (from.references.isEmpty()) return
        from.references.forEach {
            addSymbolReferences(it.symbol, to)
            to.addReference(it)
        }
    }

    override fun listShape(shape: ListShape): Symbol {
        val reference = toSymbol(shape.member)

        return DartSymbol.Core.List(
            if (shape.isSparse) reference.boxed() else reference
        ).symbol.boxed()
    }

    override fun mapShape(shape: MapShape): Symbol {
        val keyReference = toSymbol(shape.key)
        val valueReference = toSymbol(shape.value)

        return DartSymbol.Core.Map(
            keyReference.unboxed(),
            valueReference.withBoxed(shape.isSparse),
        ).symbol.boxed()
    }

    override fun setShape(shape: SetShape): Symbol {
        // Sets MUST NOT contain null values
        val reference = toSymbol(shape.member).unboxed()
        return DartSymbol.Core.Set(reference).symbol.boxed()
    }

    override fun memberShape(shape: MemberShape): Symbol {
        val targetShape =
            model.getShape(shape.target).orElseThrow { CodegenException("Shape not found: ${shape.target}") }
        return toSymbol(targetShape)
    }

    override fun timestampShape(shape: TimestampShape?): Symbol {
        return DartSymbol.Core.DateTime.symbol.boxed()
    }

    override fun blobShape(shape: BlobShape): Symbol = if (shape.hasTrait<StreamingTrait>()) {
        DartSymbol.Async.Stream(DartSymbol.Core.List(DartSymbol.Core.int)).symbol // Stream<List<int>>
    } else {
        DartSymbol.TypedData.Uint8List.symbol
    }

    override fun documentShape(shape: DocumentShape?): Symbol {
        return DartSymbol.Core.Map(
            DartSymbol.Core.String.symbol,
            DartSymbol.Core.Object.symbol.boxed()
        ).symbol.boxed()
    }

    override fun unionShape(shape: UnionShape): Symbol {
        val name = shape.defaultName(service)
        val filename = name.snakeCase()
        val namespace = DartNamespace(
            packageName,
            serviceName,
            LibraryType.Model,
            filename,
        ).asNamespace()
        val builder = createSymbolBuilder(shape, name, namespace)
            .definitionFile("$filename.dart")

        // add a reference to each member symbol
        addDeclareMemberReferences(builder, shape.allMembers.values)

        return builder.build()
    }

    override fun resourceShape(shape: ResourceShape?): Symbol = createSymbolBuilder(shape, "Resource").build()

    override fun operationShape(shape: OperationShape?): Symbol {
        // The Kotlin SDK does not produce code explicitly based on Operations
        error { "Unexpected codegen code path" }
    }

    override fun serviceShape(shape: ServiceShape): Symbol {
        val serviceClientName = clientName(serviceName)
        val filename = "${serviceClientName.snakeCase()}_client"
        val namespace = DartNamespace(
            packageName,
            serviceName,
            LibraryType.Client,
            filename,
        ).asNamespace()
        return createSymbolBuilder(shape, "${serviceClientName}Client", namespace)
            .definitionFile("$filename.dart").build()
    }

    /**
     * Creates a symbol builder for the shape with the given type name in the root namespace.
     */
    private fun createSymbolBuilder(shape: Shape?, typeName: String, boxed: Boolean = false): Symbol.Builder {
        val builder = Symbol.builder()
            .putProperty(SymbolProperty.SHAPE_KEY, shape)
            .name(typeName)

        val explicitlyBoxed = shape?.hasTrait<BoxTrait>() ?: false
        if (explicitlyBoxed || boxed) {
            builder.boxed()
        }
        return builder
    }

    /**
     * Creates a symbol builder for the shape with the given type name in a child namespace relative
     * to the root namespace e.g. `relativeNamespace = bar` with a root namespace of `foo` would set
     * the namespace (and ultimately the package name) to `foo.bar` for the symbol.
     */
    private fun createSymbolBuilder(
        shape: Shape?,
        typeName: String,
        namespace: String,
        boxed: Boolean = false
    ): Symbol.Builder = createSymbolBuilder(shape, typeName, boxed).namespace(namespace, ".")
}

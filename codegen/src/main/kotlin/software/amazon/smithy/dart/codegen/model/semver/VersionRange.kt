package software.amazon.smithy.dart.codegen.model.semver

abstract class VersionRange {
    abstract val min: Version?
    abstract val max: Version?
    abstract val includeMin: Boolean
    abstract val includeMax: Boolean

    override fun toString(): String {
        val buffer = StringBuffer()

        if (min != null) {
            buffer.also {
                it.append(if(includeMin) ">=" else ">")
                it.append(min)
            }
        }

        if (max != null) {
            if (min != null) buffer.append(" ")
            if (includeMax) {
                buffer.also {
                    it.append(">=")
                    it.append(max)
                }
            } else {
                buffer.also {
                    it.append("<")
                    it.append(max)
                }
            }
        }

        if (min == null && max == null) buffer.append("any")
        return buffer.toString()
    }
}
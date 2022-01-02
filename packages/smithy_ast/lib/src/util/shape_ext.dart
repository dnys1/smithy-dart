import 'package:smithy_ast/smithy_ast.dart';

extension ShapeExt on Shape {
  /// Whether this shape is nullable/"boxed".
  bool isNullable([Shape? parent]) {
    final isMemberShape = parent != null;
    if (!isMemberShape) {
      // If a shape is not part of an aggregate shape, its nullability is
      // strictly equal to whether it has the box trait.
      return isBoxed;
    }

    final parentType = parent.getType();
    switch (parentType) {
      // Lists have nullable members only when they are sparse.
      case ShapeType.list:
        return parent.isSparse;

      // Sets never have null members.
      case ShapeType.set:
        return false;

      // Maps always have non-null keys. Values are null iff the map is sparse.
      // The box trait is not used to determine nullability.
      case ShapeType.map:
        final isValue = (parent as MapShape).value.target == shapeId;
        return isValue && parent.isSparse;

      // Shapes which are part of a structure are always considered boxed
      // unless they are marked with the `@required` trait.
      case ShapeType.structure:
        // These shapes have default values and are only considered boxed when
        // explicitly marked with the boxed trait.
        final hasDefaultValue = const {
          ShapeType.byte,
          ShapeType.short,
          ShapeType.integer,
          ShapeType.long,
          ShapeType.float,
          ShapeType.double,
          ShapeType.boolean,
        }.contains(getType());
        return isNotRequired && (hasDefaultValue ? isBoxed : true);

      // All but one value in a union is non-null. We represent all values
      // with nullable getters, though.
      case ShapeType.union:
        return true;

      default:
        throw StateError('Unknown aggregate type: $parentType');
    }
  }

  /// Whether `this` is boxed. This means the shape is optionally present and
  /// has no default value.
  bool get isBoxed => hasTrait<BoxTrait>();

  /// Whether `this` is not boxed. This means the shape is required to be present
  /// with a value.
  bool get isNotBoxed => !isBoxed;

  /// Whether `this` is an enum.
  bool get isEnum => this is StringShape && hasTrait<EnumTrait>();

  /// Whether `this` has the `@sparse` trait.
  bool get isSparse => hasTrait<SparseTrait>();

  /// Whether `this` has the `@streaming` trait.
  bool get isStreaming => hasTrait<StreamingTrait>();

  /// Whether `this` has the `@required` trait.
  bool get isRequired => hasTrait<RequiredTrait>();

  /// Whether `this` does not have the `@required` trait.
  bool get isNotRequired => !isRequired;
}

import 'package:built_collection/built_collection.dart';
import 'package:smithy_ast/src/shapes/shape_ref.dart';

import 'shape.dart';

/// Abstract class representing service and resource shapes.
abstract class EntityShape implements Shape {
  BuiltSet<ShapeRef> get resources;
  BuiltSet<ShapeRef> get operations;
}

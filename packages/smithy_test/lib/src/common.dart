import 'package:collection/collection.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:test/test.dart';

/// Creates an AST from [shapes].
SmithyAst createAst(List<Shape> shapes) {
  return SmithyAst(
    (b) =>
        b..shapes = ShapeMap({for (var shape in shapes) shape.shapeId: shape}),
  );
}

/// Creates a codegen context for test cases.
CodegenContext createTestContext(
  List<Shape> shapes, {
  String packageName = 'example',
  String serviceName = 'Test',
}) {
  return CodegenContext(
    smithyVersion: '1.0',
    shapes: ShapeMap({for (var shape in shapes) shape.shapeId: shape}),
    packageName: packageName,
    serviceName: serviceName,
  );
}

/// Performs deep equality on two objects.
const deepEquals = DeepEqualityMatcher.new;

class DeepEqualityMatcher extends Matcher {
  DeepEqualityMatcher(this.o);

  final Object? o;

  @override
  Description describe(Description description) {
    return description..add(o.toString());
  }

  @override
  Description describeMismatch(
    Object? item,
    Description mismatchDescription,
    Map matchState,
    bool verbose,
  ) {
    return StringDescription()
      ..add('Expected: $o\n')
      ..add('Got: $item');
  }

  @override
  bool matches(Object? item, Map matchState) {
    return const DeepCollectionEquality(_BaseEquality()).equals(o, item);
  }
}

/// Fixes equality between doubles, since a lot of tests require it.
///
/// Typically two doubles which are both NaN are not equal since
/// `double.NaN != double.NaN`.
///
/// Tests
class _BaseEquality implements Equality<Object?> {
  const _BaseEquality();
  static const _base = DefaultEquality();

  @override
  bool equals(e1, e2) {
    if (e1 is double && e2 is double) {
      return e1 == e2 || (e1.isNaN && e2.isNaN);
    }
    return _base.equals(e1, e2);
  }

  @override
  int hash(e) {
    return _base.hash(e);
  }

  @override
  bool isValidKey(Object? o) {
    return _base.isValidKey(o);
  }
}

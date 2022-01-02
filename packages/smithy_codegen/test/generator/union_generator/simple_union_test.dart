import 'package:smithy_ast/smithy_ast.dart';

import '../../test_util.dart';

void main() {
  final unionId = ShapeId.parse('smithy.example#MyUnion');
  testGolden('UnionGenerator', 'Simple Union', [
    UnionShape((b) => b
      ..shapeId = unionId
      ..members = NamedMembersMap({
        'bar': MemberShape(
          (m) => m
            ..memberName = 'bar'
            ..shapeId = unionId.replace(member: 'bar')
            ..target = ShapeId.core('Integer'),
        ),
        'foo': MemberShape(
          (m) => m
            ..memberName = 'foo'
            ..shapeId = unionId.replace(member: 'foo')
            ..target = ShapeId.core('String'),
        ),
        'baz': MemberShape(
          (m) => m
            ..memberName = 'baz'
            ..shapeId = unionId.replace(member: 'baz')
            ..target = ShapeId.core('Integer'),
        ),
      }))
  ]);
}

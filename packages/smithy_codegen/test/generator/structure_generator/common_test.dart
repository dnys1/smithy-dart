import 'package:smithy_ast/smithy_ast.dart';

import '../../test_util.dart';

void main() {
  final structId = ShapeId.parse('com.test#GetFooInput');
  final quxId = ShapeId.parse('com.test#Qux');
  testGolden('Structure Generator', 'Deprecated ', [
    StructureShape(
      (s) => s
        ..shapeId = structId
        ..members = NamedMembersMap({
          'foo': MemberShape(
            (m) => m
              ..memberName = 'foo'
              ..shapeId = structId.replace(member: 'foo')
              ..target = StringShape.id,
          ),
          'bar': MemberShape(
            (m) => m
              ..memberName = 'bar'
              ..shapeId = structId.replace(member: 'bar')
              ..target = StringShape.id,
          ),
          'qux': MemberShape(
            (m) => m
              ..memberName = 'qux'
              ..shapeId = structId.replace(member: 'qux')
              ..target = quxId
              ..traits = TraitMap.fromTraits([DeprecatedTrait()]),
          ),
        })
        ..traits = TraitMap.fromTraits([DeprecatedTrait()]),
    ),
    StructureShape(
      (s) => s
        ..shapeId = quxId
        ..members = NamedMembersMap({}),
    )
  ]);
}

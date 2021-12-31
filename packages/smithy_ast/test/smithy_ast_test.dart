import 'dart:convert';

import 'package:smithy_ast/src/shapes/collection_shape.dart';
import 'package:smithy_ast/src/shapes/list_shape.dart';
import 'package:smithy_ast/src/shapes/map_shape.dart';
import 'package:smithy_ast/src/shapes/member_shape.dart';
import 'package:smithy_ast/src/shapes/operation_shape.dart';
import 'package:smithy_ast/src/shapes/service_shape.dart';
import 'package:smithy_ast/src/shapes/shape_id.dart';
import 'package:smithy_ast/src/shapes/shape_ref.dart';
import 'package:smithy_ast/src/shapes/string_shape.dart';
import 'package:smithy_ast/src/shapes/structure_shape.dart';
import 'package:smithy_ast/src/shapes/trait_map.dart';
import 'package:smithy_ast/src/smithy_ast.dart';
import 'package:smithy_ast/src/traits/documentation_trait.dart';
import 'package:smithy_ast/src/traits/required_trait.dart';
import 'package:test/test.dart';

void main() {
  group('Smithy AST', () {
    group('Deserialize', () {
      test('a', () {
        const json = '''
        {
          "smithy": "1.0",
          "metadata": {},
          "shapes": {
            "smithy.example#MyString": {
              "type": "string"
            }
          }
        }''';
        final map = (jsonDecode(json) as Map).cast<String, Object?>();
        final ast = SmithyAst.fromJson(map);
        final shapeId = ShapeId(namespace: 'smithy.example', name: 'MyString');
        final expected = SmithyAst((b) => b
          ..version = '1.0'
          ..shapes = ShapeMap({
            shapeId: StringShape((b) => b..shapeId = shapeId),
          }));
        expect(ast, expected);
        expect(expected.toJson(), equals(map));
      });

      test('ShapeRef', () {
        const json = '''
        {
          "smithy": "1.0",
          "shapes": {
              "smithy.example#Service": {
                  "type": "service",
                  "operations": [
                      {
                          "target": "smithy.example#Operation"
                      }
                  ]
              },
              "smithy.example#Operation": {
                  "type": "operation"
              }
          }
        }''';

        final serviceId = ShapeId(namespace: 'smithy.example', name: 'Service');
        final operationId =
            ShapeId(namespace: 'smithy.example', name: 'Operation');

        final expected = SmithyAst((b) => b
          ..version = '1.0'
          ..shapes = ShapeMap({
            serviceId: ServiceShape((s) => s
              ..shapeId = serviceId
              ..operations.add(ShapeRef((b) => b.target = operationId))),
            operationId: OperationShape((b) => b.shapeId = operationId),
          }));
        final decoded =
            SmithyAst.fromJson(jsonDecode(json) as Map<String, Object?>);
        expect(decoded, equals(expected));
      });

      test('Member', () {
        const json = '''
        {
            "smithy": "1.0",
            "shapes": {
                "smithy.example#MyList": {
                    "type": "list",
                    "member": {
                        "target": "smithy.api#String",
                        "traits": {
                            "smithy.api#documentation": "Member documentation"
                        }
                    }
                }
            }
        }''';

        final listId = ShapeId(namespace: 'smithy.example', name: 'MyList');

        final memberShape = MemberShape((b) {
          b
            ..target = ShapeId.parse('smithy.api#String')
            ..traits = TraitMap({
              DocumentationTrait.id: DocumentationTrait('Member documentation')
            });
        });

        final expected = SmithyAst((b) => b
          ..version = '1.0'
          ..shapes = ShapeMap({
            listId: ListShape(
              (b) => b
                ..shapeId = listId
                ..member.replace(memberShape),
            )
          }));

        final decoded = SmithyAst.fromJson(jsonDecode(json));
        expect(decoded, equals(expected));
      });

      test('17.7 Map shape', () {
        const json = '''
        {
            "smithy": "1.0",
            "shapes": {
                "smithy.example#IntegerMap": {
                    "type": "map",
                    "key": {
                        "target": "smithy.api#String"
                    },
                    "value": {
                        "target": "smithy.api#Integer"
                    }
                }
            }
        }''';

        final mapId = ShapeId(namespace: 'smithy.example', name: 'IntegerMap');
        final stringId = ShapeId(namespace: 'smithy.api', name: 'String');
        final integerId = ShapeId(namespace: 'smithy.api', name: 'Integer');

        final expected = SmithyAst((b) => b
          ..version = '1.0'
          ..shapes = ShapeMap({
            mapId: MapShape((b) {
              b
                ..shapeId = mapId
                ..key.target = stringId
                ..value.target = integerId;
            }),
          }));

        final decoded =
            SmithyAst.fromJson(jsonDecode(json) as Map<String, Object?>);
        expect(decoded, equals(expected));
      });

      test('17.7a Structure shape', () {
        const json = '''
        {
          "smithy": "1.0",
          "shapes": {
              "smithy.example#MyStructure": {
                  "type": "structure",
                  "members": {
                      "stringMember": {
                          "target": "smithy.api#String",
                          "traits": {
                              "smithy.api#required": {}
                          }
                      },
                      "numberMember": {
                          "target": "smithy.api#Integer"
                      }
                  }
              }
          }
      }''';

        final structureId =
            ShapeId(namespace: 'smithy.example', name: 'MyStructure');
        final stringId = ShapeId(namespace: 'smithy.api', name: 'String');
        final integerId = ShapeId(namespace: 'smithy.api', name: 'Integer');
        final requiredId = ShapeId(namespace: 'smithy.api', name: 'required');

        final expected = SmithyAst((b) => b
          ..version = '1.0'
          ..shapes = ShapeMap({
            structureId: StructureShape((b) => b
              ..shapeId = structureId
              ..members = NamedMembersMap({
                'stringMember': MemberShape((b) => b
                  ..shapeId = structureId.replace(member: 'stringMember')
                  ..target = stringId
                  ..memberName = 'stringMember'
                  ..traits = TraitMap({
                    requiredId: RequiredTrait(),
                  })),
                'numberMember': MemberShape((b) => b
                  ..shapeId = structureId.replace(member: 'numberMember')
                  ..memberName = 'numberMember'
                  ..target = integerId),
              }))
          }));

        final decoded =
            SmithyAst.fromJson(jsonDecode(json) as Map<String, Object?>);
        expect(decoded, equals(expected));
      });

      test('Apply', () {
        const json = r'''
        {
          "smithy": "1.0",
          "shapes": {
              "smithy.example#Struct": {
                  "type": "structure",
                  "members": {
                      "foo": {
                          "target": "smithy.api#String"
                      }
                  }
              },
              "smithy.example#Struct$foo": {
                  "type": "apply",
                  "traits": {
                      "smithy.api#documentation": "My documentation string"
                  }
              }
          }
      }''';

        final structId = ShapeId.parse('smithy.example#Struct');
        final stringId = ShapeId.parse('smithy.api#String');

        final expected = SmithyAst((b) => b
          ..version = '1.0'
          ..shapes = ShapeMap({
            structId: StructureShape((b) => b
              ..shapeId = structId
              ..members = NamedMembersMap({
                'foo': MemberShape((b) => b
                  ..shapeId = structId.replace(member: 'foo')
                  ..memberName = 'foo'
                  ..target = stringId
                  ..traits = TraitMap({
                    DocumentationTrait.id:
                        DocumentationTrait('My documentation string')
                  }))
              }))
          }));

        final decoded = SmithyAst.fromJson(jsonDecode(json));

        expect(decoded, equals(expected));
      });
    });
  });
}

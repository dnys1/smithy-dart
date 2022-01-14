@TestOn('vm')

import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_test/smithy_test_io.dart';
import 'package:test/test.dart';

void main() {
  testGolden('EnumGenerator', 'Create Enum', [
    StringShape(
      (s) => s
        ..shapeId = ShapeId.parse('com.test#MyEnum')
        ..traits = TraitMap.fromTraits(const [
          EnumTrait([
            EnumDefinition(value: 'FOO_BAZ@-. XAP - . '),
            EnumDefinition(
              value: 'BAR',
              documentation: 'Documentation for BAR',
            ),
          ])
        ]),
    )
  ]);
}

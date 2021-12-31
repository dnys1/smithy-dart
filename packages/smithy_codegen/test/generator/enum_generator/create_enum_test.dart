import 'package:smithy_ast/smithy_ast.dart';

import '../../test_util.dart';

void main() {
  testGolden('EnumGenerator', 'Create Enum', [
    StringShape(
      (s) => s
        ..shapeId = ShapeId.parse('com.test#MyEnum')
        ..traits = TraitMap.fromTraits([
          EnumTrait(definitions: [
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

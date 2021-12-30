import 'package:smithy_ast/smithy_ast.dart';

import '../../test_util.dart';

void main() {
  testGolden('EnumGenerator', 'Create Enum', [
    StringShape(
      (s) => s
        ..shapeId.replace(ShapeId.parse('com.test#MyEnum'))
        ..traits = TraitMap.fromTraits([
          EnumTrait((t) => t
            ..definitions.addAll([
              EnumDefinition((d) => d..value = 'FOO_BAZ@-. XAP - . '),
              EnumDefinition((d) => d
                ..value = 'BAR'
                ..documentation = 'Documentation for BAR'),
            ]))
        ]),
    )
  ]);
}

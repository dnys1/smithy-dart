import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/enum_generator.dart';
import 'package:test/test.dart';

import 'test_util.dart';

void main() {
  group('EnumGenerator', () {
    test('createEnum', () {
      const goldenUri =
          'package:goldens/lib/enum_generator/create_enum/my_enum.dart';
      final enumShape = StringShape(
        (s) => s
          ..shapeId.replace(ShapeId.parse('com.test#MyEnum'))
          ..traits = TraitMap({
            EnumTrait.id: EnumTrait((t) => t
              ..definitions.addAll([
                EnumDefinition((d) => d..value = 'FOO_BAZ@-. XAP - . '),
                EnumDefinition((d) => d
                  ..value = 'BAR'
                  ..documentation = 'Documentation for BAR'),
              ]))
          }),
      );
      final context = createTestContext([enumShape]);
      final generator = EnumGenerator(enumShape, context: context);
      final generated = generator.generate();
      final formatted = DartFormatter(fixes: StyleFix.all)
          .format('${generated.accept(kDefaultEmitter)}');

      expect(
        generated,
        equalsDart(
          File(goldenUri).readAsStringSync(),
          kDefaultEmitter,
        ),
      );
    });
  });
}

const _golden = '''
import 'package:smithy/smithy.dart';

class MyEnum extends SmithyEnum<MyEnum> {
  const MyEnum._(int index, String name, String value)
      : super(index, name, value);

  const MyEnum.sdkUnknown(String value) : super.sdkUnknown(value);

  static const bar = MyEnum._(0, 'bar', 'BAR');

  static const fooBazXap = MyEnum._(1, 'fooBazXap', 'FOO_BAZ@-. XAP - . ');

  static const values = <MyEnum>[MyEnum.bar, MyEnum.fooBazXap];

  @override
  String toString() => value;
}

extension MyEnumByValue on List<MyEnum> {
  MyEnum byName(String name) => firstWhere((el) => el.name == name);
  MyEnum byValue(String value) => firstWhere((el) => el.value == value,
      orElse: () => MyEnum.sdkUnknown(value));
}
''';

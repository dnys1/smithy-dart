import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_test/smithy_test.dart';

void main() {
  test('default value', () {
    const primitiveId = ShapeId(namespace: 'example', shape: 'MyPrimitive');
    final primitive = PrimitiveDoubleShape((b) => b..shapeId = primitiveId);
    final struct = StructureShape(
      (b) => b
        ..shapeId = const ShapeId(namespace: 'example', shape: 'MyStruct')
        ..members = NamedMembersMap({
          'defaultValue': MemberShape(
            (b) => b
              ..memberName = 'defaultValue'
              ..shapeId = const ShapeId(
                namespace: 'example',
                shape: 'MyStruct',
                member: 'defaultValue',
              )
              ..target = primitiveId,
          ),
        })
        ..traits = TraitMap.fromTraits(const [InputTrait()]),
    );
    final context = createTestContext([primitive, struct]);
    final generator = StructureGenerator(struct, context);
    final method = generator.defaultValues(
      members: generator.payloadMembers,
      builderSymbol: generator.payloadBuilderSymbol,
    );
    final emitter = buildEmitter(Allocator.none);
    final output = method.accept(emitter).toString();
    expect(output, contains('b.defaultValue = 0'));
  });
}

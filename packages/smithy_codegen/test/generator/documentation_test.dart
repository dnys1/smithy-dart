// TODO(dnys1): Remove when Dart 2.17 is released
@TestOn('vm')

import 'package:code_builder/code_builder.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/generator/structure_generator.dart';
import 'package:smithy_codegen/src/util/docs.dart';
import 'package:smithy_codegen/src/util/shape_ext.dart';
import 'package:smithy_test/smithy_test.dart';

void main() {
  group('@documentation', () {
    const docs = 'Some documentation';

    test('format docs', () {
      expect(formatDocs(docs), equals('/// $docs'));
    });

    test('structure', () {
      final struct = StructureShape(
        (b) => b
          ..shapeId = const ShapeId(namespace: 'example', shape: 'MyStruct')
          ..members = NamedMembersMap({})
          ..traits = TraitMap.fromTraits(const [DocumentationTrait(docs)]),
      );
      final context = createTestContext([struct]);

      expect(struct.hasDocs(context), isTrue);
      expect(struct.formattedDocs(context), contains(docs));

      final generator = StructureGenerator(struct, context);
      final emitter = buildEmitter(Allocator.none);

      final ctor = generator.factoryConstructor;
      expect(ctor.docs, isNotEmpty);
      final ctorOutput =
          emitter.visitConstructor(ctor, generator.className).toString();
      expect(ctorOutput, contains(docs));

      final response = generator.fromResponseConstructor;
      expect(ctor.docs, isNotEmpty);
      final responseOutput =
          emitter.visitConstructor(response, generator.className).toString();
      expect(responseOutput, startsWith('/// '));
    });
  });
}

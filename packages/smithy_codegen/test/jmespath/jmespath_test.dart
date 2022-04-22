@TestOn('vm')

import 'package:code_builder/code_builder.dart';
import 'package:jmespath/src/parser.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/jmespath/expression_visitor.dart';
import 'package:test/test.dart';

void main() {
  // final emitter = buildEmitter(Allocator.none);
  // final visitor = JmespathExpressionVisitor();

  // test('length', () {
  //   const path = 'length(input.groups) == length(output.groups)';
  //   final jmespath = parse(path);
  //   final exp = visitor.visit(jmespath);
  //   expect(
  //     exp,
  //     equalsDart('input.groups.length == output.groups.length', emitter),
  //   );
  // });
}

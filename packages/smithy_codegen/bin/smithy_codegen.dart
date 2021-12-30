import 'dart:convert';
import 'dart:io';

import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/parse.dart';
import 'package:grpc/grpc.dart';
import 'package:smithy_codegen/src/server.dart';

void main(List<String> args) async {
  final CodegenConfig config;
  try {
    config = parseCodegenConfig(args);
  } on FormatException catch (e) {
    stderr.writeln(e.message);
    usage();
  }

  if (config.server) {
    // Connect server at local port.
    final server = Server([RemoteCodegenService()]);
    await server.serve(address: InternetAddress.loopbackIPv4, port: 0);

    // Write the port to stdout so that clients can connect.
    stdout.writeln(server.port);
  } else {
    // Read from stdin
    final json = stdin.readLineSync(encoding: utf8);
    if (json == null) {
      usage();
    }
    final SmithyAst ast;
    try {
      ast = parseAstJson(json);
    } catch (e) {
      stderr.writeln(e.toString());
      usage();
    }
  }
}

Never usage() {
  print('Usage: echo "<smithy_json>" | smithy_codegen -o ~/dev/my_service');
  print(parserUsage);
  exit(1);
}

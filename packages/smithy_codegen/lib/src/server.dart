import 'package:grpc/grpc.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/util/pubspec.dart';

import 'service/codegen.pbgrpc.dart';

/// Handles requests from a remote codgen client, such as the Smithy plugin.
class CodegenService extends CodegenServiceBase {
  @override
  Future<CodegenResponse> codegen(
    ServiceCall call,
    CodegenRequest request,
  ) async {
    try {
      final ast = parseAstJson(request.json);
      final pubspec = Pubspec.fromJson(request.settings);
      final libraries = generateForAst(
        ast,
        packageName: pubspec.name,
        serviceName: request.serviceName,
        pubspec: pubspec,
      );
      return CodegenResponse()
        ..success = true
        ..libraries.addAll([
          for (var entry in libraries.entries)
            CodegenResponse_Library(
              metadata: entry.key,
              definition: entry.value,
            )
        ])
        ..pubspec = pubspec.toYaml();
    } catch (e) {
      return CodegenResponse()
        ..success = false
        ..error = e.toString();
    }
  }
}

import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_codegen/src/generated/codegen.pbgrpc.dart';

class RemoteCodegenService extends RemoteCodegenServiceBase {
  @override
  Future<ServiceResult> codegenService(
    ServiceCall call,
    ServiceRequest request,
  ) async {
    try {
      final ast = SmithyAst.fromJson(jsonDecode(request.closureJson));

      return ServiceResult()..success = true;
    } catch (e) {
      return ServiceResult()
        ..success = false
        ..error = e.toString();
    }
  }
}

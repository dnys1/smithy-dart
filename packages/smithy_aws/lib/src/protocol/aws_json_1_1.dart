import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' hide Serializer;
import 'package:smithy_ast/smithy_ast.dart';
import 'package:smithy_aws/smithy_aws.dart';

class AwsJson1_1Protocol<InputPayload, Input, OutputPayload, Output>
    extends AwsJson1_0Protocol<InputPayload, Input, OutputPayload, Output> {
  AwsJson1_1Protocol({
    List<HttpInterceptor> interceptors = const [],
    List<SmithySerializer> serializers = const [],
    Map<FullType, Function> builderFactories = const {},
  }) : super(
          serializers: serializers,
          builderFactories: builderFactories,
          interceptors: interceptors,
        );

  @override
  ShapeId get protocolId => AwsJson1_1Trait.id;

  @override
  String get contentType => 'application/x-amz-json-1.1';
}

// ignore_for_file: camel_case_types
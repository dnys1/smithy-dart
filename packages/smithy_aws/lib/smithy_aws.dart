/// AWS runtime for Smithy.
library smithy_aws;

// Endpoint
export 'src/endpoint/aws_endpoint.dart';
export 'src/endpoint/aws_endpoint_resolver.dart';
export 'src/endpoint/credential_scope.dart';
export 'src/endpoint/partition.dart';

export 'src/http/interceptors/with_sig_v4.dart';
export 'src/protocol/aws_json_1_0.dart';
export 'src/protocol/aws_json_1_1.dart';
export 'src/protocol/rest_json_1.dart';
export 'src/protocol/rest_xml.dart';
export 'src/s3/s3_client_config.dart';

///
//  Generated code. Do not modify.
//  source: codegen.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use serviceRequestDescriptor instead')
const ServiceRequest$json = const {
  '1': 'ServiceRequest',
  '2': const [
    const {'1': 'serviceName', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    const {'1': 'closureJson', '3': 2, '4': 1, '5': 9, '10': 'closureJson'},
  ],
};

/// Descriptor for `ServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceRequestDescriptor = $convert.base64Decode('Cg5TZXJ2aWNlUmVxdWVzdBIgCgtzZXJ2aWNlTmFtZRgBIAEoCVILc2VydmljZU5hbWUSIAoLY2xvc3VyZUpzb24YAiABKAlSC2Nsb3N1cmVKc29u');
@$core.Deprecated('Use serviceResultDescriptor instead')
const ServiceResult$json = const {
  '1': 'ServiceResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'libraries', '3': 3, '4': 3, '5': 11, '6': '.ServiceResult.LibrariesEntry', '10': 'libraries'},
  ],
  '3': const [ServiceResult_LibrariesEntry$json],
};

@$core.Deprecated('Use serviceResultDescriptor instead')
const ServiceResult_LibrariesEntry$json = const {
  '1': 'LibrariesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ServiceResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceResultDescriptor = $convert.base64Decode('Cg1TZXJ2aWNlUmVzdWx0EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFAoFZXJyb3IYAiABKAlSBWVycm9yEjsKCWxpYnJhcmllcxgDIAMoCzIdLlNlcnZpY2VSZXN1bHQuTGlicmFyaWVzRW50cnlSCWxpYnJhcmllcxo8Cg5MaWJyYXJpZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

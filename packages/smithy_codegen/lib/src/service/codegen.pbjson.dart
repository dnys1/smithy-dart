///
//  Generated code. Do not modify.
//  source: codegen.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use smithyLibraryDescriptor instead')
const SmithyLibrary$json = const {
  '1': 'SmithyLibrary',
  '2': const [
    const {'1': 'packageName', '3': 1, '4': 1, '5': 9, '10': 'packageName'},
    const {'1': 'serviceName', '3': 2, '4': 1, '5': 9, '10': 'serviceName'},
    const {
      '1': 'libraryType',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.SmithyLibrary.LibraryType',
      '10': 'libraryType'
    },
    const {'1': 'filename', '3': 4, '4': 1, '5': 9, '10': 'filename'},
    const {'1': 'basePath', '3': 5, '4': 1, '5': 9, '10': 'basePath'},
  ],
  '4': const [SmithyLibrary_LibraryType$json],
};

@$core.Deprecated('Use smithyLibraryDescriptor instead')
const SmithyLibrary_LibraryType$json = const {
  '1': 'LibraryType',
  '2': const [
    const {'1': 'MODEL', '2': 0},
    const {'1': 'CLIENT', '2': 1},
    const {'1': 'SERVICE', '2': 2},
    const {'1': 'OPERATION', '2': 3},
    const {'1': 'COMMON', '2': 4},
    const {'1': 'TEST', '2': 5},
    const {'1': 'SERVER', '2': 6},
  ],
};

/// Descriptor for `SmithyLibrary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smithyLibraryDescriptor = $convert.base64Decode(
    'Cg1TbWl0aHlMaWJyYXJ5EiAKC3BhY2thZ2VOYW1lGAEgASgJUgtwYWNrYWdlTmFtZRIgCgtzZXJ2aWNlTmFtZRgCIAEoCVILc2VydmljZU5hbWUSPAoLbGlicmFyeVR5cGUYAyABKA4yGi5TbWl0aHlMaWJyYXJ5LkxpYnJhcnlUeXBlUgtsaWJyYXJ5VHlwZRIaCghmaWxlbmFtZRgEIAEoCVIIZmlsZW5hbWUSGgoIYmFzZVBhdGgYBSABKAlSCGJhc2VQYXRoImIKC0xpYnJhcnlUeXBlEgkKBU1PREVMEAASCgoGQ0xJRU5UEAESCwoHU0VSVklDRRACEg0KCU9QRVJBVElPThADEgoKBkNPTU1PThAEEggKBFRFU1QQBRIKCgZTRVJWRVIQBg==');
@$core.Deprecated('Use codegenRequestDescriptor instead')
const CodegenRequest$json = const {
  '1': 'CodegenRequest',
  '2': const [
    const {
      '1': 'settings',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.CodegenRequest.SettingsEntry',
      '10': 'settings'
    },
    const {'1': 'serviceName', '3': 2, '4': 1, '5': 9, '10': 'serviceName'},
    const {'1': 'json', '3': 3, '4': 1, '5': 9, '10': 'json'},
  ],
  '3': const [CodegenRequest_SettingsEntry$json],
};

@$core.Deprecated('Use codegenRequestDescriptor instead')
const CodegenRequest_SettingsEntry$json = const {
  '1': 'SettingsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `CodegenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List codegenRequestDescriptor = $convert.base64Decode(
    'Cg5Db2RlZ2VuUmVxdWVzdBI5CghzZXR0aW5ncxgBIAMoCzIdLkNvZGVnZW5SZXF1ZXN0LlNldHRpbmdzRW50cnlSCHNldHRpbmdzEiAKC3NlcnZpY2VOYW1lGAIgASgJUgtzZXJ2aWNlTmFtZRISCgRqc29uGAMgASgJUgRqc29uGjsKDVNldHRpbmdzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use codegenResponseDescriptor instead')
const CodegenResponse$json = const {
  '1': 'CodegenResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'pubspec', '3': 3, '4': 1, '5': 9, '10': 'pubspec'},
    const {
      '1': 'libraries',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.CodegenResponse.Library',
      '10': 'libraries'
    },
  ],
  '3': const [CodegenResponse_Library$json],
};

@$core.Deprecated('Use codegenResponseDescriptor instead')
const CodegenResponse_Library$json = const {
  '1': 'Library',
  '2': const [
    const {
      '1': 'metadata',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.SmithyLibrary',
      '10': 'metadata'
    },
    const {'1': 'definition', '3': 2, '4': 1, '5': 9, '10': 'definition'},
  ],
};

/// Descriptor for `CodegenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List codegenResponseDescriptor = $convert.base64Decode(
    'Cg9Db2RlZ2VuUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgCIAEoCVIFZXJyb3ISGAoHcHVic3BlYxgDIAEoCVIHcHVic3BlYxI2CglsaWJyYXJpZXMYBCADKAsyGC5Db2RlZ2VuUmVzcG9uc2UuTGlicmFyeVIJbGlicmFyaWVzGlUKB0xpYnJhcnkSKgoIbWV0YWRhdGEYASABKAsyDi5TbWl0aHlMaWJyYXJ5UghtZXRhZGF0YRIeCgpkZWZpbml0aW9uGAIgASgJUgpkZWZpbml0aW9u');

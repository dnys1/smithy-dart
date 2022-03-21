///
//  Generated code. Do not modify.
//  source: codegen.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SmithyLibrary_LibraryType extends $pb.ProtobufEnum {
  static const SmithyLibrary_LibraryType MODEL = SmithyLibrary_LibraryType._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'MODEL');
  static const SmithyLibrary_LibraryType CLIENT = SmithyLibrary_LibraryType._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CLIENT');
  static const SmithyLibrary_LibraryType SERVICE = SmithyLibrary_LibraryType._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'SERVICE');
  static const SmithyLibrary_LibraryType OPERATION =
      SmithyLibrary_LibraryType._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'OPERATION');
  static const SmithyLibrary_LibraryType COMMON = SmithyLibrary_LibraryType._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'COMMON');
  static const SmithyLibrary_LibraryType TEST = SmithyLibrary_LibraryType._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TEST');
  static const SmithyLibrary_LibraryType SERVER = SmithyLibrary_LibraryType._(
      6,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'SERVER');

  static const $core.List<SmithyLibrary_LibraryType> values =
      <SmithyLibrary_LibraryType>[
    MODEL,
    CLIENT,
    SERVICE,
    OPERATION,
    COMMON,
    TEST,
    SERVER,
  ];

  static final $core.Map<$core.int, SmithyLibrary_LibraryType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SmithyLibrary_LibraryType? valueOf($core.int value) => _byValue[value];

  const SmithyLibrary_LibraryType._($core.int v, $core.String n) : super(v, n);
}

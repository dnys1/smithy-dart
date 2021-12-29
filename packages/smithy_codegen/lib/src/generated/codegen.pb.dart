///
//  Generated code. Do not modify.
//  source: codegen.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceName', protoName: 'serviceName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closureJson', protoName: 'closureJson')
    ..hasRequiredFields = false
  ;

  ServiceRequest._() : super();
  factory ServiceRequest({
    $core.String? serviceName,
    $core.String? closureJson,
  }) {
    final _result = create();
    if (serviceName != null) {
      _result.serviceName = serviceName;
    }
    if (closureJson != null) {
      _result.closureJson = closureJson;
    }
    return _result;
  }
  factory ServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceRequest clone() => ServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceRequest copyWith(void Function(ServiceRequest) updates) => super.copyWith((message) => updates(message as ServiceRequest)) as ServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceRequest create() => ServiceRequest._();
  ServiceRequest createEmptyInstance() => create();
  static $pb.PbList<ServiceRequest> createRepeated() => $pb.PbList<ServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static ServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceRequest>(create);
  static ServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get closureJson => $_getSZ(1);
  @$pb.TagNumber(2)
  set closureJson($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClosureJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearClosureJson() => clearField(2);
}

class ServiceResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'libraries', entryClassName: 'ServiceResult.LibrariesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  ServiceResult._() : super();
  factory ServiceResult({
    $core.bool? success,
    $core.String? error,
    $core.Map<$core.String, $core.String>? libraries,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (error != null) {
      _result.error = error;
    }
    if (libraries != null) {
      _result.libraries.addAll(libraries);
    }
    return _result;
  }
  factory ServiceResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceResult clone() => ServiceResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceResult copyWith(void Function(ServiceResult) updates) => super.copyWith((message) => updates(message as ServiceResult)) as ServiceResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceResult create() => ServiceResult._();
  ServiceResult createEmptyInstance() => create();
  static $pb.PbList<ServiceResult> createRepeated() => $pb.PbList<ServiceResult>();
  @$core.pragma('dart2js:noInline')
  static ServiceResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceResult>(create);
  static ServiceResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get libraries => $_getMap(2);
}


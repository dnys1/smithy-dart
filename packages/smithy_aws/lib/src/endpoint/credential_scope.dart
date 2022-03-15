import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

part 'credential_scope.g.dart';

/// {@template smithy_aws.credential_scope}
/// Signature version 4 credential scope information
/// {@endtemplate}
@JsonSerializable()
class CredentialScope {
  /// {@macro smithy_aws.credential_scope}
  const CredentialScope({
    this.region,
    this.service,
  });

  factory CredentialScope.fromJson(Map<String, Object?> json) =>
      _$CredentialScopeFromJson(json);

  /// Signing region
  final String? region;

  /// Signing service name
  final String? service;

  /// Zone value overrides for use in [runZoned].
  Map<Object?, Object?> get zoneValues => {
        #sigV4Region: region,
        #sigV4Service: service,
      };
}

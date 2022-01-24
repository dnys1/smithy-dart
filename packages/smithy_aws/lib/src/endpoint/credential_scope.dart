import 'package:json_annotation/json_annotation.dart';

part 'credential_scope.g.dart';

@JsonSerializable()
class CredentialScope {
  const CredentialScope({
    this.region,
    this.service,
  });

  factory CredentialScope.fromJson(Map<String, Object?> json) =>
      _$CredentialScopeFromJson(json);

  final String? region;
  final String? service;
}

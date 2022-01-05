// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_checksum_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpChecksumTrait _$HttpChecksumTraitFromJson(Map<String, dynamic> json) =>
    HttpChecksumTrait(
      requestChecksumRequired: json['requestChecksumRequired'] as bool,
      requestAlgorithmMember: json['requestAlgorithmMember'] as String?,
      requestValidationModeMember:
          json['requestValidationModeMember'] as String?,
      responseAlgorithms: (json['responseAlgorithms'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HttpChecksumTraitToJson(HttpChecksumTrait instance) =>
    <String, dynamic>{
      'requestChecksumRequired': instance.requestChecksumRequired,
      'requestAlgorithmMember': instance.requestAlgorithmMember,
      'requestValidationModeMember': instance.requestValidationModeMember,
      'responseAlgorithms': instance.responseAlgorithms,
    };

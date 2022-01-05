import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy_ast/smithy_ast.dart';

part 'service_trait.g.dart';

/// Registers a service as an AWS service. This trait is required for all AWS
/// services modeled in Smithy.
@ShapeIdConverter()
@JsonSerializable()
class ServiceTrait with AWSSerializable implements Trait<ServiceTrait> {
  const ServiceTrait({
    required this.cloudFormationName,
    required this.arnNamespace,
    required this.sdkId,
    required this.cloudTrailEventSource,
    required this.endpointPrefix,
  });

  factory ServiceTrait.fromJson(Object? json) =>
      _$ServiceTraitFromJson((json as Map).cast());

  static const id = ShapeId(namespace: 'aws.api', shape: 'service');

  /// The AWS CloudFormation service name.
  ///
  /// When not set, this value defaults to the name of the service shape.
  final String cloudFormationName;

  /// The AWS ARN service namespace of the service.
  ///
  /// If not set, this value defaults to the name of the service shape
  /// converted to lowercase. This value is combined with resources contained
  /// within the service to form ARNs for resources. Only resources that
  /// explicitly define the 'aws.api#arnTemplate' trait are assigned ARNs,
  /// and their relative ARNs are combined with the service's arnNamespace to
  /// form an ARN.
  final String arnNamespace;

  /// The SDK service ID.
  ///
  /// This value is used to generate SDK class names.
  final String sdkId;

  /// The CloudTrail event source name of the service.
  final String cloudTrailEventSource;

  /// The endpoint prefix for the service.
  ///
  /// This value is not unique across services and it can change at any time.
  /// Therefore it MUST NOT be used to generate class names, namespaces, or
  /// for any other purpose that requires a static, unique identifier. The
  /// sdkId property should be used for those purposes.
  final String endpointPrefix;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        cloudFormationName,
        arnNamespace,
        sdkId,
        cloudTrailEventSource,
        endpointPrefix,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ServiceTraitToJson(this);

  @override
  ServiceTrait get value => this;
}

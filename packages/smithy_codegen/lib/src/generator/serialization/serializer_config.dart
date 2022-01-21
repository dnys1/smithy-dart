class SerializerConfig {
  const SerializerConfig({
    this.renameMembers = true,
    this.usePayload = true,
    this.usePrivateSymbols = true,
  });

  /// Config for test serializers.
  const SerializerConfig.test()
      : this(
          usePayload: false,
          renameMembers: false,
          usePrivateSymbols: false,
        );

  /// Config for generic JSON protocol.
  const SerializerConfig.genericJson()
      : this(
          usePayload: true,
          renameMembers: true,
          usePrivateSymbols: true,
        );

  /// Config for AWS JSON 1.0/1.1
  const SerializerConfig.awsJson()
      : this(
          usePayload: false,
          renameMembers: false,
          usePrivateSymbols: true,
        );

  final bool renameMembers;
  final bool usePayload;
  final bool usePrivateSymbols;
}

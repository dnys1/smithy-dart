class CodegenException implements Exception {
  const CodegenException(this.message);

  final String message;

  @override
  String toString() => 'CodegenException($message)';
}

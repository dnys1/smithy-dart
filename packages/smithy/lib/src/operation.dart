import 'package:smithy/smithy.dart';

/// An operation which belongs to a service.
///
/// See:
/// - [HttpOperation]
abstract class Operation<Input, Output, Result> {
  const Operation();

  /// The error types of the operation.
  List<SmithyError> get errorTypes;

  /// Runs the operation for [input].
  ///
  /// Specifying [client] or [useProtocol] overrides the default for the
  /// operation.
  Result run(
    Input input, {
    covariant Client? client,
    ShapeId? useProtocol,
  });
}

/// A constructor of [Output] from [T].
///
/// See:
/// - [JsonConstructor]
typedef Constructor<T extends Object?, Output> = Output Function(T);

/// A constructor of [Output] a JSON map, typically [Output.fromJson].
typedef JsonConstructor<Output> = Output Function(Map<String, Object?>);

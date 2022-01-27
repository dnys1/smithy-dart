// Generated code. DO NOT MODIFY.

library reserved_names.test.model.function;

import 'package:smithy/smithy.dart' as _i1;

class Function$ extends _i1.SmithyEnum<Function$> {
  const Function$._(int index, String name, String value)
      : super(index, name, value);

  const Function$.sdkUnknown(String value) : super.sdkUnknown(value);

  static const index$ = Function$._(0, 'index', 'INDEX_');

  /// All values of [Function$].
  static const values = <Function$>[Function$.index$];

  static const List<_i1.SmithySerializer<Function$>> serializers = [
    _i1.SmithyEnumSerializer('Function',
        values: values,
        sdkUnknown: Function$.sdkUnknown,
        supportedProtocols: [])
  ];
}

extension Function$Helpers on List<Function$> {
  /// Returns the value of [Function$] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Function$ byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Function$] whose value matches [value].
  Function$ byValue(String value) => firstWhere((el) => el.value == value,
      orElse: () => Function$.sdkUnknown(value));
}

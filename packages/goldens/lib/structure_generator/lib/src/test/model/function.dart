// Generated code. DO NOT MODIFY.

library structure_generator.test.model.function;

import 'package:smithy/smithy.dart' as _i1;

class TestFunction extends _i1.SmithyEnum<TestFunction> {
  const TestFunction._(int index, String name, String value)
      : super(index, name, value);

  const TestFunction._sdkUnknown(String value) : super.sdkUnknown(value);

  static const index_ = TestFunction._(0, 'index', 'INDEX_');

  /// All values of [TestFunction].
  static const values = <TestFunction>[TestFunction.index_];

  static const List<_i1.SmithySerializer<TestFunction>> serializers = [
    _i1.SmithyEnumSerializer('Function',
        values: values,
        sdkUnknown: TestFunction._sdkUnknown,
        supportedProtocols: [])
  ];
}

extension TestFunctionHelpers on List<TestFunction> {
  /// Returns the value of [TestFunction] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TestFunction byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TestFunction] whose value matches [value].
  TestFunction byValue(String value) => firstWhere((el) => el.value == value);
}

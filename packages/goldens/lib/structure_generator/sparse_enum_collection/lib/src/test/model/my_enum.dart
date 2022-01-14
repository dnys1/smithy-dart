// Generated code. DO NOT MODIFY.

library sparse_enum_collection.test.model.my_enum;

import 'package:smithy/smithy.dart' as _i1;

class MyEnum extends _i1.SmithyEnum<MyEnum> {
  const MyEnum._(int index, String name, String value)
      : super(index, name, value);

  const MyEnum.sdkUnknown(String value) : super.sdkUnknown(value);

  static const variant1 = MyEnum._(0, 'Variant1', 'rawValue1');

  static const variant2 = MyEnum._(1, 'Variant2', 'rawValue2');

  /// All values of [MyEnum].
  static const values = <MyEnum>[MyEnum.variant1, MyEnum.variant2];
}

extension MyEnumByValue on List<MyEnum> {
  /// Returns the value of [MyEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MyEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MyEnum] whose value matches [value].
  MyEnum byValue(String value) => firstWhere((el) => el.value == value,
      orElse: () => MyEnum.sdkUnknown(value));
}

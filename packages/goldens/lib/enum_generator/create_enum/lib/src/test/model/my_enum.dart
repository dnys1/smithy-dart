// Generated code. DO NOT MODIFY.

library goldens.test.model.my_enum;

import 'dart:core' as _i0;

import 'package:smithy/smithy.dart' as _i1;

class MyEnum extends _i1.SmithyEnum<MyEnum> {
  const MyEnum._(_i0.int index, _i0.String name, _i0.String value)
      : super(index, name, value);

  const MyEnum.sdkUnknown(_i0.String value) : super.sdkUnknown(value);

  /// Documentation for BAR
  static const bar = MyEnum._(0, 'bar', 'BAR');

  static const fooBazXap = MyEnum._(1, 'fooBazXap', 'FOO_BAZ@-. XAP - . ');

  /// All values of [MyEnum].
  static const values = <MyEnum>[MyEnum.bar, MyEnum.fooBazXap];
}

extension MyEnumByValue on _i0.List<MyEnum> {
  /// Returns the value of [MyEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MyEnum byName(_i0.String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MyEnum] whose value matches [value].
  MyEnum byValue(_i0.String value) => firstWhere((el) => el.value == value,
      orElse: () => MyEnum.sdkUnknown(value));
}

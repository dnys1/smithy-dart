// Code generated by smithy-dart. DO NOT EDIT!

library example.model.my_enum;

import 'package:smithy/smithy.dart' as _i0;

/// Really long multi-line
/// Documentation for the enum
class MyEnum extends _i0.SmithyEnum<MyEnum> {
  const MyEnum._(int index, String name, String value)
      : super(index, name, value);

  const MyEnum.unknown(String value) : super.unknown(value);

  /// Documentation for BAR
  static const bar = MyEnum._(0, 'bar', 'BAR');
  static const fooBazXap = MyEnum._(1, 'fooBazXap', 'FOO_BAZ@-. XAP - . ');

  /// All values of [MyEnum].
  static List<MyEnum> values = [
    bar,
    fooBazXap,
  ];

  @override
  String toString() => value;
}

extension $MyEnum on List<MyEnum> {
  MyEnum? byName(String? name) => firstWhereOrNull((el) => el.name == name);

  MyEnum? byValue(String? value) {
    if (value == null) return null;
    return firstWhere(
      (el) => el.value == value,
      orElse: () => MyEnum.unknown(value),
    );
  }
}

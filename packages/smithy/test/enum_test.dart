import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

class _MyEnum extends SmithyEnum<_MyEnum> {
  const _MyEnum._(int index, String name, String value)
      : super(index, name, value);

  const _MyEnum._sdkUnknown(String value) : super.sdkUnknown(value);

  static const bar = _MyEnum._(0, 'BAR', 'Bar');

  static const baz = _MyEnum._(1, 'BAZ', 'Baz');

  static const foo = _MyEnum._(2, 'FOO', 'Foo');

  /// All values of [_MyEnum].
  static const values = <_MyEnum>[
    _MyEnum.bar,
    _MyEnum.baz,
    _MyEnum.foo,
  ];
}

extension _MyEnumHelpers on List<_MyEnum> {
  /// Returns the value of [_MyEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  _MyEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [_MyEnum] whose value matches [value].
  _MyEnum byValue(String value) => firstWhere((el) => el.value == value,
      orElse: () => _MyEnum._sdkUnknown(value));
}

void main() {
  group('SmithyEnum', () {
    test('can switch', () {
      _MyEnum getEnum() => _MyEnum.bar;
      switch (getEnum()) {
        case _MyEnum.bar:
          break;
        default:
          fail('Did not switch correctly');
      }
    });

    test('byName', () {
      expect(
        _MyEnum.values.byName('foo'),
        equals(_MyEnum.foo),
      );
    });

    test('byValue', () {
      expect(
        _MyEnum.values.byValue('Foo'),
        equals(_MyEnum.foo),
      );
    });

    test('byValue (unknown)', () {
      final unknown = _MyEnum.values.byValue('UNKNOWN');
      expect(
        unknown.value,
        equals('UNKNOWN'),
      );
    });
  });
}

import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Convert 10 MT to LB', () {
    final value = convertWeight(Uom.mt, Uom.lb, 10);
    assert(
      value == 22046,
      'Expected converted value to be 22046 but it was $value',
    );
  });

  test('Convert 10 LB to MT', () {
    final value = convertWeight(Uom.lb, Uom.mt, 10);
    assert(
      value == 0.0045359290944,
      'Expected converted value to be 0.0045359290944 but it was $value',
    );
  });

  test('Convert 10 KG to LB', () {
    final value = convertWeight(Uom.kg, Uom.lb, 10);
    assert(
      value == 22,
      'Expected converted value to be 22 but it was $value',
    );
  });

  test('Convert 10 LB to KG', () {
    final value = convertWeight(Uom.lb, Uom.kg, 10);
    assert(
      value == 4.5359290943564,
      'Expected converted value to be 4.5359290943564 but it was $value',
    );
  });

  test('Convert 10 LB to LB', () {
    final value = convertWeight(Uom.lb, Uom.lb, 10);
    assert(
      value == 10,
      'Expected converted value to be 10 but it was $value',
    );
  });

  test('Convert 10 GT to NT', () {
    final value = convertWeight(Uom.gt, Uom.nt, 10);
    assert(
      value == 11.200,
      'Expected converted value to be 11.200 but it was $value',
    );
  });

  test('Convert 10 EA to LB', () {
    expect(
      () => convertWeight(Uom.ea, Uom.lb, 10),
      throwsA(
        isA<Error>(),
      ),
    );
  });

  test('Convert 10 LB to LT', () {
    expect(
      () => convertWeight(Uom.lb, Uom.lt, 10),
      throwsA(
        isA<Error>(),
      ),
    );
  });

// I think we've got enough tests for the convertWeight function, let's move on
// to the convertRate function

  test('Convert Rate of 10/LB to MT', () {
    final value = convertRate(Uom.lb, Uom.mt, 10);
    assert(
      value == 22046.2000000,
      'Expected converted value to be 22046.2000000 but it was $value',
    );
  });

  test('Convert Rate of 16927/LB to MT', () {
    final value = convertRate(Uom.lb, Uom.mt, 16927);
    assert(
      value == 37317602.7400000,
      'Expected converted value to be 37317602.7400000 but it was $value',
    );
  });

  test('Convert Rate of 0.1536/LB to MT', () {
    final value = convertRate(Uom.lb, Uom.mt, 0.1536);
    assert(
      value == 338.62963200000,
      'Expected converted value to be 338.62963200000 but it was $value',
    );
  });

  test('Convert Rate of 927621456.1723981/LB to MT', () {
    final value = convertRate(Uom.lb, Uom.mt, 927621456.1723981);
    assert(
      value == 2045052814706.7922992220000,
      'Expected converted value to be 2045052814706.7922992220000'
      ' but it was $value',
    );
  });

  test('Convert Rate of 0.00000000001/LB to MT', () {
    final value = convertRate(Uom.lb, Uom.mt, 0.00000000001);
    assert(
      value == 0.0000000220462,
      'Expected converted value to be 0.0000000220462 but it was $value',
    );
  });

  test('Convert Rate of 0.1/MT to LB', () {
    final value = convertRate(Uom.mt, Uom.lb, 0.1);
    assert(
      value == 0.0000,
      'Expected converted value to be 0.0000 but it was $value',
    );
  });

  test('Convert Rate of 1.11/KG to GT', () {
    final value = convertRate(Uom.kg, Uom.gt, 1.11);
    assert(
      value == 1127.8134,
      'Expected converted value to be 1127.8134 but it was $value',
    );
  });

  test('Convert Rate of 10/LB to LT', () {
    expect(
      () => convertRate(Uom.lb, Uom.lt, 10),
      throwsA(
        isA<Error>(),
      ),
    );
  });

  test('Convert Rate of 10/EA to LB', () {
    expect(
      () => convertRate(Uom.ea, Uom.lb, 10),
      throwsA(
        isA<Error>(),
      ),
    );
  });
}

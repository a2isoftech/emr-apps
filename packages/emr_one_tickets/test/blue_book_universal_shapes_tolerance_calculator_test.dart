import 'package:emr_one_tickets/screens/beams/blue_book_universal_shapes_tolerance_calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final calculator = BlueBookUniversalShapesToleranceCalculator();

  test('Height 0', () {
    final (minus, plus) = calculator.heightTolerance(0);
    expect(minus, -2.0);
    expect(plus, 3.0);
  });

  test('Height 180', () {
    final (minus, plus) = calculator.heightTolerance(180);
    expect(minus, -2.0);
    expect(plus, 3.0);
  });

  test('Height 180.1', () {
    final (minus, plus) = calculator.heightTolerance(180.1);
    expect(minus, -2.0);
    expect(plus, 4.0);
  });

  test('Height 400', () {
    final (minus, plus) = calculator.heightTolerance(400);
    expect(minus, -2.0);
    expect(plus, 4.0);
  });

  test('Height 400.1', () {
    final (minus, plus) = calculator.heightTolerance(400.1);
    expect(minus, -3.0);
    expect(plus, 5.0);
  });

  test('Height 700', () {
    final (minus, plus) = calculator.heightTolerance(700);
    expect(minus, -3.0);
    expect(plus, 5.0);
  });

  test('Height 700.1', () {
    final (minus, plus) = calculator.heightTolerance(700.1);
    expect(minus, -5.0);
    expect(plus, 5.0);
  });

  test('Height 1000', () {
    final (minus, plus) = calculator.heightTolerance(1000);
    expect(minus, -5.0);
    expect(plus, 5.0);
  });

  test('Flange width 0', () {
    final (minus, plus) = calculator.flangeWidthTolerance(0);
    expect(minus, -1.0);
    expect(plus, 4.0);
  });

  test('Flange width 110', () {
    final (minus, plus) = calculator.flangeWidthTolerance(110);
    expect(minus, -1.0);
    expect(plus, 4.0);
  });

  test('Flange width 110.1', () {
    final (minus, plus) = calculator.flangeWidthTolerance(110.1);
    expect(minus, -2.0);
    expect(plus, 4.0);
  });

  test('Flange width 210', () {
    final (minus, plus) = calculator.flangeWidthTolerance(210);
    expect(minus, -2.0);
    expect(plus, 4.0);
  });

  test('Flange width 210.1', () {
    final (minus, plus) = calculator.flangeWidthTolerance(210.1);
    expect(minus, -4.0);
    expect(plus, 4.0);
  });

  test('Flange width 325', () {
    final (minus, plus) = calculator.flangeWidthTolerance(325);
    expect(minus, -4.0);
    expect(plus, 4.0);
  });

  test('Flange width 325.1', () {
    final (minus, plus) = calculator.flangeWidthTolerance(325.1);
    expect(minus, -5.0);
    expect(plus, 6.0);
  });

  test('Flange width 1000', () {
    final (minus, plus) = calculator.flangeWidthTolerance(1000);
    expect(minus, -5.0);
    expect(plus, 6.0);
  });

  test('Web thickness 0', () {
    final (minus, plus) = calculator.webThicknessTolerance(0);
    expect(minus, -0.7);
    expect(plus, 0.7);
  });

  test('Web thickness 6.9', () {
    final (minus, plus) = calculator.webThicknessTolerance(6.9);
    expect(minus, -0.7);
    expect(plus, 0.7);
  });

  test('Web thickness 7', () {
    final (minus, plus) = calculator.webThicknessTolerance(7);
    expect(minus, -1);
    expect(plus, 1);
  });

  test('Web thickness 9.9', () {
    final (minus, plus) = calculator.webThicknessTolerance(9.9);
    expect(minus, -1.0);
    expect(plus, 1.0);
  });

  test('Web thickness 10', () {
    final (minus, plus) = calculator.webThicknessTolerance(10);
    expect(minus, -1.5);
    expect(plus, 1.5);
  });

  test('Web thickness 19.9', () {
    final (minus, plus) = calculator.webThicknessTolerance(19.9);
    expect(minus, -1.5);
    expect(plus, 1.5);
  });

  test('Web thickness 20', () {
    final (minus, plus) = calculator.webThicknessTolerance(20);
    expect(minus, -2);
    expect(plus, 2);
  });

  test('Web thickness 39.9', () {
    final (minus, plus) = calculator.webThicknessTolerance(39.9);
    expect(minus, -2);
    expect(plus, 2);
  });

  test('Web thickness 40', () {
    final (minus, plus) = calculator.webThicknessTolerance(40);
    expect(minus, -2.5);
    expect(plus, 2.5);
  });

  test('Web thickness 59.9', () {
    final (minus, plus) = calculator.webThicknessTolerance(59.9);
    expect(minus, -2.5);
    expect(plus, 2.5);
  });

  test('Web thickness 60', () {
    final (minus, plus) = calculator.webThicknessTolerance(60);
    expect(minus, -3);
    expect(plus, 3);
  });

  test('Web thickness 100', () {
    final (minus, plus) = calculator.webThicknessTolerance(100);
    expect(minus, -3);
    expect(plus, 3);
  });

  test('Flange thickness 0', () {
    final (minus, plus) = calculator.flangeThicknessTolerance(0);
    expect(minus, -0.5);
    expect(plus, 1.5);
  });

  test('Flange thickness 6.4', () {
    final (minus, plus) = calculator.flangeThicknessTolerance(6.4);
    expect(minus, -0.5);
    expect(plus, 1.5);
  });

  test('Flange thickness 6.5', () {
    final (minus, plus) = calculator.flangeThicknessTolerance(6.5);
    expect(minus, -1);
    expect(plus, 2);
  });

  test('Flange thickness 9.9', () {
    final (minus, plus) = calculator.flangeThicknessTolerance(9.9);
    expect(minus, -1);
    expect(plus, 2);
  });

  test('Flange thickness 9.9', () {
    final (minus, plus) = calculator.flangeThicknessTolerance(9.9);
    expect(minus, -1);
    expect(plus, 2);
  });
}

import 'package:emr_one_crm/extensions/extensions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  test('parseIconName returns currency symbols', () {
    expect('dollarSign'.parseIconName(), FontAwesomeIcons.dollarSign);
    expect('euroSign'.parseIconName(), FontAwesomeIcons.euroSign);
    expect('sterlingSign'.parseIconName(), FontAwesomeIcons.sterlingSign);
  });

  test('parseIconName for an unmapped symbol', () {
    expect(() => 'apple'.parseIconName(), throwsException);
  });
}

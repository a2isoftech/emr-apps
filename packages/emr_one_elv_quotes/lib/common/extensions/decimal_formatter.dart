import 'package:flutter/services.dart';

class DecimalInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Allow empty input
    if (newValue.text.isEmpty) {
      return newValue;
    }

    // Allow valid decimal numbers with optional negative sign
    if (RegExp(r'^-?\d{0,2}?(\.\d{0,2})?$').hasMatch(newValue.text)) {
      // Check the value range
      if (newValue.text == '-') {
        return newValue;
      }
      final newValueDouble = double.tryParse(newValue.text);
      if (newValueDouble != null &&
          newValueDouble >= -90 &&
          newValueDouble <= 90) {
        return newValue;
      }
    }

    // If the input is not valid, revert to the old value
    return oldValue;
  }
}

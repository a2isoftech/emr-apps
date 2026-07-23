extension Mod10ValidatorExtension on String {
  bool isValidMod10Value() {
    if (isEmpty || !RegExp(r'^\d+$').hasMatch(this)) {
      return false; // must be digits only
    }

    var sum = 0;
    var doubleDigit = false;

    for (var i = length - 1; i >= 0; i--) {
      var digit = int.parse(this[i]);

      if (doubleDigit) {
        digit *= 2;
        if (digit > 9) digit -= 9;
      }

      sum += digit;
      doubleDigit = !doubleDigit;
    }

    return sum % 10 == 0;
  }
}

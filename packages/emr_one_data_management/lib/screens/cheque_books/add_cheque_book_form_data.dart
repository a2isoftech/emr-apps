import 'package:flutter/material.dart';

class AddChequeBookFormData {
  AddChequeBookFormData({
    int? startNumber,
    String? uniqueNumbers,
    int numberOfDigits = 6,
  }) {
    this.startNumber = ValueNotifier(startNumber);
    this.uniqueNumbers = ValueNotifier(uniqueNumbers);
    this.numberOfDigits = ValueNotifier(numberOfDigits);
  }

  late final ValueNotifier<int?> startNumber;

  late final ValueNotifier<String?> uniqueNumbers;

  late final ValueNotifier<int> numberOfDigits;
}

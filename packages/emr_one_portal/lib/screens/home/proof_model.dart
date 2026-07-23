class ProofModel {
  ProofModel({required this.expiryDateString}) {
    if (expiryDateString != null && expiryDateString!.isNotEmpty) {
      expiryDate = DateTime.parse(expiryDateString!);
      isMissing = false;
      if (expiryDate!.compareTo(DateTime.now()) < 0) {
        isExpired = true;
      } else {
        isExpired = false;
      }
      wouldExpireWithin3Months = checkDateWithinNext3Months(expiryDate!);
    } else {
      expiryDate = null;
      isMissing = true;
      isExpired = false;
      wouldExpireWithin3Months = false;
    }
  }

  final String? expiryDateString;
  DateTime? expiryDate;
  late bool isMissing;
  late bool isExpired;
  late bool wouldExpireWithin3Months;

  bool checkDateWithinNext3Months(DateTime date) {
    final currentDate = DateTime.now();
    final threeMonthsFromNow = currentDate.add(const Duration(days: 90));

    return date.isAfter(currentDate) && date.isBefore(threeMonthsFromNow);
  }
}

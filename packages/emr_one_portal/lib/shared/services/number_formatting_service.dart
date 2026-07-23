import 'package:intl/intl.dart';

class NumberFormattingService {
  static String formatToThousands(double amount, String activeLocale) {
    var formatter = NumberFormat('#,##,000');
    if (activeLocale.isNotEmpty) {
      formatter = NumberFormat.decimalPatternDigits(
        locale: activeLocale,
        decimalDigits: 2,
      );
    }

    return formatter.format(amount);
  }
}

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class DateToStringHelpers {
  static String formatDateByLocale(DateTime dateToFormat, String activeLocale) {
    initializeDateFormatting(activeLocale, '');

    if (activeLocale == 'en_US') {
      return DateFormat('MM/dd/yyyy').format(dateToFormat);
    }

    return DateFormat('dd/MM/yyyy').format(dateToFormat);
  }

  static String customFormattedDateForCard(
    DateTime dateToFormat,
    String locale,
  ) {
    final formattedDate = formatDateByLocale(dateToFormat, locale);
    return formattedDate.replaceAll('/', '.');
  }
}

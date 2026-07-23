import 'dart:io';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class DateToStringHelpers {
  final String defaultLocale = Platform.localeName;

  static String formatDateByLocale(DateTime dateToFormat) {
    initializeDateFormatting(Platform.localeName, '');

    if (Platform.localeName == 'en_US') {
      return DateFormat('MM/dd/yyyy').format(dateToFormat.toLocal());
    }

    return DateFormat('dd/MM/yyyy').format(dateToFormat.toLocal());
  }

  static String customFormattedDateForCard(DateTime dateToFormat) {
    final formattedDate = formatDateByLocale(dateToFormat);
    return formattedDate.replaceAll('/', '.');
  }
}

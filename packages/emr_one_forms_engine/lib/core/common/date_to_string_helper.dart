import 'dart:io';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class DateToStringHelpers {
  final String defaultLocale = Platform.localeName;

  static String formatDateByLocale(DateTime dateToFormat) {
    initializeDateFormatting(Platform.localeName, '');
    return (DateFormat.yMd(Platform.localeName)
        .format(dateToFormat)
        .toString());
  }

  static String customFormattedDateForCard(DateTime dateToFormat) {
    var formattedDate = formatDateByLocale(dateToFormat);
    return formattedDate.replaceAll('/', '.');
  }

  static String customFormattedDateForSearch(DateTime dateToFormat) {
    var formattedDate = formatDateByLocale(dateToFormat);
    return formattedDate.replaceAll('/', '-');
  }
}

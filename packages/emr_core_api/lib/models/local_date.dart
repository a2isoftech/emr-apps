class LocalDate extends DateTime {
  LocalDate(super.year, super.month, super.day);

  factory LocalDate.fromJson(String json) {
    final dateTime = DateTime.parse(json);

    return LocalDate(dateTime.year, dateTime.month, dateTime.day);
  }

  static String toJson(DateTime date) =>
      date.toIso8601String().split('T').first;
}

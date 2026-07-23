class CurrentFilters {
  CurrentFilters({
    required this.zone,
    required this.date,
    required this.area,
  });

  final String date;
  final String zone;
  final String area;

  DateTime dateAsUtc() {
    final dateTime = DateTime.parse(date);
    return DateTime.utc(dateTime.year, dateTime.month, dateTime.day);
  }
}

extension LocalTime on DateTime {
  DateTime getLocalTime() {
    return add(DateTime.now().timeZoneOffset);
  }
}

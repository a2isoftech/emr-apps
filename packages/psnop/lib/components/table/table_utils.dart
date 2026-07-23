class TableUtils {
  static DateTime endDate({
    required DateTime date,
    required int weeks,
    bool addYear = true,
  }) {
    return date.add(
      Duration(
        days: addYear ? 365 : (weeks * 7) - 1,
      ),
    );
  }

  static DateTime startDate({
    required DateTime date,
  }) {
    return date.add(
      const Duration(
        days: -(12 * 30),
      ),
    );
  }
}

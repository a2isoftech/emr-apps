class SelectedDates {
  SelectedDates.date({this.date}) {
    _type = SelectedDateType.date;
    dateRange = null;
  }

  SelectedDates.dateRange({this.dateRange}) {
    _type = SelectedDateType.dateRange;
    date = null;
  }

  SelectedDateType _type = SelectedDateType.date;
  SelectedDateType get type => _type;

  late DateTime? date;
  late DateRange? dateRange;
}

class DateRange {
  DateRange({required this.start, required this.end});

  final DateTime start;
  final DateTime end;
}

enum SelectedDateType { date, dateRange }

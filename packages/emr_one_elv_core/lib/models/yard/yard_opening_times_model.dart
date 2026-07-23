class YardOpeningTimesModel {
  YardOpeningTimesModel({
    this.weekday,
    this.openingTime,
    this.closingTime,
  });

  DayOfWeek? weekday;
  String? openingTime;
  String? closingTime;

  static YardOpeningTimesModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return YardOpeningTimesModel(
        weekday: DayOfWeek.fromJson(json['weekday']),
        openingTime: json['openingTime'] as String?,
        closingTime: json['closingTime'] as String?,
      );
    }
    return null;
  }

  static List<YardOpeningTimesModel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <YardOpeningTimesModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = YardOpeningTimesModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class DayOfWeek {
  /// Instantiate a new enum with the provided [value].
  const DayOfWeek._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sunday = DayOfWeek._('Sunday');
  static const monday = DayOfWeek._('Monday');
  static const tuesday = DayOfWeek._('Tuesday');
  static const wednesday = DayOfWeek._('Wednesday');
  static const thursday = DayOfWeek._('Thursday');
  static const friday = DayOfWeek._('Friday');
  static const saturday = DayOfWeek._('Saturday');

  /// List of all possible values in this [enum][DayOfWeek].
  static const values = <DayOfWeek>[
    sunday,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
  ];

  static DayOfWeek? fromJson(dynamic value) =>
      DayOfWeekTypeTransformer().decode(value);
}

class DayOfWeekTypeTransformer {
  factory DayOfWeekTypeTransformer() =>
      _instance ??= const DayOfWeekTypeTransformer._();

  const DayOfWeekTypeTransformer._();

  String encode(DayOfWeek data) => data.value;

  DayOfWeek? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'Sunday':
          return DayOfWeek.sunday;
        case 'Monday':
          return DayOfWeek.monday;
        case 'Tuesday':
          return DayOfWeek.tuesday;
        case 'Wednesday':
          return DayOfWeek.wednesday;
        case 'Thursday':
          return DayOfWeek.thursday;
        case 'Friday':
          return DayOfWeek.friday;
        case 'Saturday':
          return DayOfWeek.saturday;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  static DayOfWeekTypeTransformer? _instance;
}

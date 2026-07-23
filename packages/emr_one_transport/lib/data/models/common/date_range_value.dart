import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'date_range_value.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class DateRangeValue {
  DateRangeValue({
    this.startDate,
    this.endDate,
  });

  factory DateRangeValue.fromJson(Map<String, dynamic> json) =>
      _$DateRangeValueFromJson(json);

  Map<String, dynamic> toJson() => _$DateRangeValueToJson(this);

  DateTime? startDate;
  DateTime? endDate;
}

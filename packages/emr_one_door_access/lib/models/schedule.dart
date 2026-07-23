import 'package:emr_one_door_access/models/attribute_item.dart';

class Schedule {
  Schedule({
    required this.token,
    required this.name,
    required this.description,
    required this.scheduleDefinition,
    required this.attribute,
    required this.exceptionScheduleDefinition,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      token: json['token'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      scheduleDefinition: json['scheduleDefinition'] as String? ?? '',
      attribute: (json['attribute'] as List<dynamic>? ?? [])
          .map((item) => AttributeItem.fromJson(item as Map<String, dynamic>))
          .toList(),
      exceptionScheduleDefinition:
          json['exceptionScheduleDefinition'] as String? ?? '',
    );
  }
  static const String standardAlways = 'standard_always';

  final String token;
  final String name;
  final String description;
  final String scheduleDefinition;
  final List<AttributeItem> attribute;
  final String exceptionScheduleDefinition;

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'name': name,
      'description': description,
      'scheduleDefinition': scheduleDefinition,
      'attribute': attribute.map((item) => item.toJson()).toList(),
      'exceptionScheduleDefinition': exceptionScheduleDefinition,
    };
  }
}

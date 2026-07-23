import 'package:json_annotation/json_annotation.dart';

class BaseEntity {
  BaseEntity({
    required this.id,
  });

  late String id;

  @JsonKey(includeFromJson: true, includeToJson: false)
  String? changeVector;
}

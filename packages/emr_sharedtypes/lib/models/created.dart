import 'package:json_annotation/json_annotation.dart';

part 'created.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Created {
  Created({
    required this.userInfoId,
    this.userName = '',
    DateTime? at, // Optional positional or named parameter
  }) : at = at ?? DateTime.now();

  factory Created.fromJson(Map<String, dynamic> json) =>
      _$CreatedFromJson(json);

  Map<String, dynamic> toJson() => _$CreatedToJson(this);

  final String userInfoId;
  final String userName;
  final DateTime at;
}

import 'package:json_annotation/json_annotation.dart';

part 'modified.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Modified {
  Modified({
    required this.userInfoId,
    this.userName = '',
    DateTime? at, // Optional positional or named parameter
  }) : at = at ?? DateTime.now();

  factory Modified.fromJson(Map<String, dynamic> json) =>
      _$ModifiedFromJson(json);

  Map<String, dynamic> toJson() => _$ModifiedToJson(this);

  final String userInfoId;
  final String userName;
  final DateTime at;
}

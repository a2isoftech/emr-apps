import 'package:json_annotation/json_annotation.dart';

part 'change_history_model.g.dart';

@JsonSerializable()
class ChangeHistoryModel {
  ChangeHistoryModel(
      {required this.changeHistoryId,
      required this.tableName,
      required this.tableFriendlyName,
      required this.columnName,
      required this.columnFriendlyName,
      required this.modifiedDate,
      required this.oldValue,
      required this.newValue,
      required this.rowChangedId,
      required this.userName,});

  factory ChangeHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeHistoryModelFromJson(json);

  int changeHistoryId;
  String? tableName;
  String? tableFriendlyName;
  String? columnName;
  String? columnFriendlyName;
  DateTime? modifiedDate;
  String? oldValue;
  String? newValue;
  int? rowChangedId;
  String? userName;

  Map<String, dynamic> toJson() => _$ChangeHistoryModelToJson(this);
}

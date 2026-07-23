
import 'package:json_annotation/json_annotation.dart';

part 'useractioninfo.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class UserActionInfo {
  UserActionInfo(this.userInfoId, this.at, this.userName);

factory UserActionInfo.fromJson(Map<String, dynamic> json) =>
_$UserActionInfoFromJson(json);

Map<String, dynamic> toJson() => _$UserActionInfoToJson(this);

  final String? userInfoId;
  final String? at;
  final String? userName;
}

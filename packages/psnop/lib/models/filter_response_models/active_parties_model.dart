import 'package:json_annotation/json_annotation.dart';

part 'active_parties_model.g.dart';

@JsonSerializable()
class ActivePartiesModel {
  ActivePartiesModel({
    required this.partyAccountNo,
    this.partyName,
  });

  /// Connect the generated [_$ActivePartiesModelFromJson] function to the
  /// `fromJson` factory.
  factory ActivePartiesModel.fromJson(Map<String, dynamic> json) =>
      _$ActivePartiesModelFromJson(json);

  String partyAccountNo;
  String? partyName;
}

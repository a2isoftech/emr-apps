import 'package:json_annotation/json_annotation.dart';

part 'weight_taken.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ScaleResponse {
  ScaleResponse();

  factory ScaleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScaleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ScaleResponseToJson(this);

  String? id;
  String? type;
  Payload? payload;
}

@JsonSerializable(fieldRename: FieldRename.none)
class Payload {
  Payload({this.data});

  factory Payload.fromJson(Map<String, dynamic> json) =>
      _$PayloadFromJson(json);

  Map<String, dynamic> toJson() => _$PayloadToJson(this);

  Data? data;
}

@JsonSerializable(fieldRename: FieldRename.none)
class Data {
  Data({this.weightTaken, this.archivedWeight});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  WeightTaken? weightTaken;
  WeightTaken? archivedWeight;
}

@JsonSerializable(fieldRename: FieldRename.none)
class WeightTaken {
  WeightTaken({
    this.scaleIdentifier,
    this.value,
    this.uomCode,
    this.uomId,
    this.errMsg,
    this.isSteady,
    this.isArchivedWeight,
    this.serialNo,
    this.isPersistentError,
    this.hasSeenZero,
    this.consecutiveWeighingNumber,
  });
  factory WeightTaken.fromJson(Map<String, dynamic> json) =>
      _$WeightTakenFromJson(json);

  Map<String, dynamic> toJson() => _$WeightTakenToJson(this);
  String? scaleIdentifier;
  double? value;
  String? uomCode;
  int? uomId;
  String? errMsg;
  bool? isSteady;
  bool? isArchivedWeight;
  String? serialNo;
  bool? isPersistentError;
  bool? hasSeenZero;
  int? consecutiveWeighingNumber;
}

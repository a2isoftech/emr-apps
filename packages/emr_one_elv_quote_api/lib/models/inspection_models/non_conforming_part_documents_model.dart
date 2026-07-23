import 'package:json_annotation/json_annotation.dart';

part 'non_conforming_part_documents_model.g.dart';

@JsonSerializable()
class NonConformingPartDocumentsModel {
  NonConformingPartDocumentsModel({
    required this.partName,
    required this.updatedAt,
    this.path,
  });

  factory NonConformingPartDocumentsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NonConformingPartDocumentsModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NonConformingPartDocumentsModelToJson(this);

  final String partName;
  final DateTime updatedAt;
  final String? path;
}

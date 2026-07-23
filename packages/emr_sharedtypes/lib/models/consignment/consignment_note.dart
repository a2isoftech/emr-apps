import 'package:emr_sharedtypes/models/created.dart';
import 'package:emr_sharedtypes/models/modified.dart';
import 'package:json_annotation/json_annotation.dart';

part 'consignment_note.g.dart';

@JsonSerializable()
class ConsignmentNote {
  const ConsignmentNote({
    required this.code,
    required this.created,
    required this.modified,
    this.mediaUrl,
  });

  factory ConsignmentNote.fromJson(Map<String, dynamic> json) =>
      _$ConsignmentNoteFromJson(json);

  final String code;
  final String? mediaUrl;
  final Created created;
  final Modified modified;
  Map<String, dynamic> toJson() => _$ConsignmentNoteToJson(this);
}

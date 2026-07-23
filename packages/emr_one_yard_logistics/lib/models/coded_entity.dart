import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class CodedEntity extends DocumentBase {
  CodedEntity({
    required this.code,
    required super.id,
    required super.created,
    required super.modified,
  });

  final String code;
  String? changeVector;
}

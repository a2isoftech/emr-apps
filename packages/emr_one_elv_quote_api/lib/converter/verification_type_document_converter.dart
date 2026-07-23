import 'package:emr_one_elv_quote_api/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

class VerificationTypeDocumentConverter
    implements JsonConverter<VerificationTypeEnum, String> {
  const VerificationTypeDocumentConverter();

  @override
  VerificationTypeEnum fromJson(String json) {
    return VerificationTypeEnum.fromString(json);
  }

  @override
  String toJson(VerificationTypeEnum object) {
    return object.label;
  }
}

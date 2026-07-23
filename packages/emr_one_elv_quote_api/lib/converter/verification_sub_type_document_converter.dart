import 'package:emr_one_elv_quote_api/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

class VerificationSubTypeDocumentConverter
    implements JsonConverter<VerificationSubTypeEnum, String> {
  const VerificationSubTypeDocumentConverter();

  @override
  VerificationSubTypeEnum fromJson(String json) {
    return VerificationSubTypeEnum.fromString(json);
  }

  @override
  String toJson(VerificationSubTypeEnum object) {
    return object.label;
  }
}

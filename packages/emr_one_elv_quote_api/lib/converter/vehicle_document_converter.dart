import 'package:emr_one_elv_quote_api/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

class VehicleDocumentConverter
    implements JsonConverter<VehicleDocumentEnums, String> {
  const VehicleDocumentConverter();

  @override
  VehicleDocumentEnums fromJson(String json) {
    return VehicleDocumentEnums.fromString(json);
  }

  @override
  String toJson(VehicleDocumentEnums object) {
    return object.label;
  }
}

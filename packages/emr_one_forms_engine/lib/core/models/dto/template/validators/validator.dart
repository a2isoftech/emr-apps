import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';

abstract class ValidatorDTO {
  String? message;
  DataProviderReference? messageProvider;
  String? type;

  ValidatorDTO();

  void fromJson(Map<String, dynamic> json) {
    if (json['message'] != null) {
      message = json['message'];
    }

    if (json['messageProvider'] != null) {
      messageProvider = DataProviderReference.fromJson(json['messageProvider']);
    }

    if (json['type'] != null) {
      message = json['type'];
    }
  }
}

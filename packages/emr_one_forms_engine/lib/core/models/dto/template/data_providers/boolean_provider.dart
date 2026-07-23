import 'data_provider.dart';

class BooleanDataProviderDTO extends TemplateDataProviderDTO {
  final String value;
  final int? lengthGreaterThan;
  final int? lengthOf;
  final int? lengthLessThan;
  final dynamic equalTo;

  BooleanDataProviderDTO.fromJson(super.json)
    : value = json['value'] ?? '',
      lengthGreaterThan = json['lengthGreaterThan'],
      lengthOf = json['lengthOf'],
      lengthLessThan = json['lengthLessThan'],
      equalTo = json['equalTo'],
      super.fromJson();
}

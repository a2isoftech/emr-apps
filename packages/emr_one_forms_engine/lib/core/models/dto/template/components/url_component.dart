import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';

class UrlComponentDTO extends TemplateComponentDTO {
  String? placeholder;
  String? message;
  String? url;

  UrlComponentDTO(super.id, this.placeholder, this.message, this.url);

  UrlComponentDTO.fromJson(super.json)
    : placeholder = json['placeholder'],
      message = json['message'],
      url = json['url'],
      super.fromJson();
}

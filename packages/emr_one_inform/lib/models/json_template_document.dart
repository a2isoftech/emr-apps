class JsonTemplateDocument {
  JsonTemplateDocument({
    required this.templateId,
    required this.document,
  });

  factory JsonTemplateDocument.fromJson(Map<String, dynamic> json) =>
      _$JsonTemplateDocumentFromJson(json);

  String templateId;
  String document;

  Map<String, dynamic> toJson() => _$JsonTemplateDocumentToJson(this);
}

JsonTemplateDocument _$JsonTemplateDocumentFromJson(
  Map<String, dynamic> json,
) =>
    JsonTemplateDocument(
      templateId: json['templateId'] as String,
      document: json['document'] as String,
    );

Map<String, dynamic> _$JsonTemplateDocumentToJson(
  JsonTemplateDocument instance,
) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'document': instance.document,
    };

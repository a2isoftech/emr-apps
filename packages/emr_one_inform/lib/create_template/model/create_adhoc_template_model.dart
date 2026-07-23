import 'package:emr_one_inform/create_template/model/template_section.dart';

class CreateAdhocTemplateRequest {
  CreateAdhocTemplateRequest({
    required this.referenceId,
    required this.description,
    required this.isDigitalSignatureRequired,
    this.sections,
    this.isQuickTemplate = false,
    this.clientName,
  });

  factory CreateAdhocTemplateRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAdhocTemplateRequestFromJson(json);

  final String? referenceId;
  final String? description;
  final List<TemplateSection>? sections;
  final bool isQuickTemplate;
  final bool isDigitalSignatureRequired;
  final String? clientName;

  Map<String, dynamic> toJson() => createAdhocTemplateRequestToJson(this);
}

CreateAdhocTemplateRequest _$CreateAdhocTemplateRequestFromJson(
  Map<String, dynamic> json,
) =>
    CreateAdhocTemplateRequest(
      referenceId: json['referenceId'] as String?,
      description: json['description'] as String?,
      isQuickTemplate: json['isQuickTemplate'] as bool,
      isDigitalSignatureRequired: json['isDigitalSignatureRequired'] as bool,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => TemplateSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      clientName: json['clientName'] as String?,
    );

Map<String, dynamic> createAdhocTemplateRequestToJson(
  CreateAdhocTemplateRequest instance,
) =>
    <String, dynamic>{
      'referenceId': instance.referenceId,
      'description': instance.description,
      'isQuickTemplate': instance.isQuickTemplate,
      'isDigitalSignatureRequired': instance.isDigitalSignatureRequired,
      'sections': instance.sections,
      'clientName': instance.clientName,
    };

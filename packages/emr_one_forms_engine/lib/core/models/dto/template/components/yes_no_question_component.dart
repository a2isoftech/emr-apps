import 'package:emr_one_forms_engine/core/models/dto/template/validators/decode_validators.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/validator.dart';

import 'component.dart';

class YesNoQuestionComponentDTO extends TemplateComponentDTO {
  bool canCaptureImages = true;
  bool canCaptureNotes = true;
  List<ValidatorDTO>? validators;
  bool? showWarningLabel;

  YesNoQuestionComponentDTO(
    super.id,
    this.validators,
    this.showWarningLabel, {
    bool? canCaptureImages,
    bool? canCaptureNotes,
  }) {
    this.canCaptureImages = canCaptureImages ?? this.canCaptureImages;
    this.canCaptureNotes = canCaptureNotes ?? this.canCaptureNotes;
  }

  YesNoQuestionComponentDTO.fromJson(super.json)
    : canCaptureImages = json['canCaptureImages'] ?? true,
      canCaptureNotes = json['canCaptureNotes'] ?? true,
      showWarningLabel = json['showWarningLabel'],
      validators = json['validators'] == null
          ? null
          : decodeTemplateValidators(json['validators']),
      super.fromJson();
}

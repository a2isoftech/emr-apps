import 'package:emr_one_forms_engine/core/constants/enums.dart';
import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/models/service/service_models.dart';
import 'package:emr_one_forms_engine/core/services/services.dart';
import 'package:emr_one_forms_engine/core/store/store.dart';

abstract class YesNoQuestionAnswerValues {
  static const String yes = 'Yes';
  static const String no = 'No';
  static const String notApp = 'N/A';
  static const String sr = 'Self Repair';
}

abstract class YesNoQuestionProperties {
  static const String notes = 'notes';
  static const String capturedMedia = 'capturedMedia';

  static Map<String, dynamic> initialProperties() => {
    notes: '',
    capturedMedia: [],
  };
}

class YesNoQuestionComponent extends FormComponent {
  final String questionText;
  final bool canCaptureImages;
  final bool canCaptureNotes;
  List<ValidatorDTO>? validators;
  bool? showWarningLabel;

  String get notes => propertyValue(YesNoQuestionProperties.notes);

  set notes(String value) {
    changePropertyValue(YesNoQuestionProperties.notes, value);
    isValid = true;
  }

  bool isYesSelected = false;
  bool isNoSelected = false;
  bool isNotApplicableSelected = false;
  bool showNotes = false;
  bool hasNotes = false;
  bool isSelfRepairSelected = false;

  YesNoQuestionComponent.forState({
    required super.state,
    required YesNoQuestionComponentDTO super.component,
    YesNoQuestionInstanceDTO? instanceData,
    super.isValid,
  }) : questionText = component.title ?? '',
       canCaptureImages = component.canCaptureImages,
       canCaptureNotes = component.canCaptureNotes,
       validators = component.validators,
       showWarningLabel = component.showWarningLabel,
       super.forState(instanceData: instanceData) {
    if (instanceData?.answer != null) {
      _mapValue(instanceData!.answer!);
    }
    showNotes = instanceData?.notes?.isNotEmpty ?? false;
  }

  static FormDataProviderState generateState({
    required String id,
    String? initialValue,
    String? notes,
  }) => FormComponent.generateState(
    id: id,
    value: initialValue,
    properties: YesNoQuestionProperties.initialProperties()
      ..addAll({YesNoQuestionProperties.notes: notes ?? ''}),
  );

  void _mapValue(String newValue) {
    isYesSelected = false;
    isNoSelected = false;
    isNotApplicableSelected = false;
    isSelfRepairSelected = false;

    switch (newValue) {
      case YesNoQuestionAnswerValues.yes:
        isYesSelected = true;
        isValid = true;
        break;
      case YesNoQuestionAnswerValues.no:
        isNoSelected = true;
        break;
      case YesNoQuestionAnswerValues.notApp:
        isNotApplicableSelected = true;
        isValid = true;
        break;
      case YesNoQuestionAnswerValues.sr:
        isSelfRepairSelected = true;
        break;
      default:
        throw Exception('$newValue is not a valid state for YesNoQuestion');
    }
  }

  @override
  void changeValue(String newValue) {
    _mapValue(newValue);
    super.changeValue(newValue);
  }

  @override
  FormComponentInstanceDTO? getData() => YesNoQuestionInstanceDTO(
    componentId: id,
    answer: value,
    answeredBy: answeredBy,
    answeredByUuid: answeredByUuid,
    answerDate: answeredDate,
    answerDateLocal: answeredDateLocal,
    notes: notes,
    capturedMedia: capturedMedia
        .where((x) => x.file != null)
        .map(
          (e) => CapturedMediaDTO(
            path: e.file!.path,
            type: e.type.name,
            componentId: e.componentId,
            uuid: e.uniqueId,
          ),
        )
        .toList(),
  );

  Future<void> addNewMedia(List<CapturedMedia> media) async {
    final saveService = ServiceContainer().get<ISaveFormInstanceService>();
    await saveService.storeMedia(component: this, media: media);
  }

  Future<void> deleteMedia(List<CapturedMedia> media) async {
    final saveService = ServiceContainer().get<ISaveFormInstanceService>();
    await saveService.deleteMedia(component: this, media: media);
  }

  @override
  bool validate() {
    /// validate if we need to exit on no answers
    List<ValidatorDTO>? componentValidators = validators;
    if (componentValidators != null) {
      for (var err in componentValidators) {
        if (err.type == TemplateValidatorTypes.exitOnNo && value == 'No') {
          return false;
        }
        if (err.type == TemplateValidatorTypes.warningOnNo &&
            value == 'No' &&
            notes.isNotEmpty &&
            capturedMedia.isNotEmpty) {
          isValid = true;
        }
      }
    }
    // removed the isrequired check here as the yes/no/na questions are all required.
    if (((value == null || value == '')) ||
        (value == 'No' && (notes.isEmpty || capturedMedia.isEmpty)) ||
        (value == 'Self Repair' && notes.isEmpty) ||
        (value == 'Self Repair' && !hasRequiredImages())) {
      isValid = false;
    }
    return isValid;
  }

  bool hasRequiredImages() {
    var imageCount = capturedMedia
        .where((e) => e.type == CapturedMediaType.image)
        .toList();
    if (imageCount.length < 2) {
      return false;
    } else {
      return true;
    }
  }

  @override
  String? validationMessage;

  @override
  Future<void> addExistingMedia(Iterable<CapturedMedia> media) async {
    super.addExistingMedia(media);
    changePropertyValue(
      YesNoQuestionProperties.capturedMedia,
      capturedMedia.toList(),
    );
  }

  @override
  Future<void> removeExistingMedia(Iterable<CapturedMedia> media) async {
    super.removeExistingMedia(media);
    changePropertyValue(
      YesNoQuestionProperties.capturedMedia,
      capturedMedia.toList(),
    );
  }
}

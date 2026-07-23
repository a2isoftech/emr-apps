import 'package:emr_one_forms_engine/core/models/dto/instance/components/component_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/instance/components/rating_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/components/rating_component.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';
import 'package:emr_one_forms_engine/core/store/components/component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

class RatingComponent extends FormComponent {
  final String? label;
  final String? placeholder;
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;
  String answerText;

  bool isOneStarSelected = false;
  bool isTwoStarSelected = false;
  bool isThreeStarSelected = false;
  bool isFourStarSelected = false;
  bool isFiveStarSelected = false;

  RatingComponent.forState({
    required super.state,
    required RatingComponentDTO super.component,
    RatingInstanceDTO? instanceData,
    super.isValid,
  }) : label = component.title,
       placeholder = component.placeholder,
       placeholderProvider = component.placeholderProvider,
       validators = component.validators,
       answerText = instanceData?.answer ?? '',
       super.forState(instanceData: instanceData) {
    if (instanceData?.answer != null && instanceData?.answer != '') {
      _mapValue(instanceData!.answer!);
    }
  }

  static FormDataProviderState generateState(
    String id, {
    String? initialValue,
  }) => FormComponent.generateState(id: id, value: initialValue);

  @override
  void changeValue(String newValue) {
    _mapValue(newValue);
    super.changeValue(newValue);
  }

  void _mapValue(String newValue) {
    isOneStarSelected = false;
    isTwoStarSelected = false;
    isThreeStarSelected = false;
    isFourStarSelected = false;
    isFiveStarSelected = false;

    switch (newValue) {
      case RatingAnswerValues.zero:
        isValid = false;
        break;
      case RatingAnswerValues.one:
        isOneStarSelected = true;
        isValid = true;
        break;
      case RatingAnswerValues.two:
        isOneStarSelected = true;
        isTwoStarSelected = true;
        break;
      case RatingAnswerValues.three:
        isOneStarSelected = true;
        isTwoStarSelected = true;
        isThreeStarSelected = true;
        isValid = true;
        break;
      case RatingAnswerValues.four:
        isOneStarSelected = true;
        isTwoStarSelected = true;
        isThreeStarSelected = true;
        isFourStarSelected = true;
        break;
      case RatingAnswerValues.five:
        isOneStarSelected = true;
        isTwoStarSelected = true;
        isThreeStarSelected = true;
        isFourStarSelected = true;
        isFiveStarSelected = true;
        break;
      default:
        throw Exception('$newValue is not a valid state for Rating');
    }
  }

  @override
  FormComponentInstanceDTO? getData() => RatingInstanceDTO(
    componentId: id,
    answer: answerText,
    answerDate: answeredDate,
    answeredBy: answeredBy,
    answeredByUuid: answeredByUuid,
    answerDateLocal: answeredDateLocal,
  );

  @override
  bool validate() {
    List<ValidatorDTO>? componentValidators = validators;
    bool isComponentDataValid = true;
    if (componentValidators == null) return isComponentDataValid;
    for (var err in componentValidators) {
      if (err.type == TemplateValidatorTypes.rating &&
          !isRatingValid(err as RatingValidatorDTO)) {
        isValid = false;
        validationMessage = err.message;
        isComponentDataValid = false;
      }
    }
    return isComponentDataValid;
  }

  bool isRatingValid(RatingValidatorDTO validator) {
    if (answerText.isEmpty || answerText == '' || answerText == '.') {
      return false;
    }
    return true;
  }

  @override
  String? validationMessage;
}

abstract class RatingAnswerValues {
  static const String zero = '0';
  static const String one = '1';
  static const String two = '2';
  static const String three = '3';
  static const String four = '4';
  static const String five = '5';
}

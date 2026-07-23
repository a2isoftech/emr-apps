import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/store/components/component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

class CheckboxComponent extends FormComponent {
  final String questionText;
  final String? placeholder;
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;
  String? answerText;

  CheckboxComponent.forState({
    required super.state,
    required CheckboxComponentDTO super.component,
    CheckboxInstanceDTO? super.instanceData,
    super.isValid,
  }) : questionText = component.title ?? '',
       placeholder = component.placeholder,
       placeholderProvider = component.placeholderProvider,
       validators = component.validators,
       answerText = instanceData?.answer ?? '',
       super.forState();

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
    answerText = newValue;
    if ((isRequired && answerText != null && answerText!.isNotEmpty) ||
        (!isRequired)) {
      isValid = true;
    }
  }

  @override
  FormComponentInstanceDTO? getData() => CheckboxInstanceDTO(
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
      if (err.type == TemplateValidatorTypes.checkbox &&
          !isCheckboxTicked(err as CheckboxValidatorDTO)) {
        isValid = false;
        validationMessage = err.message;
        isComponentDataValid = false;
      }
    }
    return isComponentDataValid;
  }

  bool isCheckboxTicked(CheckboxValidatorDTO validator) {
    var result = answerText == 'true';
    return result;
  }

  @override
  String? validationMessage;
}

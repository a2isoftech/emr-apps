import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/services/services.dart';
import 'package:emr_one_forms_engine/core/store/store.dart';

class DropdownComponent extends FormComponent {
  final String questionText;
  final String? placeholder;
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;
  final String? hintText;
  String? selectedDropdownValue;
  String? dropdownDataProviderId;
  FormDataKeyedProviderBloc? dropdownDataProvider;

  DropdownComponent.forState({
    required super.state,
    required DropdownComponentDTO component,
    DropdownInstanceDTO? super.instanceData,
    super.isValid,
  }) : questionText = component.title ?? '',
       placeholder = component.placeholder,
       placeholderProvider = component.placeholderProvider,
       validators = component.validators,
       hintText = component.hintText,
       selectedDropdownValue = instanceData?.answer,
       super.forState(component: component) {
    if (component.dropdownDataProvider != null) {
      dropdownDataProviderId = component.dropdownDataProvider?.id;
      dropdownDataProvider =
          ServiceContainer().get<IFormDataProviderRepository>().getProvider(
                dropdownDataProviderId!,
              )
              as FormDataKeyedProviderBloc?;
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
    selectedDropdownValue = newValue;
    if ((isRequired &&
            selectedDropdownValue != null &&
            selectedDropdownValue!.isNotEmpty) ||
        (!isRequired)) {
      isValid = true;
    }
  }

  @override
  FormComponentInstanceDTO? getData() => DropdownInstanceDTO(
    componentId: id,
    answer: selectedDropdownValue,
    answerDate: answeredDate,
    answeredBy: answeredBy,
    answeredByUuid: answeredByUuid,
    answerDateLocal: answeredDateLocal,
  );

  @override
  bool validate() {
    List<ValidatorDTO>? componentValidators = validators;
    bool isComponentDataValid = true;
    for (var err in componentValidators!) {
      if (err.type == TemplateValidatorTypes.singleChoice &&
          !isDropDownRequired(err as DropdownValidatorDTO)) {
        isValid = false;
        validationMessage = err.message;
        isComponentDataValid = false;
      }
    }
    return isComponentDataValid;
  }

  @override
  String? validationMessage;

  bool isDropDownRequired(DropdownValidatorDTO validator) {
    if (selectedDropdownValue == null || selectedDropdownValue == '') {
      return false;
    }
    return true;
  }
}

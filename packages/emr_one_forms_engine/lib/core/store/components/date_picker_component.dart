import 'package:emr_one_forms_engine/core/models/dto/instance/components/component_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/instance/components/date_picker_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/components/date_picker_component.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';
import 'package:emr_one_forms_engine/core/store/components/component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';
import 'package:intl/intl.dart';

class DatePickerComponent extends FormComponent {
  final String? label;
  final String? placeholder;
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;
  String answerText;

  DatePickerComponent.forState({
    required super.state,
    required DatePickerComponentDTO super.component,
    DatePickerInstanceDTO? super.instanceData,
    super.isValid,
  }) : label = component.title,
       placeholder = component.placeholder,
       placeholderProvider = component.placeholderProvider,
       validators = component.validators,
       answerText = instanceData?.answer ?? '',
       super.forState();

  static FormDataProviderState generateState(String id) =>
      FormComponent.generateState(id: id);

  @override
  void changeValue(String newValue) {
    _mapValue(newValue);
    super.changeValue(newValue);
  }

  void _mapValue(String newValue) {
    answerText = newValue;
    if ((isRequired && answerText.isNotEmpty) || (!isRequired)) {
      isValid = true;
    }
  }

  @override
  FormComponentInstanceDTO? getData() => DatePickerInstanceDTO(
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
      if (err.type == TemplateValidatorTypes.date &&
          !isDateValid(err as DateValidatorDTO)) {
        isValid = false;
        validationMessage = err.message;
        isComponentDataValid = false;
      }
    }
    return isComponentDataValid;
  }

  bool isDateValid(DateValidatorDTO validator) {
    if (answerText.isEmpty || answerText == '' || answerText == '.') {
      return false;
    }
    return true;
  }

  bool isDate(String input, String format) {
    try {
      DateFormat(format).parseStrict(input);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  String? validationMessage;
}

import 'package:emr_one_forms_engine/core/models/dto/instance/components/component_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/instance/components/email_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/components/email_component.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';
import 'package:emr_one_forms_engine/core/store/components/component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

class EmailComponent extends FormComponent {
  final String? label;
  final String? placeholder;
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;
  String answerText;

  EmailComponent.forState({
    required super.state,
    required EmailComponentDTO super.component,
    EmailInstanceDTO? super.instanceData,
    super.isValid,
  })  : label = component.title,
        placeholder = component.placeholder,
        placeholderProvider = component.placeholderProvider,
        validators = component.validators,
        answerText = instanceData?.answer ?? '',
        super.forState();

  static FormDataProviderState generateState(
    String id, {
    String? initialValue,
  }) =>
      FormComponent.generateState(
        id: id,
        value: initialValue,
      );

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
  FormComponentInstanceDTO? getData() => EmailInstanceDTO(
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
      if (err.type == TemplateValidatorTypes.email &&
          !isEmailValid(err as EmailValidatorDTO)) {
        isValid = false;
        validationMessage = err.message;
        isComponentDataValid = false;
      }
    }
    return isComponentDataValid;
  }

  bool isValidEmail() {
    bool emailIsValid = false;
    if (answerText.isNotEmpty) {
      emailIsValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(answerText);
    }
    return emailIsValid;
  }

  bool isEmailValid(EmailValidatorDTO validator) {
    if (answerText.isEmpty ||
        answerText == '' ||
        answerText == '.' ||
        !isValidEmail()) {
      return false;
    }
    return true;
  }

  @override
  String? validationMessage;
}

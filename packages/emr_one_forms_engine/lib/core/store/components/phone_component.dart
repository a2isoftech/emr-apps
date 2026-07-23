import 'package:emr_one_forms_engine/core/models/dto/instance/components/component_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/instance/components/phone_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/components/phone_component.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/data_providers/data_provider.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/enums.dart';
import 'package:emr_one_forms_engine/core/models/dto/template/validators/form_validators.dart';
import 'package:emr_one_forms_engine/core/store/components/component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';
import 'package:universal_io/io.dart';

class PhoneComponent extends FormComponent {
  final String? label;
  final String? placeholder;
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;
  String answerText;

  PhoneComponent.forState({
    required super.state,
    required PhoneComponentDTO super.component,
    PhoneInstanceDTO? super.instanceData,
    super.isValid,
  }) : label = component.title,
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
    if ((isRequired && answerText.isNotEmpty) || (!isRequired)) {
      isValid = true;
    }
  }

  @override
  FormComponentInstanceDTO? getData() => PhoneInstanceDTO(
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
      if (err.type == TemplateValidatorTypes.phone &&
          !isPhoneValid(err as PhoneNumberValidatorDTO)) {
        isValid = false;
        validationMessage = err.message;
        isComponentDataValid = false;
      }
    }
    return isComponentDataValid;
  }

  bool isPhoneValid(PhoneNumberValidatorDTO validator) {
    if (answerText.isEmpty ||
        answerText == '' ||
        answerText == '.' ||
        !isValidPhoneNumber()) {
      return false;
    }
    return true;
  }

  bool isValidPhoneNumber() {
    bool phoneNumberIsValid = false;
    if (answerText.isNotEmpty) {
      final String defaultLocale = Platform.localeName;
      if (defaultLocale == 'en-US') {
        phoneNumberIsValid = RegExp(
          r'^(\([0-9]{3}\) |[0-9]{3}-)[0-9]{3}-[0-9]{4}$',
        ).hasMatch(answerText);
      } else if (defaultLocale == 'en-GB') {
        phoneNumberIsValid = RegExp(
          r'(^(?:[+0]9)?[0-9]{10,12}$)',
        ).hasMatch(answerText);
      } else {
        phoneNumberIsValid = true;
      }
    }
    return phoneNumberIsValid;
  }

  @override
  String? validationMessage;
}

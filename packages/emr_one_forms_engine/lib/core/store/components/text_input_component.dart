import 'package:emr_one_forms_engine/core/constants/strings.dart';
import 'package:emr_one_forms_engine/core/models/api/asset_property.dart';
import 'package:emr_one_forms_engine/core/models/asset_counter.dart';
import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/idata_provider_repository.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/iuser_preference_repository.dart';
import 'package:emr_one_forms_engine/core/services/service_container.dart';
import 'package:emr_one_forms_engine/core/store/store.dart';
import 'package:flutter/material.dart';

class TextInputComponent extends FormComponent {
  final String? label;
  final String? placeholder;
  late final bool isMultiline; // switch to text area if true
  DataProviderReference? placeholderProvider;
  List<ValidatorDTO>? validators;
  AssetCounter? assetCounter;
  String answerText;
  String? mroDataProviderId;
  FormDataKeyedProviderBloc? mroDataProvider;

  TextInputComponent.forState({
    required super.state,
    required TextInputComponentDTO component,
    TextInputInstanceDTO? super.instanceData,
    super.isValid,
  }) : label = component.title,
       placeholder = component.placeholder,
       placeholderProvider = component.placeholderProvider,
       isMultiline = component.isMultiline ?? false,
       validators = component.validators,
       answerText = instanceData?.answer ?? '',
       assetCounter = component.assetCounter,
       super.forState(component: component) {
    if (component.mroDataProvider != null) {
      mroDataProviderId = component.mroDataProvider?.id;
      mroDataProvider =
          ServiceContainer().get<IFormDataProviderRepository>().getProvider(
                mroDataProviderId!,
              )
              as FormDataKeyedProviderBloc?;

      _getMroValidations(component);
    }
  }

  /// move this and widget validation to a common function.
  static _getMroValidations(TextInputComponentDTO component) async {
    if (component.assetCounter != null && component.mroDataProvider != null) {
      // get the mro validators.
      debugPrint(
        'Component: Retrieve validations from cache for ${StringLiteral.MroValidationKey}',
      );
      var mroValidatorList = await ServiceContainer()
          .get<IUserPreferencesRepository>()
          .getAssetPropertiesDataList(StringLiteral.MroValidationKey);
      if (mroValidatorList != null && mroValidatorList.isNotEmpty) {
        var mroValidators = mroValidatorList
            .where((x) => x.propertyKey == component.assetCounter!.name)
            .toList();
        if (mroValidators.isEmpty) return;
        var mroValidator = mroValidators.first;
        if (mroValidator.checkBothMinMax == false) {
          component.assetCounter?.minValue = mroValidator.propertyValue!;
        } else {
          component.assetCounter?.minValue = mroValidator.propertyMinValue;
          component.assetCounter?.maxValue = mroValidator.propertyMaxValue;
        }
        component.assetCounter?.checkBothMinMax = mroValidator.checkBothMinMax;
      }
    }
  }

  static FormDataProviderState generateState(
    String id, {
    String? initialValue,
    AssetCounter? assetCounter,
  }) => FormComponent.generateState(id: id, value: initialValue);

  @override
  void changeValue(String newValue) {
    _mapValue(newValue);
    super.changeValue(newValue);
  }

  void _mapValue(String newValue) async {
    answerText = newValue;
    if ((isRequired && answerText.isNotEmpty) || (!isRequired)) {
      isValid = true;
    }
  }

  @override
  FormComponentInstanceDTO? getData() => TextInputInstanceDTO(
    componentId: id,
    answer: answerText,
    answerDate: answeredDate,
    answeredBy: answeredBy,
    answeredByUuid: answeredByUuid,
    assetCounter: assetCounter,
    answerDateLocal: answeredDateLocal,
  );

  @override
  bool validate() {
    List<ValidatorDTO>? componentValidators = validators;
    bool isComponentDataValid = true;
    if (componentValidators == null) return isComponentDataValid;
    for (var err in componentValidators) {
      if (err.type == TemplateValidatorTypes.number &&
          !isNumberRequired(err as NumberValidatorDTO)) {
        isValid = false;
        validationMessage = err.message;
        isComponentDataValid = false;
      }
      if (err.type == TemplateValidatorTypes.numberRange &&
          !isNumberRangeValid(err as NumberRangeValidatorDTO)) {
        isValid = false;
        validationMessage = getErrMsg(err);
        isComponentDataValid = false;
      }
      if (err.type == TemplateValidatorTypes.text &&
          !isTextRequired(err as TextValidatorDTO)) {
        isValid = false;
        validationMessage = err.message;
        isComponentDataValid = false;
      }
    }
    if (assetCounter != null) {
      isComponentDataValid = _checkForMro();
    }
    return isComponentDataValid;
  }

  bool _checkForMro() {
    bool isComponentDataValid = true;
    final actualNumberValue = double.tryParse(answerText);
    if (actualNumberValue == null) {
      isValid = false;
      isComponentDataValid = false;
      validationMessage = 'Please enter a number';
    } else {
      if (assetCounter!.checkBothMinMax == false) {
        if (actualNumberValue < assetCounter!.minValue!) {
          isValid = false;
          isComponentDataValid = false;
          validationMessage = getErrMsgMro(
            AssetProperty(
              propertyKey: 'Asset Counter',
              propertyMinValue: assetCounter!.minValue!,
              propertyMaxValue: null,
            ),
          );
        }
      }
    }
    return isComponentDataValid;
  }

  @override
  String? validationMessage;

  bool isNumberRequired(NumberValidatorDTO validator) {
    if (answerText.isEmpty || answerText == '' || answerText == '.') {
      return false;
    }
    return true;
  }

  bool isTextRequired(TextValidatorDTO validator) {
    if (answerText.isEmpty || answerText == '' || answerText == '.') {
      return false;
    }
    return true;
  }

  bool isNumberRangeValid(NumberRangeValidatorDTO validator) {
    if (answerText.isEmpty || answerText == '' || answerText == '.') {
      return false;
    }
    var numValue = double.tryParse(answerText);
    if ((validator.minValue != null &&
            numValue != null &&
            numValue < validator.minValue!) ||
        (validator.maxValue != null &&
            numValue != null &&
            numValue > validator.maxValue!)) {
      return false;
    }
    return true;
  }

  static String? getErrMsg(NumberRangeValidatorDTO validator) {
    String? msg = validator.message;
    String validatorName = validator.name ?? 'value';
    if (validator.minValue != null && validator.maxValue != null) {
      msg =
          'Please enter a $validatorName between ${validator.minValue} and ${validator.maxValue}.';
    } else if (validator.minValue != null && validator.maxValue == null) {
      msg = 'Please enter a $validatorName greater than ${validator.minValue}.';
    } else if (validator.minValue == null && validator.maxValue != null) {
      msg = 'Please enter a $validatorName less than ${validator.maxValue}.';
    } else {
      msg = 'Please enter a $validatorName.';
    }
    return msg;
  }

  static String? getErrMsgMro(AssetProperty validator) {
    String? msg = '';

    String validatorName = '${validator.propertyKey} value';
    if (validator.propertyMinValue != null &&
        validator.propertyMaxValue != null) {
      msg =
          'Please enter a $validatorName between ${validator.propertyMinValue} and ${validator.propertyMaxValue}.';
    } else if (validator.propertyMinValue != null &&
        validator.propertyMaxValue == null) {
      msg =
          'Please enter a $validatorName greater than ${validator.propertyMinValue}.';
    } else if (validator.propertyMinValue == null &&
        validator.propertyMaxValue != null) {
      msg =
          'Please enter a $validatorName less than ${validator.propertyMaxValue}.';
    } else {
      msg = 'Please enter a $validatorName.';
    }
    return msg;
  }
}

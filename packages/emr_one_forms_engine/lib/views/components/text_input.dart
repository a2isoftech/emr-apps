import 'package:emr_one_forms_engine/core/models/api/asset_property.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/iuser_preference_repository.dart';
import 'package:emr_one_forms_engine/core/store/components/text_input_component.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:flutter/material.dart';

class TextInputWidget extends FormComponentWidget<TextInputComponent> {
  const TextInputWidget({super.key, required super.model});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState
    extends FormComponentState<TextInputComponent, TextInputWidget> {
  final _textController = TextEditingController();
  late FocusNode _focusNode;
  late String _label;
  late int? _maxLines;
  late TextInputType _keyboardType;
  late String _errorMessage;
  late List<AssetProperty> _mroValidations = [];
  late double? _minValue;
  late double? _maxValue;

  @override
  void initState() {
    super.initState();

    _textController.text = currentModel.answerText;
    _setFocus(_textController.text, currentModel);
    _label = _getLabelText(currentModel);
    _maxLines = _getTextAreaLines(currentModel);
    _keyboardType = _getTextInputType(currentModel);
    _errorMessage = _getErrorMessage(currentModel);
    _minValue = null;
    _maxValue = null;
    _getMroValidationsFromCache();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool differentUser =
        FormsEngine().isPreview ||
        (currentModel.answeredBy !=
                ServiceContainer().get<IFormConfiguration>().userName &&
            currentModel.answerText.isNotEmpty);
    return AbsorbPointer(
      absorbing: differentUser,
      child: Container(
        color: differentUser ? FormColors.componentBorderColor : null,
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _textController,
            decoration: _decoration,
            focusNode: _focusNode,
            keyboardType: _keyboardType,
            maxLines: _maxLines,
            validator: _onValidate,
            onChanged: (value) => _onChange(value),
          ),
        ),
      ),
    );
  }

  InputDecoration get _decoration => InputDecoration(
    errorMaxLines: 3,
    errorText: currentModel.isValid ? null : _errorMessage,
    label: Wrap(children: [Text(_label)]),
    hintText: currentModel.placeholder,
  );

  String _getLabelText(TextInputComponent currentModel) {
    String label = currentModel.label ?? '';
    if (currentModel.isRequired) {
      label = '$label *';
    }
    return label;
  }

  int? _getTextAreaLines(TextInputComponent currentModel) {
    if (currentModel.isMultiline) {
      return 5;
    }
    return 1;
  }

  TextInputType _getTextInputType(TextInputComponent currentModel) {
    if (isCounterField(currentModel)) {
      return TextInputType.number;
    }
    if (currentModel.isMultiline) {
      return TextInputType.multiline;
    } else if (isNumericField(currentModel)) {
      return TextInputType.number;
    }
    return TextInputType.text;
  }

  bool isNumericField(TextInputComponent currentModel) {
    bool isNumeric = false;
    List<ValidatorDTO>? validators = currentModel.validators;
    if (validators != null &&
        validators.isNotEmpty &&
        (validators.any(
          (e) =>
              e.type == TemplateValidatorTypes.number ||
              e.type == TemplateValidatorTypes.numberRange,
        ))) {
      isNumeric = true;
    }
    return isNumeric;
  }

  bool isCounterField(TextInputComponent currentModel) {
    return currentModel.assetCounter != null;
  }

  String _getErrorMessage(TextInputComponent currentModel) {
    String componentErrorMessage = '';
    if (currentModel.isRequired) {
      List<ValidatorDTO>? validators = currentModel.validators;
      if (validators != null) {
        if (currentModel.value == null || currentModel.value!.isEmpty) {
          componentErrorMessage =
              validators[0].message ?? StringLiteral.RequiredFieldErrorMessage;
        } else {
          componentErrorMessage = _onValidate(currentModel.value) ?? '';
        }
      }
    } else {
      componentErrorMessage = _validateValue(currentModel.value) ?? '';
    }
    return componentErrorMessage;
  }

  void _onChange(String value) {
    _setStateForField(value);
    changeValue(value);
  }

  void _setStateForField(String value) {
    setState(() {
      if (currentModel.isRequired) {
        currentModel.isValid = _onValidate(value) == null;
      }
      _textController.text = value;
      // to keep the cursor at the end of the text.
      _textController.selection = TextSelection.fromPosition(
        TextPosition(offset: _textController.text.length),
      );
      currentModel.answerText = value;
      currentModel.assetCounter?.maxValue = _minValue;
      currentModel.assetCounter?.minValue = _maxValue;
    });
  }

  String? _onValidate(value) {
    if (value == null || value.isEmpty) {
      return _errorMessage;
    }

    return _validateValue(value);
  }

  String? _validateValue(value) {
    var numberRangeValid = isNumberRangeValid(value);
    if (numberRangeValid != null && numberRangeValid.isNotEmpty) {
      return numberRangeValid;
    }
    return null;
  }

  String? isNumberRangeValid(dynamic value) {
    if (value == null || value == '' || value == '.') return null;

    var numValue = double.tryParse(value);
    if (numValue == null) return null;

    /// check min max data values from json.
    if (currentModel.validators != null &&
        currentModel.validators!.any((e) => e is NumberRangeValidatorDTO)) {
      var numberRangeValidator = currentModel.validators!
          .whereType<NumberRangeValidatorDTO>()
          .first;

      if ((numberRangeValidator.minValue != null &&
              numValue < numberRangeValidator.minValue!) ||
          (numberRangeValidator.maxValue != null &&
              numValue > numberRangeValidator.maxValue!)) {
        var errorMessage = TextInputComponent.getErrMsg(numberRangeValidator);
        return errorMessage;
      }
    }

    if (_mroValidations.isNotEmpty) {
      /// check min max data values from mro data
      for (var validationRule in _mroValidations) {
        if (currentModel.assetCounter?.name == validationRule.propertyKey &&
            validationRule.checkBothMinMax == false) {
          currentModel.assetCounter?.minValue = validationRule.propertyValue;
          currentModel.assetCounter?.maxValue = null;

          /// validation: input value to be greater than last saved value (propertyvalue)
          if (numValue <=
              double.parse(validationRule.propertyValue!.toString())) {
            var errorMessage =
                'The current ${validationRule.propertyKey} is less than the last recorded value of ${validationRule.propertyValue}';
            currentModel.validationMessage = errorMessage;
            currentModel.isValid = false;
            return errorMessage;
          }
        } else if (currentModel.assetCounter?.name ==
                validationRule.propertyKey &&
            validationRule.checkBothMinMax == true) {
          currentModel.assetCounter?.minValue = validationRule.propertyMinValue;
          currentModel.assetCounter?.maxValue = validationRule.propertyMaxValue;
        }
      }
    }
    if (currentModel.assetCounter != null) {
      if ((currentModel.assetCounter!.minValue != null &&
              numValue <
                  double.parse(
                    currentModel.assetCounter!.minValue.toString(),
                  )) ||
          (currentModel.assetCounter!.maxValue != null &&
              numValue >
                  double.parse(
                    currentModel.assetCounter!.maxValue.toString(),
                  ))) {
        var errorMessage = TextInputComponent.getErrMsgMro(
          AssetProperty(
            propertyKey: currentModel.assetCounter!.name,
            propertyMinValue: currentModel.assetCounter!.minValue,
            propertyMaxValue: currentModel.assetCounter!.maxValue,
          ),
        );
        currentModel.validationMessage = errorMessage;
        currentModel.isValid = false;

        return errorMessage;
      }
    }

    return null;
  }

  void _setFocus(String value, TextInputComponent currentModel) {
    _focusNode = FocusNode();

    if (!currentModel.isRequired) return;

    _focusNode.addListener(() {
      if (!_focusNode.hasFocus &&
          currentModel.answerText != _textController.text) {
        _onChange(_textController.text);
      }
    });
  }

  Future<void> _getMroValidationsFromCache() async {
    List<AssetProperty> dataListValue =
        await ServiceContainer()
            .get<IUserPreferencesRepository>()
            .getAssetPropertiesDataList(StringLiteral.MroValidationKey) ??
        [];
    if (dataListValue.isEmpty) return;
    setState(() {
      _mroValidations = dataListValue;
      if (dataListValue.isNotEmpty && currentModel.assetCounter != null) {
        var validations = dataListValue
            .where((x) => x.propertyKey == currentModel.assetCounter?.name)
            .toList();
        if (validations.isNotEmpty) {
          var mroValidation = validations.first;
          if (mroValidation.checkBothMinMax == false) {
            _minValue = mroValidation.propertyValue!;
          } else {
            if (mroValidation.propertyMinValue != null) {
              _minValue = mroValidation.propertyMinValue!;
            }
            if (mroValidation.propertyMaxValue != null) {
              _maxValue = mroValidation.propertyMaxValue!;
            }
          }
        }
      }
    });
  }
}

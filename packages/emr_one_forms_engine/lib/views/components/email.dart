import 'package:emr_one_forms_engine/core/store/components/email_component.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:flutter/material.dart';

class EmailWidget extends FormComponentWidget<EmailComponent> {
  const EmailWidget({super.key, required super.model});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState
    extends FormComponentState<EmailComponent, EmailWidget> {
  final _textController = TextEditingController();
  late FocusNode _focusNode;
  late String _label;
  late TextInputType _keyboardType;
  late String _errorMessage;

  @override
  void initState() {
    super.initState();

    _textController.text = currentModel.answerText;
    _setFocus(_textController.text, currentModel);
    _label = _getLabelText(currentModel);
    _keyboardType = TextInputType.emailAddress;
    _errorMessage = _getErrorMessage(currentModel);
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
            decoration: _decoration(),
            focusNode: _focusNode,
            keyboardType: _keyboardType,
            onChanged: _onChange,
            validator: _onValidate,
          ),
        ),
      ),
    );
  }

  InputDecoration _decoration() => InputDecoration(
    errorText: currentModel.isValid ? null : _errorMessage,
    label: Wrap(children: [Text(_label)]),
    hintText: currentModel.label,
    suffixIcon: const Icon(Icons.email),
  );

  String _getLabelText(EmailComponent currentModel) {
    String label = currentModel.label ?? '';
    if (currentModel.isRequired) {
      label = '$label *';
    }
    return label;
  }

  String _getErrorMessage(EmailComponent currentModel) {
    String componentErrorMessage = '';
    if (currentModel.isRequired) {
      List<ValidatorDTO>? validators = currentModel.validators;
      if (validators != null) {
        componentErrorMessage =
            validators[0].message ?? StringLiteral.RequiredFieldErrorMessage;
      }
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
    });
  }

  String? _onValidate(value) {
    if (value == null || value.isEmpty || !currentModel.isValidEmail()) {
      _errorMessage = StringLiteral.RequiredFieldErrorMessage;
      return _errorMessage;
    }
    return null;
  }

  void _setFocus(String value, EmailComponent currentModel) {
    _focusNode = FocusNode();

    if (!currentModel.isRequired) return;

    _focusNode.addListener(() {
      if (!_focusNode.hasFocus &&
          currentModel.answerText != _textController.text) {
        _onChange(_textController.text);
      }
    });
  }
}

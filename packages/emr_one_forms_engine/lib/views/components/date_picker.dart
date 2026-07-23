import 'package:emr_one_forms_engine/core/store/components/date_picker_component.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:emr_one_forms_engine/views/components/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends FormComponentWidget<DatePickerComponent> {
  const DatePickerWidget({super.key, required super.model});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState
    extends FormComponentState<DatePickerComponent, DatePickerWidget> {
  final _textController = TextEditingController();
  late FocusNode _focusNode;
  late String _label;
  late TextInputType _keyboardType;

  late String _errorMessage;
  DateTime date = DateTime.now();

  @override
  void initState() {
    super.initState();

    _textController.text = currentModel.answerText;
    _setFocus(_textController.text, currentModel);
    _label = _getLabelText(currentModel);
    _keyboardType = TextInputType.none;
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
            readOnly: true,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _textController,
            decoration: _decoration(),
            focusNode: _focusNode,
            keyboardType: _keyboardType,
            onChanged: _onChange,
            onTap: () async {
              await showDialog<SelectedDates>(
                context: context,
                builder: (context) => EmrDatePickerDialog(
                  selectedDate: SelectedDates.date(
                    date: DateTime.now().toUtc(),
                  ),
                  datePickerType: DatePickerType.date,
                  minDate: DateTime(DateTime.now().toUtc().year - 1),
                  maxDate: DateTime(DateTime.now().toUtc().year + 1),
                ),
                barrierDismissible: false,
              ).then((result) {
                if (result is SelectedDates) {
                  if (result.date == null) return;
                  setState(() {
                    date = result.date!;
                    _textController.text = _formatDate(date);
                  });
                  _onChange(_textController.text);
                }
              });
            },
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
    suffixIcon: const Icon(Icons.date_range_rounded),
  );

  String _getLabelText(DatePickerComponent currentModel) {
    String label = currentModel.label ?? '';
    if (currentModel.isRequired) {
      label = '$label *';
    }
    return label;
  }

  String _getErrorMessage(DatePickerComponent currentModel) {
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

  String _formatDate(DateTime selectedDate) {
    final activeLocale = Localizations.localeOf(context);
    final formattedSelectedDate = DateFormat.yMd(
      activeLocale.toString(),
    ).format(selectedDate.toLocal());
    return formattedSelectedDate;
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
    if (value == null || value.isEmpty) {
      _errorMessage = StringLiteral.RequiredFieldErrorMessage;
      return _errorMessage;
    }
    return null;
  }

  bool isDate(String input, String format) {
    try {
      DateFormat(format).parseStrict(input);
      return true;
    } catch (e) {
      return false;
    }
  }

  void _setFocus(String value, DatePickerComponent currentModel) {
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

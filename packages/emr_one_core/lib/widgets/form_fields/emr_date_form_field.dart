import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// This date input field is inspired by InputDatePickerFormField.
class EmrDateFormField extends StatefulWidget {
  EmrDateFormField({
    required this.binding,
    super.key,
    this.labelText = '',
    this.hintText,
    this.validator = Validators.none,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? visible,
    ValueNotifier<bool>? readOnly,
    this.autovalidateMode = AutovalidateMode.onUnfocus,
    this.allowedPermissions = const [],
    DateTime? firstDate,
    DateTime? lastDate,
  }) {
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
    this.readOnly = readOnly ?? ValueNotifier(false);

    this.firstDate = firstDate ?? DateTime(1900);
    this.lastDate = lastDate ?? DateTime(9999, 12, 31);

    assert(
      !this.lastDate.isBefore(this.firstDate),
      'lastDate ${this.lastDate} must be on or after firstDate '
      '${this.firstDate}.',
    );
  }

  final String labelText;

  final String? hintText;

  final ValueNotifier<DateTime?> binding;

  /// An optional validator that validates the text input. This is called before
  /// additional validation that checks the date is valid and within the range.
  final FormFieldValidator<String?>? validator;

  late final ValueNotifier<bool> enabled;

  late final ValueNotifier<bool> visible;

  late final ValueNotifier<bool> readOnly;

  final AutovalidateMode autovalidateMode;

  final List<String> allowedPermissions;

  late final DateTime firstDate;

  late final DateTime lastDate;

  @override
  State<EmrDateFormField> createState() => _EmrInputDatePickerFormField();
}

class _EmrInputDatePickerFormField extends State<EmrDateFormField> {
  late final MaterialLocalizations _localizations;

  late final _inlineFocusNode = FocusNode(onKeyEvent: _onKeyEvent);

  // Create a controller which starts with the initial value of the binding.
  late final TextEditingController _controller = TextEditingController(
    text: _formatDate(widget.binding.value),
  );

  @override
  void initState() {
    super.initState();

    _inlineFocusNode.addListener(_inlineFocusChanged);

    widget.binding.addListener(_onBindingChanged);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _localizations = MaterialLocalizations.of(context);
  }

  @override
  void dispose() {
    _inlineFocusNode.removeListener(_inlineFocusChanged);
    _inlineFocusNode.dispose();

    widget.binding.removeListener(_onBindingChanged);

    _controller.dispose();

    super.dispose();
  }

  /// Update the controller text when the binding value changes.
  void _onBindingChanged() {
    final bindingValue = widget.binding.value;

    if (_parseDate(_controller.text) == bindingValue) {
      return;
    }

    _controller.text = _formatDate(bindingValue);
  }

  @override
  Widget build(BuildContext context) {
    return EmrFormFieldLayout(
      visible: widget.visible,
      labelText: widget.labelText,
      binding: widget.binding,
      autovalidateMode: widget.autovalidateMode,
      allowedPermissions: widget.allowedPermissions,
      builder: (_) => ListenableBuilder(
        listenable: Listenable.merge([widget.enabled, widget.readOnly]),
        builder: (context2, _) {
          final emrFormMode = EmrForm.modeOf(context);

          return TextFormField(
            controller: _controller,
            focusNode: _inlineFocusNode,
            decoration: InputDecoration(
              hintText: widget.hintText ?? _localizations.dateHelpText,
              suffixIcon: IconButton(
                icon: const Icon(Icons.calendar_today),
                onPressed: widget.readOnly.value
                    ? null
                    : () async {
                        final selectedDate = await showDatePicker(
                          context: context2,
                          initialDate:
                              widget.binding.value ??
                              (widget.firstDate.isAfter(DateTime.now())
                                  ? widget.firstDate
                                  : DateTime.now()),
                          firstDate: widget.firstDate,
                          lastDate: widget.lastDate,
                          initialEntryMode: DatePickerEntryMode.calendarOnly,
                        );

                        if (selectedDate != null) {
                          widget.binding.value = _tryKeepExistingTime(
                            selectedDate,
                          );

                          // Always update the text which means even if the date
                          // in the model doesn't change, if invalid text is
                          // entered into the field, then this is overwritten.
                          _controller.text = _formatDate(selectedDate);
                        }
                      },
              ),
              errorStyle:
                  // Hide the validation message when in grid mode.
                  emrFormMode == EmrFormMode.grid
                  ? const TextStyle(fontSize: 0)
                  : null,
            ),
            autovalidateMode: widget.autovalidateMode,
            validator: (value) {
              final result = widget.validator?.call(value);

              if (result != null) {
                return result;
              }

              // If the value is empty, then it is valid if we reach here.
              // When the date is required we should use Validators.required on
              // the field which would exit before we get here.
              if (value?.isEmpty ?? true) {
                return null;
              }

              // If we get here then some text is entered,
              // which we want to be a valid date.
              final parsedDate = _parseDate(value);
              if (parsedDate == null) {
                return context.l10n.invalid;
              }

              if (parsedDate.isBefore(widget.firstDate)) {
                return context.l10n.mustBeDateOrLater(widget.firstDate);
              }

              if (parsedDate.isAfter(widget.lastDate)) {
                return context.l10n.mustBeDateOrEarlier(widget.lastDate);
              }

              return null;
            },
            enabled: widget.enabled.value,
            readOnly: widget.readOnly.value,
            // Update the binding value when the text changes.
            onChanged: (value) {
              final parsedValue = _parseDate(value);
              if (parsedValue == null) {
                return;
              }

              if (parsedValue.isBefore(widget.firstDate) ||
                  parsedValue.isAfter(widget.lastDate)) {
                return;
              }

              widget.binding.value = _tryKeepExistingTime(parsedValue);
            },
            keyboardType: TextInputType.datetime,
          );
        },
      ),
    );
  }

  String _formatDate(DateTime? date) =>
      date != null ? _localizations.formatCompactDate(date) : '';

  DateTime? _parseDate(String? text) => _localizations.parseCompactDate(text);

  /// Handle the escape key to reset the text to the bound date value.
  KeyEventResult _onKeyEvent(FocusNode _, KeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.escape) {
      _controller.text = _formatDate(widget.binding.value);
    }

    return KeyEventResult.ignored;
  }

  /// Clear the text when the field loses focus, to handle when a user types an
  /// invalid date string.
  void _inlineFocusChanged() {
    if (!_inlineFocusNode.hasFocus && _parseDate(_controller.text) == null) {
      _controller.text = '';
      widget.binding.value = null;
    }
  }

  DateTime? _tryKeepExistingTime(DateTime? value) {
    if (value == null) {
      return null;
    }

    // Keep the time portion of the binding value if there is one.
    if (widget.binding.value != null) {
      return DateTime(
        value.year,
        value.month,
        value.day,
        widget.binding.value!.hour,
        widget.binding.value!.minute,
      );
    }

    return value;
  }
}

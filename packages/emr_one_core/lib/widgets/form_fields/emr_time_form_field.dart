import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class EmrTimeFormField extends StatefulWidget {
  EmrTimeFormField({
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
  }) {
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
    this.readOnly = readOnly ?? ValueNotifier(false);
  }

  final String labelText;
  final String? hintText;
  final ValueNotifier<DateTime?> binding;
  final FormFieldValidator<String?>? validator;
  late final ValueNotifier<bool> enabled;
  late final ValueNotifier<bool> visible;
  late final ValueNotifier<bool> readOnly;
  final AutovalidateMode autovalidateMode;
  final List<String> allowedPermissions;

  @override
  State<EmrTimeFormField> createState() => _EmrTimeFormFieldState();
}

class _EmrTimeFormFieldState extends State<EmrTimeFormField> {
  late final FocusNode _focusNode = FocusNode(onKeyEvent: _onKeyEvent);
  late final TextEditingController _controller = TextEditingController(
    text: _formatTime(widget.binding.value),
  );

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(_onFocusChange);
    widget.binding.addListener(_onBindingChanged);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    widget.binding.removeListener(_onBindingChanged);
    _focusNode.dispose();
    _controller.dispose();

    super.dispose();
  }

  String _formatTime(DateTime? dateTime) {
    if (dateTime == null) {
      return '';
    }

    final locale = Localizations.localeOf(context).toString();

    return DateFormat.jm(locale).format(dateTime);
  }

  String _hintText(BuildContext context) =>
      widget.hintText ??
      MaterialLocalizations.of(context).timePickerInputHelpText;

  DateTime? _parseTime(String? text) {
    if (text == null || text.trim().isEmpty) return null;

    try {
      final locale = Localizations.localeOf(context).toString();
      final parsedTime = DateFormat.jm(locale).parseLoose(text.trim());
      final date = widget.binding.value ?? DateTime.now();

      return DateTime(
        date.year,
        date.month,
        date.day,
        parsedTime.hour,
        parsedTime.minute,
      );
    } catch (_) {
      return null;
    }
  }

  Future<void> _pickTime() async {
    final initial = widget.binding.value ?? DateTime.now();

    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: initial.hour, minute: initial.minute),
    );

    if (picked != null) {
      final newDateTime = DateTime(
        initial.year,
        initial.month,
        initial.day,
        picked.hour,
        picked.minute,
      );

      widget.binding.value = newDateTime;

      _controller.text = _formatTime(newDateTime);
    }
  }

  KeyEventResult _onKeyEvent(FocusNode _, KeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.escape) {
      _controller.text = _formatTime(widget.binding.value);
    }

    return KeyEventResult.ignored;
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) {
      final parsed = _parseTime(_controller.text);

      if (parsed != null) {
        widget.binding.value = parsed;
        _controller.text = _formatTime(parsed);
      } else {
        _controller.text = '';
        widget.binding.value = null;
      }
    }
  }

  void _onBindingChanged() {
    final newText = _formatTime(widget.binding.value);

    if (_controller.text != newText) {
      _controller.text = newText;
    }
  }

  @override
  Widget build(BuildContext _) {
    return EmrFormFieldLayout(
      visible: widget.visible,
      labelText: widget.labelText,
      binding: widget.binding,
      autovalidateMode: widget.autovalidateMode,
      allowedPermissions: widget.allowedPermissions,
      builder: (_) => ListenableBuilder(
        listenable: Listenable.merge([widget.enabled, widget.readOnly]),
        builder: (context, _) {
          final emrFormMode = EmrForm.modeOf(context);

          return TextFormField(
            controller: _controller,
            focusNode: _focusNode,
            decoration: InputDecoration(
              hintText: _hintText(context),
              suffixIcon: IconButton(
                icon: const Icon(Icons.access_time),
                onPressed: widget.readOnly.value ? null : _pickTime,
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
              // When the time is required we should use Validators.required on
              // the field which would exit before we get here.
              if (value?.isEmpty ?? true) {
                return null;
              }

              // If we get here then some text is entered,
              // which we want to be a valid time.
              if (_parseTime(value) == null) {
                return context.l10n.invalid;
              }

              return null;
            },
            enabled: widget.enabled.value,
            readOnly: widget.readOnly.value,
            keyboardType: TextInputType.datetime,
          );
        },
      ),
    );
  }
}

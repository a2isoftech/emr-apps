import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EmrPickerFormField<T extends Object> extends StatefulWidget {
  EmrPickerFormField({
    required this.items,
    required this.itemTitleText,
    required this.binding,
    super.key,
    this.labelText = '',
    this.validator = Validators.none,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? visible,
    ValueNotifier<bool>? readOnly,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.allowedPermissions = const [],
    this.mode = EmrPickerMode.inline,
    this.itemSubtitleText = _defaultItemSubtitleText,
  }) {
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
    this.readOnly = readOnly ?? ValueNotifier(false);
  }

  static String _defaultItemSubtitleText(Object item) => '';

  final String labelText;

  final Future<List<T>> Function(String) items;

  final String Function(T) itemTitleText;

  final String Function(T) itemSubtitleText;

  final ValueNotifier<T?> binding;

  final FormFieldValidator<String?>? validator;

  late final ValueNotifier<bool> enabled;

  late final ValueNotifier<bool> visible;

  late final ValueNotifier<bool> readOnly;

  final AutovalidateMode autovalidateMode;

  final List<String> allowedPermissions;

  final EmrPickerMode mode;

  @override
  State<EmrPickerFormField<T>> createState() => _EmrPickerFormFieldState<T>();
}

class _EmrPickerFormFieldState<T extends Object>
    extends State<EmrPickerFormField<T>> {
  // Create a controller which starts with the initial value of the binding.
  late final TextEditingController _controller = TextEditingController(
    text: widget.binding.value != null
        ? widget.itemTitleText(widget.binding.value!)
        : '',
  );

  @override
  void initState() {
    super.initState();

    widget.binding.addListener(_onBindingChanged);
  }

  @override
  void dispose() {
    widget.binding.removeListener(_onBindingChanged);

    super.dispose();
  }

  void _onBindingChanged() {
    _controller.text = widget.binding.value != null
        ? widget.itemTitleText(widget.binding.value!)
        : '';
  }

  /// The text that was selected when the inline field was focused, or when a
  /// value is selected. This is so we can reset the field if a user types to
  /// search, but then doesn't select a value. [onInlineFocusChanged] is used
  /// to determine when the focus of the field changes to set or use this value.
  String? _selectedText;

  final ValueNotifier<bool> _hasInteractedByUser = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return EmrFormFieldLayout<T>(
      visible: widget.visible,
      labelText: widget.labelText,
      allowedPermissions: widget.allowedPermissions,
      builder: (field) {
        return ListenableBuilder(
          listenable: Listenable.merge([
            widget.enabled,
            widget.readOnly,
            widget.binding,
          ]),
          builder: (_, __) {
            return EmrPicker<T>(
              controller: _controller,
              items: widget.items,
              itemTitleText: widget.itemTitleText,
              itemSubtitleText: widget.itemSubtitleText,
              validator: widget.validator,
              autovalidateMode: widget.autovalidateMode,
              enabled: widget.enabled.value,
              readOnly: widget.readOnly.value,
              // Update the binding value when a value is selected.
              onItemSelected: (value) {
                _hasInteractedByUser.value = true;

                _selectedText = _controller.text;

                widget.binding.value = value;
              },
              mode: widget.mode,
              onInlineFocusChanged: ({required hasFocus}) {
                // When the inline field is focused, store the current text so
                // we can reset the field if a user types to search, but then
                // doesn't select a value. We clear the value when losing focus
                // so this doesn't do anything when enabling/disabling the field
                // which causes a rebuild and this event to fire.
                if (hasFocus) {
                  _selectedText = _controller.text;
                } else {
                  if (_selectedText != null) {
                    _controller.text = _selectedText!;

                    _selectedText = null;
                  }
                }
              },
              onCleared: () {
                _hasInteractedByUser.value = true;

                _selectedText = null;
                _controller.clear();
                widget.binding.value = null;
              },
            );
          },
        );
      },
    );
  }
}

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmrStepperFormField extends StatefulWidget {
  EmrStepperFormField({
    required this.binding,
    super.key,
    this.labelText = '',
    this.hintText = '',
    this.validator = Validators.none,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? visible,
    ValueNotifier<bool>? readOnly,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.allowedPermissions = const [],
  }) {
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
    this.readOnly = readOnly ?? ValueNotifier(false);
  }

  final String labelText;

  final String hintText;

  final ValueNotifier<int?> binding;

  final FormFieldValidator<String?>? validator;

  late final ValueNotifier<bool> enabled;

  late final ValueNotifier<bool> visible;

  late final ValueNotifier<bool> readOnly;

  final AutovalidateMode autovalidateMode;

  final List<String> allowedPermissions;

  @override
  State<EmrStepperFormField> createState() => _EmrStepperFormFieldState();
}

class _EmrStepperFormFieldState extends State<EmrStepperFormField> {
  late final _textEditingController = TextEditingController(
    text: widget.binding.value?.toString() ?? '',
  );

  final ValueNotifier<bool> _hasInteractedByUser = ValueNotifier(false);

  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _textEditingController.addListener(_onFieldChanged);

    widget.binding.addListener(_onBindingChanged);

    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChanged);
    _focusNode.dispose();

    _textEditingController.removeListener(_onFieldChanged);
    _textEditingController.dispose();

    widget.binding.removeListener(_onBindingChanged);

    super.dispose();
  }

  /// Update the controller text when the binding value changes.
  void _onBindingChanged() {
    final bindingValue = widget.binding.value?.toString() ?? '';

    if (_textEditingController.text == bindingValue) {
      return;
    }

    _textEditingController.text = bindingValue;
  }

  // Update the binding value when the field changes.
  void _onFieldChanged() {
    final value = int.tryParse(_textEditingController.text);

    // Detect when the value is changed by the user.
    if (widget.binding.value != value) {
      _hasInteractedByUser.value = true;
    }

    if (widget.binding.value != value) {
      widget.binding.value = value;
    }
  }

  void _onFocusChanged() => setState(() {
    // This will trigger a rebuild when the focus changes.
  });

  @override
  Widget build(BuildContext _) => EmrFormFieldLayout(
    visible: widget.visible,
    labelText: widget.labelText,
    validator: (_) => widget.visible.value
        ? widget.validator?.call(widget.binding.value?.toString())
        : null,
    binding: widget.binding,
    autovalidateMode: widget.autovalidateMode,
    hasInteractedByUser: _hasInteractedByUser,
    allowedPermissions: widget.allowedPermissions,
    builder: (field) => ListenableBuilder(
      listenable: Listenable.merge([widget.enabled, widget.readOnly]),
      builder: (_, __) => StatefulBuilder(
        builder: (_, setState) {
          final buttonsEnabled = widget.enabled.value && !widget.readOnly.value;

          final errorColour = Theme.of(context).colorScheme.error;

          final errorBorder = OutlineInputBorder(
            borderSide: BorderSide(color: errorColour),
          );

          final focusedErrorBorder = OutlineInputBorder(
            borderSide: BorderSide(color: errorColour, width: 2),
          );

          final customDecoration = InputDecoration(
            contentPadding: EdgeInsets.zero,
            hintText: widget.hintText,
            enabledBorder: buttonsEnabled && field.hasError
                ? errorBorder
                : null,
            focusedBorder: buttonsEnabled && field.hasError
                ? focusedErrorBorder
                : null,
          );

          return ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 245),
            child: InputDecorator(
              decoration: customDecoration,
              isFocused: _focusNode.hasFocus,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    iconSize: 24,
                    icon: const Icon(Icons.remove),
                    onPressed: buttonsEnabled
                        ? () {
                            _hasInteractedByUser.value = true;

                            // Parse the current value, decrement it, and
                            // update the text field.
                            setState(() {
                              var i =
                                  int.tryParse(_textEditingController.text) ??
                                  1;
                              i > 1 ? i = i - 1 : i = 1;
                              _textEditingController.text = '$i';
                            });
                          }
                        : null,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        // Make the enabledBorder and focusedBorder
                        // transparent to preserve the default padding,
                        // otherwise the hint text appears too low.
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2,
                          ),
                        ),
                        hintText: widget.hintText,
                      ),
                      controller: _textEditingController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      enabled: widget.enabled.value,
                      readOnly: widget.readOnly.value,
                      autovalidateMode: widget.autovalidateMode,
                      focusNode: _focusNode,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: buttonsEnabled
                        ? () {
                            _hasInteractedByUser.value = true;

                            setState(() {
                              var i =
                                  int.tryParse(_textEditingController.text) ??
                                  0;
                              i = i + 1;
                              _textEditingController.text = '$i';
                            });
                          }
                        : null,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}

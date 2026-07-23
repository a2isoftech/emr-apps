import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EmrRadioListFormField<T extends Object?> extends StatefulWidget {
  EmrRadioListFormField({
    required this.options,
    required this.binding,
    super.key,
    this.labelText = '',
    this.validator = Validators.none,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? visible,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.allowedPermissions = const [],
  }) {
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
  }

  final ValueNotifier<Map<T, String>> options;

  final ValueNotifier<T> binding;

  final String labelText;

  final FormFieldValidator<T?>? validator;

  late final ValueNotifier<bool> enabled;

  late final ValueNotifier<bool> visible;

  final AutovalidateMode autovalidateMode;

  final List<String> allowedPermissions;

  @override
  State<EmrRadioListFormField<T>> createState() =>
      _EmrRadioListFormFieldState<T>();
}

class _EmrRadioListFormFieldState<T extends Object?>
    extends State<EmrRadioListFormField<T>> {
  final ValueNotifier<bool> _hasInteractedByUser = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return EmrFormFieldLayout(
      visible: widget.visible,
      labelText: widget.labelText,
      validator: (_) => widget.visible.value
          ? widget.validator?.call(widget.binding.value)
          : null,
      binding: widget.binding,
      autovalidateMode: widget.autovalidateMode,
      hasInteractedByUser: _hasInteractedByUser,
      allowedPermissions: widget.allowedPermissions,
      builder: (_) => ListenableBuilder(
        listenable: Listenable.merge([
          widget.binding,
          widget.options,
          widget.enabled,
        ]),
        builder: (context, _) => RadioGroup<T>(
          groupValue: widget.binding.value,
          onChanged: (T? value) {
            _hasInteractedByUser.value = true;

            widget.binding.value = value as T;
          },
          child: Column(
            children: widget.options.value.entries
                .map(
                  (entry) => RadioListTile<T>.adaptive(
                    value: entry.key,
                    title: Text(entry.value),
                    enabled: widget.enabled.value,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
